Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6132D1303
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758316194; cv=none; b=A9T6VLtxr5ve4hCaQVNnljCXraRTLqYMCpnOkYBGJ7XDG4kXQvaUn/EBVW16kHvEnVX+IxcATMbDndx20v9hzpp+h886Xea+avWyKsPhEjOl7GiqvV3PNI7j+S0mtm6kaLeYJJeWid6vXZ8Cr0v3zoZ0yQmRGh98OrOHTSffMM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758316194; c=relaxed/simple;
	bh=xyo3a0vDDaYroj576ObglHBExw0p2TNSpi0FoiScPNI=;
	h=To:Subject:From:Message-Id:Date; b=MmgJxYi9hkoVl5RUuj81gP9CyTXX28/z876tcMBRtxF6HGdlBNqpiK+bqEdxZnAz6ZKzxoU4+SVZ8NGwAj66jkc05ZU7ixjVQIgulFDX2nYpD5nTIdCaj0lrcnGGCGVL2To67Z0XHdaO+JbEbbJKATzSGRqDW+UBmGe24zkIXq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ifm1I0nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ifm1I0nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9244C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758316193;
	bh=xyo3a0vDDaYroj576ObglHBExw0p2TNSpi0FoiScPNI=;
	h=To:Subject:From:Date:From;
	b=Ifm1I0nh6HWVYMvKACFus5Ws3tNXO7y3MEYghMjmbLz3fOnJiBNkzYXbGkQmPz5c6
	 cLjnu5dzgJPxhMNLsIkM6crvmW5KJbA/qRnq4NEUWFLvGIqA9pRhL0t8HMAu//96Gn
	 J83rlir5lNiDMeGcRbWA1n23G1y0WcsmmgfVg6dBdsDCTdQEJs5qmKiOW4iv0JplKJ
	 ODi6xlarHMJ20N4v9GpbSyGreD9eBXAUPWSTpwGFd/xGFxzCoiH95y1Ff6iiHsO58Y
	 Jw/KQgww1UWy2PWsaMzTIXjFT5jkhoM+wO930ysBX1/xDxc+1+7DzrExe8zcpiF/dR
	 o+ImNt9u08r1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9709DCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831619360.20574.13701633099008963892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2cf3302a43b8bea2e84203c5cced97ced73ab8c884ebfa36a50d184574c9a32
Date: Fri, 19 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758316193
