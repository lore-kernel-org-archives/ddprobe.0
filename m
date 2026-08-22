Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CE318DB01
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787405434; cv=none; b=YZwW6QI8P8/YM2iNNkdhzAUcqPv1oIxs61JQfWcc3z24XG6lKYh74p8E84rMgrOkfv6rh2ESsK1JhWdcFfQP0TNZ1+XTVvQmMmmKyDtqAj24M4gG9v0d9X3D+sR0p7vk58nqpbWvr3p6G6ROAAU+X+dbJ877rreIgmdILCTVlVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787405434; c=relaxed/simple;
	bh=TyTc3bidnL4PHbriZPRO2PN0wG2GpVCPL8kAD1F1KnM=;
	h=To:Subject:From:Message-Id:Date; b=NcWoIbnPtIpv/PSRlCGtLMzJWJQjynbpTxbtOTUIOJ3CYWpJusRWIcMhQt8SJvZZnLVb1Y9tgUoKGUlJTsi8Bb9hCvRHaftUBKDKKPErZIQ3BNC/U51QEq6BvrokwaUcQQAldnQGJ6u0g6cpn7c80Fqaz7L7fnmtqY1EEZiw+PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfU8pgAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfU8pgAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C86C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787405433;
	bh=TyTc3bidnL4PHbriZPRO2PN0wG2GpVCPL8kAD1F1KnM=;
	h=To:Subject:From:Date:From;
	b=TfU8pgAsVUNuG4nHslgeAslbTFi3Bo4nPeurYEdd/Lq2sk6ydmAvsE124W3jiRm1L
	 nh3l3VNEAg3GMLm5x82aT02oR37Ax4I4x60PuwitrZkNpqEneexWi6lpDHgmse2nBT
	 yrP+eWEPhkSL9oHT4gsXZr69DRTfSNI1nJH+PsbEwvqTYJXDnGsCHeVa9KagJ3uYEH
	 w/di6KulMsYNSCdJpfGDeVqllybNq3ufsvXE+s/VvYOOpMpFG/qMugk1TvC6iJDZVC
	 h2P8fwwWHy/w6jRlnSRZLseASG6yfw22jXnsCxr/qtLKBM9h/9MnbqLXKlUw+icCK9
	 A7XC/iG3/wCPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9FAC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740543369.27515.16553231170627817422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33a41008afb8b63ea1ba93c2ba52d75579ea9505ca44c57c0fcb60274a76bc3
Date: Sat, 22 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787405433
