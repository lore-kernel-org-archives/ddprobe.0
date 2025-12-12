Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFDE23AE62
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765531374; cv=none; b=bW+MDNJ4zsVyOpJKdoNhDPFgUchycnrUupjuBmYqOMFQiE+qeVMBn78gTLEcuRFOe1LNzKs+OgWflfIWRU/Hfo70eg1PwL21yAedcpotzna502NSyfz7qTejs1DI1ktYsDWaahS7K1rBNGq1oVkmnnS3Orchu3IwelLsCJB6cUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765531374; c=relaxed/simple;
	bh=hNXeqQQXADWQyza5s/NG9/yda4rYJpMaPJS0wNzBO5c=;
	h=To:Subject:From:Message-Id:Date; b=JRBz3ZldneNAx91Xs12vje1WRecQM3YPeeY+lhRRHidOMt30/2vNdGbbAwmR2vx/6iNRBK4Cp4zyO8DOAMKt8vt+ObM0eKe210CVDITeHKfB/qiAvJlwOxOuy74nOd/tmEDO3OvlX4FXDwoWCGwLtBkSLxgJDG7qUyF5G66scok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGicudfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGicudfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765531373;
	bh=hNXeqQQXADWQyza5s/NG9/yda4rYJpMaPJS0wNzBO5c=;
	h=To:Subject:From:Date:From;
	b=sGicudfpyV2tl0ki8G8adL7vA5k51qs40UEA/91OJxNanJniJz0mtsTUGO/wEveeS
	 pDfzJ7OaLkPmnJZdOejJvjyts6ZIt6nskVFQpaqU7db7M0XG6CBgr4KFmExchYPa07
	 TRsHowiORtta+Yj1AyfpC7BWJmt3/uiZm0tb/fd19h+ggcG/Cdkls0Qd5YSq9wtw/k
	 Y+Bj8juKhbEbuPn2qLqe5Z2VEXsg391vGA+H5QrHXfV3vPc7Hd2yeQtOsOEomWBduD
	 T1a1/tMoUK23M9VzVWlol+rK8LccmV8hTh8lYUCW2E1Fr80YUwLP3IiQ0S2ByzX6AO
	 P6YFO9tIhicLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED2D4415D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 09:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553137358.25571.5407119756055862301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16ea0a3b33e683a13586b852dde19ceb1147fe7686565a9700ede75a7754f82
Date: Fri, 12 Dec 2025 09:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765531373
