(->
  MainController = () ->
    @input = "Google.Color.Generator"

    @colorStyles = ['blue', 'red', 'yellow', 'green']

    @texts = (input) =>
      return [] unless input?
      input.split('')

    @getColorClass = (index) ->
      return @colorStyles[index % 4]

    return

  angular
  .module("googleColorGenerator", ["ngRoute"])
  .controller("MainController", MainController))()
