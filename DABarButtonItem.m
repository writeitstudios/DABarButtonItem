//
//  DABarButtonItem.m
//  Cookie Stumbler Mobile
//
//  Created by David Schiefer on 27.06.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DABarButtonItem.h"


@implementation DABarButtonItem

@synthesize button = _button;
@synthesize highlightTouch = _highlightTouch;

- (id)initWithButtonImage:(UIImage *)image
{
	// Initialize the UIButton
	UIImage *buttonImage = image;
	_button = [UIButton buttonWithType:UIButtonTypeCustom];
	[_button setImage:buttonImage forState:UIControlStateNormal];
	_button.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height);
	
	_button.showsTouchWhenHighlighted = YES;
	
	[self setCustomView:self.button];
	
	return self;
}

- (void)setHighlightTouch:(BOOL)flag
{
	self.button.showsTouchWhenHighlighted = flag;
}

- (void)dealloc
{
	self.button = nil;
	[super dealloc];
}

@end