Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3742E34BA36
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758292794; cv=none; b=bAgANcJSLp8L0bcPHBkOem9TlDR4MnikCrUjMR3EB4SJY8eSH9ci5jIeOWRvu88Q8qV/nkyYqfLIAoIpZtGQW5kIvtDEcW3HNgr2XjTVh+DnzES4cgdBbsf5RANbrSiCEyLAB1ogPlozBGynUJ2TeTiAgfplI0rNbt4m0hxGpAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758292794; c=relaxed/simple;
	bh=bb4SR8C6BQGeuCRg/uJh/CTl21UKiBpB2xIo3gzMk7A=;
	h=To:Subject:From:Message-Id:Date; b=gGEANfFioPppKVrqo691lhND5BaSWuzNh76K3J3O73nZ17esGWIFxj3PLWeK1IOeXBWnfDVOwUiuS038O+KNo0qmUq8YBTwpDIs7Oda9aJAxdLMPxws2y5cW+qmndjRFpFSLgVoMXPaKg8rF8kF7ZBLyaLi+To/Sv16rbCxPPLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UExDxwm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UExDxwm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5297C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758292793;
	bh=bb4SR8C6BQGeuCRg/uJh/CTl21UKiBpB2xIo3gzMk7A=;
	h=To:Subject:From:Date:From;
	b=UExDxwm8odTITnhMkaXIFPV9eTOkB86Mt9JrlwhRMSBlyvWYk36RCCSugcV4L2NDJ
	 xQh16QWDuwuKeBmJEXlP+vuoYT9+mODi/I1MAh4t5qQEpgWykGjdWwizBxOiHU7hYv
	 5H5dTxYwMwIwLgDdYQqpz2bPkQANBLFD4bVMhmDAXa05MH1lCoMcNLLvKy/4HXrvtB
	 579lSGmITrOLsQPFB5T1XuKOcW7pg7j3ZIFqMcKaNRz4jWJcBUFMvpFOnkbnayVPTo
	 CTTmN502qrxdUit09cnKUs/5+p6Kg2DIzRxyYogHeXCSapwZN7xSP4xUd+cVaD9Zbo
	 dDRo2PuGCFUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC7CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829279359.10052.9931869764052889493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c9ecbfcf347e5d08fe369192d3f8c62d48aa79361565a67455e8de6d30b1f6
Date: Fri, 19 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758292793
