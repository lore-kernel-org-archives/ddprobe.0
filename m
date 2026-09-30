Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EEB3630B0
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790735434; cv=none; b=dNpRnMqishzqdQMVrg37MnA6k+t20+Cns4tDOmMu73atBCFIuqRmMA17MxFTSPN5zbANNQVybG4y0X0p/5ObCAZRk2lru70v28cMOC6qZXw4XOVpPHMavlgp1mGxweVDMaVqRs8aZBNMW4dU8YMLs+mFfQWWvEW37lPEQpebhHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790735434; c=relaxed/simple;
	bh=PcibXKx9+tX/FH5KQ7hkHnqjIHmBwX9vfq56pHgRa8k=;
	h=To:Subject:From:Message-Id:Date; b=LRD+ZP/aHNFeh0AXKCs4DwSyVbbGCCme8o7bpt6ruK35x5OWEq7Ueb4PXDK0uWWhYqIKBmV1LS778HGzgQHYQvGjqxNaR42qNU7RX8Dc9Uyd92uKTbSqm+F9c7Uis+eDc1uEjlXUDM+RKYgCV0SETdpoyq6GNgzl+GoTH6aOH6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JU5cqn40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU5cqn40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3FFC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790735433;
	bh=PcibXKx9+tX/FH5KQ7hkHnqjIHmBwX9vfq56pHgRa8k=;
	h=To:Subject:From:Date:From;
	b=JU5cqn40+F1t66XofFYIFsfvDcCj0JrmAUKLYsGj+7teN6JhxFZFqR0UtRjSuUvn1
	 3SRcDWoYzbx68vuQxeP1VieqOemP3ZLFxsEHbhjwoZpF9br8eeENPMBXCjBvh/h13C
	 xRyIbTom6fGEPbTCXq+q7zWMaKHW2lw07UHiasiRo+yZx/IrQ/yvR1mutiGvzgFQWd
	 b9Dg3sDMi+xeVEIAYcUVv1J7JgNSKXZ76nFBl4bcjtmpUhzRUOD6uIDFecXFvkqhuZ
	 tuHXD5XXDuOcx1e8yHgAQeIQbl+Rx2RJSEM3hofVCayF3qlH9hWfWaOCNfLc7TnZ63
	 PeBVZwqjwTl1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1C9CA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073543369.25610.18427827188205177110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65eb84ac1133160c9262ffc5b6ceeb5f184383c56e52671704eee9d3efd9022
Date: Wed, 30 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790735433
