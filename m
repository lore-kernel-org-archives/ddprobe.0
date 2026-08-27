Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B0936C9C5
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787815834; cv=none; b=Iech5OCRB5D23AZVr2N+wSaVmMYpQtRmPZ5m2rP/1t4fL9Ua8x1xdNZv2SxquSccFBBTBSim5bXPbgUnEqcJIa79ZB7KCIOEaTbpE1rFuc3ZAGqFEuRePMJHu0arnmlomY9eTRWE/QNLROYQLZXS0BuV+Y9ZdjPguGkD7STRFkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787815834; c=relaxed/simple;
	bh=786kVTYG14Db7vrssN4HQXO1bffk5tCNDpuYaaTIFb0=;
	h=To:Subject:From:Message-Id:Date; b=aqbgv1oMvEoxNh1MVpUn8dEghzv1iVO53StmNxKMDISHluJ8EmkZ0HTRsdmpDjGp16sr1q2vbi7GY7EZJhhCCELgQQR0foGqRik9Tt87H2GuzTXyNNEm94RaMAisnymICduv55sqV24dKFTwKALELqtxsfYDUNEayDA23a39sy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKFAZFqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKFAZFqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC0C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787815833;
	bh=786kVTYG14Db7vrssN4HQXO1bffk5tCNDpuYaaTIFb0=;
	h=To:Subject:From:Date:From;
	b=EKFAZFqudWLLKqunJ6MhN+S29G7cvWx9qUuLx+wYw2QH44a0DVEbMwcXMNtBgqb0W
	 LSNJcXdyZozZwp11yhPDMAfKPnxbUEliGRcF/dCYlYorxtO2eZ5GlR3NgrrlPad/ka
	 +zWS68iq0/s0WNwFLnTjkjocd8XCxc5SM0TAVg0w1fke2FTcG1NNFUMyllghNCmz7w
	 qUSsKJc55myVndfWDEFy7CDrN3HtNabYSzO+rBaEJ6LaLVeLqTNRaEYhlrGYlJF+p+
	 ap5xtvssBl1taOUTcuN5LIxycGMWwfaS/LMGV4txFihN0b93bBnYi7p58MZ0nHl2yX
	 1j8puTbDHWFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC44AC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178781583369.5206.11725991263076636906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c26a5081fd002a1be81e7c1c89e6dae20885f3add1a241d9e4b0d982ef310d
Date: Thu, 27 Aug 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787815833
