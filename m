Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4F333B6CC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761863394; cv=none; b=UE22r43Z881CZq7P5LoVZWh991gaU1gqgnuX2eR0IEi2ckvokXO+ZO5X5fRgAJxh2QAyQvwx1F7JQnALZcrSDeVZa4ElSo6xI1at+DYSa3PTdFGE/PeHDq7h30rtLFHz6wigy+7MPBc/eQuePaeV2ZRNcMEqcRUlmcl5/XmnjKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761863394; c=relaxed/simple;
	bh=sjuIOdn9cTUnJK/zrkuxJDf4Gd42DYKHgznpyJrg3gs=;
	h=To:Subject:From:Message-Id:Date; b=NhUgXIg9RNj2MW+zdGtvabQvONxLIyQkg4elJWMMH9T1UP4pu6v8KIe4gj6YM3i4Wpql6mkez5tMyWdHqXW3P2xYdgskAG0kyxY20h1eB/yQf2XXzGNz37wZxAbEDTJR/xL9hgFP/S6kHBOraItZbyzIkVPSFeOCWOnWAGcKDaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZ2OKc34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZ2OKc34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADFEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761863393;
	bh=sjuIOdn9cTUnJK/zrkuxJDf4Gd42DYKHgznpyJrg3gs=;
	h=To:Subject:From:Date:From;
	b=fZ2OKc34r8ejsZuOrN0s/pG7pWl/G9VXXwNHA0GYfJZHWsnGbb5vwFeNgnvqWhgar
	 BRiJ497YOLqXCnKs5m4TawGK811VGfT5DrealrkiNsEaCaHaCBnIyDKOM7CaI8INMx
	 FnGep1gs9CWwLzpQypdfPHZtdb6TV0OxiUoahYLUpSDbse3rPvOL6sBEKVi1R2i0EP
	 6YI3WR5ekmPlSdihZtJPqHS+JNaXH0WpkQPGqZf3BT1Jh9bWFC3vRIt7s9zQggKnVz
	 4Wf9wmreuTRfum+bZEwEAL05guNns17RjaMlMl/Yu+Sz6wnJBD7yrIUsvRZmKCHRd9
	 3mwMh6c+k/+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F98CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186339362.30154.17392412342030635975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 329c14374c099e0dcd9b6139b678f677e40c250c8e63c8a9f86a31df0e899519
Date: Thu, 30 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761863393
