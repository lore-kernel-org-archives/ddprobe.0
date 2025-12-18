Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B92E155CB3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766085234; cv=none; b=gnBPIXpurU7FWNxzvio7tAyFQ5Py2vvMag+ysovbxbMEQyuPZ4dB9E3CLu2mW7N/yqqLUyMf7+KL6VDdkhQDmbbNwV9a+bUnndV7S3aiCIF0bHKtBJmw0ic2bZONoD3/TDB+lT2WpOgH/asNXkv5W7gWIV88NRzZrMW8TlcSjUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766085234; c=relaxed/simple;
	bh=7LoIXt66KClFSvppxgYKhYc3qnqZ/LQ2D4DLZX/Xsl4=;
	h=To:Subject:From:Message-Id:Date; b=dLZ+hysPU921rqqGfImu94mHh+xtOe+ix7zx8PYGPmONdEMCrAd+/oSGPcDp7uFS+EWRptbmbfhBaKsmvA4yhBRUryRHssaa+mICnsPi5TW1kfQEShTxQsJ281O8DwIl5XjHBhJ2bKtVfsljV0Bs1fSljsfkhk/l8LBu7fBDuM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZ13P1ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZ13P1ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E65C113D0
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766085233;
	bh=7LoIXt66KClFSvppxgYKhYc3qnqZ/LQ2D4DLZX/Xsl4=;
	h=To:Subject:From:Date:From;
	b=GZ13P1ql7UAxK4nyQZJEMyXFqt3ok1DUgCufspelRQh6sHDvB9RQG4UrX2fnlWFXP
	 RxI+dbVrxdWF14kmgFbrV8nrN79u+yVNbYel77dsEbi1tg/pTixvvkO+qD2ichsB8O
	 ao0j6IcfUCGEgfNI72F4WgcjnvW9ux3ew25Ekjb2SKqR9d2sZSEth+CXczDrHaTtee
	 W2yqkBL3wzrfRsL0QpUcFhMtAaHDw//6Ri55EeutdNk8HskNRWWObgoAx1iHYEwwEc
	 1PcmRBr1Opm+cnMSwZYCjKJFaK6LW1eqShwfBpHW/qljIbop8Sdwq8QU9/giWr1kXX
	 CP9ap1kAuFSXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B6D6E2CA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608523358.1417.3259029893855037884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb2ab617e4b2c23ee29b6ecc03249be4ba7e431fc2796a24739120349c00bd6
Date: Thu, 18 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766085233
