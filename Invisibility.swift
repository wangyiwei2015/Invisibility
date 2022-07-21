//
//  File.swift
//  Invisibility
//
//  Created by wyw on 2022/7/21.
//

import UIKit

public class Wallpaper: NSObject {
    
    private let wallpaperImage: UIImage
    private var _imgTopLeft: UIImage? = nil
    private var _imgTopRight: UIImage? = nil
    private var _imgCenterLeft: UIImage? = nil
    private var _imgCenterRight: UIImage? = nil
    private var _imgBottomLeft: UIImage? = nil
    private var _imgBottomRight: UIImage? = nil
    private var _imgTop: UIImage? = nil
    private var _imgCenter: UIImage? = nil
    private var _imgBottom: UIImage? = nil
    private var _imgLargeTop: UIImage? = nil
    private var _imgLargeBottom: UIImage? = nil
    
    public init(_ img: UIImage) {
        self.wallpaperImage = img
    }
    
    required init() {
        fatalError()
    }
    
    public func widgetBackground(for position: WidgetCropPosition) -> UIImage? {
        switch position {
        case .smallTopLeft:
            if _imgTopLeft == nil {
                _imgTopLeft = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgTopLeft
        case .smallTopRight:
            if _imgTopRight == nil {
                _imgTopRight = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgTopRight
        case .smallCenterLeft:
            if _imgCenterLeft == nil {
                _imgCenterLeft = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgCenterLeft
        case .smallCenterRight:
            if _imgCenterRight == nil {
                _imgCenterRight = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgCenterRight
        case .smallBottomLeft:
            if _imgBottomLeft == nil {
                _imgBottomLeft = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgBottomLeft
        case .smallBottomRight:
            if _imgBottomRight == nil {
                _imgBottomRight = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgBottomRight
        case .mediumTop:
            if _imgTop == nil {
                _imgTop = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgTop
        case .mediumCenter:
            if _imgCenter == nil {
                _imgCenter = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgCenter
        case .mediumBottom:
            if _imgBottom == nil {
                _imgBottom = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgBottom
        case .largeTop:
            if _imgLargeTop == nil {
                _imgLargeTop = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgLargeTop
        case .largeBottom:
            if _imgLargeBottom == nil {
                _imgLargeBottom = cropImage(wallpaperImage, toRect: position.getRect())
            }
            return _imgLargeBottom
    }
}
