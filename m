Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41154C2C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789520434; cv=none; b=DLfQSBsNnws6a5HA6KoTl8mZoYqo/oXOOLVmBI1WYre8xMmUX9tGdCowLhtYC4gfysOslP5dyDxuTVV5ifsMBk/UWRYoBrkMCNLnAS+BK1AfGE74rMyTL0KdVXxe8a6m9RCTDqwCLdx6tWj02lqU6fIFITFwkOBO2TaULKoIdjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789520434; c=relaxed/simple;
	bh=jFCiJSq3uNlpNc/ZbsMd8jXWH7eUSjjPhFkwo1DAmwU=;
	h=To:Subject:From:Message-Id:Date; b=crVl/ZWm/vjJu8bCDe4h7rkFN2WIIa6+6jGqLDN4egvjE6nOVYWSt9fpnbu5Nq1lp1rKj85AxW+vn5MFIAdK518KAOSPuOXLwiLp+ZcSlIjn6h65yc1d59aeXK3NX70aJXsVlALSF7b29NO0my1nsYpCFCWxlx+evSb//ArAySA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQBcmNLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQBcmNLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB4BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789520433;
	bh=jFCiJSq3uNlpNc/ZbsMd8jXWH7eUSjjPhFkwo1DAmwU=;
	h=To:Subject:From:Date:From;
	b=tQBcmNLG52ORQ0Li+uhcixrcuKId3qoobjxVgGtR0+ibYfCA8yDHZggEcHKu2KN/m
	 1oMztv5iJBtbbtGAwF5E3HBbZZUDzeeIeP0wcf5nroycYPp7a9LVdmTNegngm2VJCc
	 2hXuK9tbWXosgy7qmc5En6lK9YyzwCsNw6+br0BugRfOp/V4Up19k4Uw3mz09N2tLY
	 la2/hmzS19coReOszw65v+55oc2Kp4B/fvPwYRrT+ygNPzfp13Vjcml494/GHlM/0j
	 8XKJ1a5yQnFMfBDoNgZG0SsFTlYM/7ewwmPfDLnTbfsWRJI4uEGuxy6cCD3zhhX6WB
	 jXGvetDJ+Smyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E0FC88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952043368.17641.4964021553176451851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e6656151b19be8c569eb502c1bbf53c3878d6decbc4a6ca30bf3938ca8d92e
Date: Wed, 16 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789520433
