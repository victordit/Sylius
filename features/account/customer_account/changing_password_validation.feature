@customer_account
Feature: Changing a customer password
    In order to avoid making mistakes when changing my password
    As a Customer
    I want to be prevented from entering incorrect password

    Background:
        Given the store operates on a single channel in "France"
        And there is a customer account "francis@underwood.com" identified by "whitehouse"
        And I am logged in as "francis@underwood.com"

    @todo
    Scenario: Trying to change my password with a wrong current password
        Given I want to change my password
        And I specify the current password as "greenhouse"
        And I specify the new password as "blackhouse"
        And I specify the confirmation password as "blackhouse"
        And I try to save my changes
        Then I should be notified that provided password is different than the current one

    @todo
    Scenario: Trying to change my password with a wrong confirmation password
        Given I want to change my password
        And I specify the current password as "whitehouse"
        And I specify the new password as "blackhouse"
        And I specify the confirmation password as "greenhouse"
        And I try to save my changes
        Then I should be notified that the entered passwords do not match

    @todo
    Scenario: Trying to change my password with a too short password
        Given I want to change my password
        And I specify the current password as "whitehouse"
        And I specify the new password as "fu"
        And I specify the confirmation password as "fu"
        And I try to save my changes
        Then I should be notified that the password should be at least 4 characters long
