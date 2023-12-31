@login
Feature: Login

  @login
  Scenario: As a user, I should be able to log in using correct registered data
    Given user navigate to url "https://www.saucedemo.com/"
    When user login using "standard user"
    Then user direct to dashboard screen
    * user take screenshot "user-login-successfully"

  @login
  Scenario Outline: As a user, I should be able to log in using correct registered data
    Given user navigate to url "https://www.saucedemo.com/"
    When user login using "locked out user"
    Then error alert exist with value "<snackbar_error>"
    * user take screenshot "user-login-successfully"

    Examples:
      | snackbar_error |
      | Epic sadface: Sorry, this user has been locked out. |

