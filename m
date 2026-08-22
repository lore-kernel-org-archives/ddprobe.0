Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA831F8AC5
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787380834; cv=none; b=i+YJrx1BmsIOzsw7cWQX+qKqKxIjU83YrkAtgs01EyvUPRJYtJ87sHDhVaKvwbH1/wMzEbvy0pvP20V4sh/P0vrr1PvCBQl/rjAT2k2QCIc7ADflMR41mJDt5harMxFRYHWwo7bRO1/rdW32enLvqjqHp0bdH6zjZvScvVVZUso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787380834; c=relaxed/simple;
	bh=FxjuWmSMBPalQ2vBFmlQtj92bSbQDB3OlpNfogvi98U=;
	h=To:Subject:From:Message-Id:Date; b=Bk0iQX5A2DFgDVKQ/z2enyZxc49SmG8MmorMBoWU4k3/mwA9543mfxfRqNbG8Zg6msnCaG15OWQey/VgaFI8x0tXesCT7QbL63pLHuhtXEWfRUltYlODyYpih784UFdGvsTdDaR3Lq5d4I3LGopTerLAIH0SzIu0xk+uc+eBqlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1CL18Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1CL18Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CCAC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787380833;
	bh=FxjuWmSMBPalQ2vBFmlQtj92bSbQDB3OlpNfogvi98U=;
	h=To:Subject:From:Date:From;
	b=l1CL18RgunXDg4/xaxUjyZg0gmGTaJoevOFrSkFvIFzL3eWdHSUoEgswKyobvCWRc
	 WESV6cULKBLdQyA4e8EW14ioYbih/uHs/zWmkWTLVW+rgkZn6sWDz52ya0QJtZXGlr
	 gSAqtK3iOCHa9Yvij70fHnxZCLHQV3IvCFlKyvQaPE+JCQ+jmjuvC+HaVTaeIQzQkJ
	 WPJmb0V1S9LmL/Y3fbZZgm3+hWDgSePXYuw2+GtcEBqKDgW9TXUcrWHqNZdMbljy8K
	 dijW7gcbcY7dBQosmPTi6ripTJYPFHHDN+4XdNXHheOxY0P//3CYFZgvmtkUHIoi6u
	 51OcZti6+u03g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE195C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178738083369.26925.651678650796918794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e79440b4dabc6957d5a24abc2b6d8652b692d43af69b1de85344ba83d2dada
Date: Sat, 22 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787380833
