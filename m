Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303AB547057
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790720434; cv=none; b=NALlAY0x0YIEOdSS6+hngHFKy2hoxaAqeP2shz5NQbtPeA84G5ju8Tm2g1rci56qnYo7+iizwIsmtxaSGgdpZmva+CyFLqqBZjcL+sNxFkmcenZt3sEkHoRyENea352+yUsV3pQZSvwctHwxrSAdY2PKeWu8IdjCVCfqtjE2LY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790720434; c=relaxed/simple;
	bh=UUUX/sq/CN/qFhxJPqN7PFXnsPEFKpuyZyrT+z6o0PQ=;
	h=To:Subject:From:Message-Id:Date; b=f0MbL5xK46qki0NuRYwhiAGSvWOQ/dzsTxjQk6aPYN+ZBK1c56oiWmgBPS+0sgiVCieoLk0zA5jVOcztoovv0dS7T3mNfE8ztY52HeYXb//8pWDVPnC8gOhPasXeoIsB/ewUumhRkoc9eQrqnmmL+8R4azDTUgVbkZYJbv8MHHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9sJ9Zrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9sJ9Zrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6546C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790720433;
	bh=UUUX/sq/CN/qFhxJPqN7PFXnsPEFKpuyZyrT+z6o0PQ=;
	h=To:Subject:From:Date:From;
	b=p9sJ9ZrpRCO9LEQsbToV+0emzrweMpRRyy30RjnUqT54bMs5/KVwl1fT+MRHepa8C
	 kTdUQCgFYaexVkC5awF8BfWULIyTqCUxfTWJLCpbLCtGamLj6TselprLAT4gWmykKL
	 RTgxdgHVgd8wHEBq/OAq1ciakQsVmOWovDn44ZVWeCESmvuQVFuKHz0axwOwlJD//x
	 wZNFaKeAHLOyZf1+MwuqJHdelsfK4z7c1GXpBbxz2jTeVuqb38jbTAIMQaXm89KsGw
	 w/6dRqVHGVCKQdHS64AuGC7wcns2FbXaFndYyFmtHg3UYUfTpmmYYW2zNuYIRz8iy0
	 3IZhIWiuCVnyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF81DCA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072043368.6611.16988907349496786435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665772e858e4fe054c93c7dae94bf7ece042841af8c728ab155d761f757edc16
Date: Tue, 29 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790720433
