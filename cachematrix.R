## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makeCacheMatrix will create a matrix and return the matrix

makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<- function(y){
x<<-y
m<<-NULL
}
get<-function()x
setmatrix<-function(solve) m<<-solve
getmatrix<-function() m
list(set = set , get = get,
setmatrix = setmatrix,
getmatrix = getmatrix)
}


## Write a short comment describing this function
## this function cacheSolve calculates the inverse of the matrix and if the inverse is already calculated then
## it will get the inverse matrix from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if(!is.null(m)){
        message("getting cached data")
        return(m)
        }
        
        matrix <- x$get()
        m <- solve(matrix,...)
        x$setmatrix(m)
        m
}
