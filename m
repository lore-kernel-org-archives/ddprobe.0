Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6465B28851F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783527514; cv=none; b=ojKfwYCpDvtCXypA21xrvS2h8tDD/hnexiA6K8oDKcAHiCyQjx0crdazYncuZ5xewnb+tOisZUMFbLRoamVEIrZuI9v3Aqp3UwtB6gC4PO/XFVVvrUv6SLCcQpHMB6L3LRoeUB1mvSs0hG27erIlwlbiMYj8EM/qmKtQxUo0H9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783527514; c=relaxed/simple;
	bh=1aZMm7NaXlWbHwngjOXyjyXoKSSpE3fuB2PJLxd+2Eg=;
	h=To:Subject:From:Message-Id:Date; b=p6U+23rvjUPw2p60L2EQDtEUUnkz0mfXTl/FbaC+9+/Mb4GLwrLIRXrruQ4W31O1QCxQh5B2HbCmve9PccwKcbUAX/Kcf091rY0Ds9eZrTyhOtqL3J60xTnD5LMEzYChvKDSEJzejQLzuIuYo8MUKoUDbZklpVk9oOu9vtR7g/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDzoHUEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDzoHUEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC08CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783527513;
	bh=1aZMm7NaXlWbHwngjOXyjyXoKSSpE3fuB2PJLxd+2Eg=;
	h=To:Subject:From:Date:From;
	b=EDzoHUEsiQ5sRHs8fR0ZWsxY8zqxSASMh/ZPjDCh+l1UEvo1Kex9OCbabnhgn1olQ
	 l48DCx9KcqmHw/sTKFCFG7tsLvW3vdnGYHVIwsBMQl21klJ1bfA4R2Xdl4vbKIcajn
	 x5QE7JvbMT6wR0BYJ1a5SwBvi8Q1ie4g4MSvrJsywXciXlc2lbJ0sYryrEt4SQaiXd
	 vC7AQb/fgVsNB4Tby5D0Y7TllJw1QfWUQKSsM8FzdRwejAhQQMRYcRnQkgB1QgSOay
	 9CmUIrb2dLfke74nZGfjJy2J7tSGLgRvi+SNoa+YTMkcvxvEJiUG22v4lUDV/VcLSy
	 RW4I7E2urMCiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D4C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352751368.8489.7867123442828239408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3741e16ac9927d67e13d38f5f3f6ef9c4fe6bf6e1681c03140cf18ff62f0bc5f
Date: Wed, 08 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783527513
