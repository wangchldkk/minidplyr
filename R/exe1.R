# Documentation of the function
#' Select Variables from a Data Frame
#'
#' This function selects variables from a data frame based on a character vector of variable names or an integer vector of variable positions.
#'
#' @param data A data frame where variables will be selected.
#' @param vars A character vector (for variable names) or an integer vector (for variable positions) specifying the variables to select.
#' @return A data frame containing the selected variables.
#' @examples
#' # Create a sample data frame
#' df <- data.frame(
#'   A = 1:5,
#'   B = letters[1:5],
#'   C = rnorm(5)
#' )
#'
select_variables <- function(data, vars) {
  # Check if vars is a character vector (variable names)
  if (is.character(vars)) {
    # Subset the data frame using variable names
    return(data[, vars, drop = FALSE])
  }
  # Check if vars is an integer vector (variable positions)
  else if (is.numeric(vars)) {
    # Subset the data frame using variable positions
    return(data[, vars, drop = FALSE])
  }
  else {
    stop("The 'vars' argument must be either a character vector (of variable names) or an integer vector (of variable positions).")
  }
}





