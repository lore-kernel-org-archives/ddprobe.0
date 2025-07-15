Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D922BE7B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752614994; cv=none; b=qYgNVFLfEaZvpm1MSIReySqyzh1nEpA6bhfpPDVCg4vQRDalGYe7E7mJ3NtaQa4Ji9vcQEgViTu/IOxrQr9e1ePNvPiSQukZxSSsIDCV4wuY7FNtAUUjU5XBtXM59XanGre8+WCDFznpiayfKRFe/qZP5p91IgqjpzfZGc4dTA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752614994; c=relaxed/simple;
	bh=YODzLuf7rU2ke9DtCDeT4/aAbGMUXM/pn+xh6AQHPWo=;
	h=To:Subject:From:Message-Id:Date; b=qcdqUHUy3PiRj0MRbVJseL/wHMdMg1dC08Z5png70LjfMotLFQGwopxEqklg6Je3CwamQLJWDf7Eti9KxBhvBvImUES1OZ3k5NzM0htVWmuzQB+ZUxfacslxRV45Bpe/6juURj14cWQi6Ra387yyqRjT3w2Rs5EKf/BFqHs9EXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUGBV+hT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUGBV+hT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54EBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752614993;
	bh=YODzLuf7rU2ke9DtCDeT4/aAbGMUXM/pn+xh6AQHPWo=;
	h=To:Subject:From:Date:From;
	b=tUGBV+hTzP2tuykVztB8dC4sUrtjovutcDQqO/w8/tS+i2DZ5lmGZRUP2Bv6lJex0
	 KAfO5auusNgj67JJ09AEW0NLOeJx6i8rTlVftgeoScnmhzBaDtmWNWOm+viqxvDEYG
	 K3dz679ttJ54JTkpuy4iLWWyEb/xTLUVyuFB0hNAF8MTldFWdubnW3KFk99V6DkLtL
	 Og5xL9WBhjD+zYpF45Lqka4AQ8gyRpDQR1Pa+6LMcXk50fsVjK8H8StKucEty4ZeCn
	 SIefyjNq8vgCkoJ9DLHY4jBesrc165GAYXjBqSA7CHxJBXgZ0g8oa+MBvK741Rag2/
	 4xyIHeixPv5tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E45C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261499358.30256.15857487233080421510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43943d6139aa629b1e99eb885b111920f25ee76eb759c1d75e10236a72e7b923
Date: Tue, 15 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752614993
