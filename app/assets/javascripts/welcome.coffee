# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ishidden = false
$(window).on 'mousewheel', (event) ->
  if event.originalEvent.wheelDelta >= 0 and ishidden == true
    #console.log('Scroll up');
    $('#the-navbar').stop().animate { top: 0 }, 800
    #$('.explication-titles').stop().animate({
    #  top: 50
    #}, 800);
    ishidden = false
  if event.originalEvent.wheelDelta <= 0 and ishidden == false
    #console.log('Scroll down');
    $('#the-navbar').stop().animate { top: -80 }, 800
    #$('.explication-titles').stop().animate({
    #  top: 0
    #}, 800);
    ishidden = true
  return