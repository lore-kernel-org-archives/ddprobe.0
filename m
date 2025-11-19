Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBE6A372AA7
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763586113; cv=none; b=EUDJpeDT0MLor0bSaQJoCDfBuOvTxHi1UM2fMtf3IcFgoUmVuyUkulKVk1DU84ycWrWnFJaLL19iXC/TFAFhBCCWHt8fHqPQNdfuWO1cbHiHAaJK0gPknxN4b/FyXOPgl/XDkkiaO2RzxNGRCq2lXZY69VUxIgrsRZKMGL3A93U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763586113; c=relaxed/simple;
	bh=LBEnDrVU+zuE4xpgbC2e1WVFB1DvsqmGDoTHjV3PPw0=;
	h=To:Subject:From:Message-Id:Date; b=BvxF7b/rhhW1iGlvPBUJCdFuziAicHeI99N50NsjfnMkfQeKSbM0PCdNoEJPrkGS+TwKyyeM6D7UDSXcukZS7hPlxn5pdARoJCcgiKtBh+mAR2joskI7XRvYKtCvo+aT+DleaR0oHCaq5H0yl62XGlWJSAhCPoV2NG4FOUpO0Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdmP/0pW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdmP/0pW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC320C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763586113;
	bh=LBEnDrVU+zuE4xpgbC2e1WVFB1DvsqmGDoTHjV3PPw0=;
	h=To:Subject:From:Date:From;
	b=fdmP/0pWLEmhSgplglMFsFRxtnAAhh9WFCLYcpemlRrOiJAeBBjO1OJHtX1PPkDYj
	 6XjJy5Dprvq+8UW6F87fOhwySZ0kDwbpT1QmQKM7sqyRlfzaJDKHF/blpIdPu1TL2X
	 wd+lk6uRinehv2rpBDYDUUKJAgsgazQr1c76D19Ssb8gXDIReg4bCLrU5cLBD1kovH
	 yNZHzltDMFR5LynXWkKVgMXYLkwe6eq/DYG0UH+k1Ss/nim85LnbGAW5NsYTmYfOP+
	 RCbdR/D7rLA13rDX/O9mV4lCL57U3vRMVLqiOWkbEFd/zCn+FKDD3L0v+kpXy4jP3h
	 dT3XtEkE32mww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F5CF58F5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358611359.17929.14442427602673110935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145d69fa1f2012c9637c092efe9c607419b83b724786023cf680b254c4c6a3e9
Date: Wed, 19 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763586113
