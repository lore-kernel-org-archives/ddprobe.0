Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076D67F
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710391097; cv=none; b=Yi2kUHJ4wYXALv00aOXvRy3XUiTz4/D/oxN+/nM8fpf5rotC5xOfJC4cnxaIaWCmfgOYS+MCqsBDf/N1QrM6km9TBkcz+6Jcns+km7yvXigRdBueKbcUjWA0DSDkXP4NfSfxpfGR3coV5lQpnCemFFcjsGE7PFnOKiS67XcTI20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710391097; c=relaxed/simple;
	bh=0GpiR6FGix+G4pr0EWDKXAT80VSO4dQAThGkfAX8jpE=;
	h=To:Subject:From:Message-Id:Date; b=SWksnT9voTVJh1MY8wc+G4v2/H0WD/2ueFcW+7d4+jgvQv9XYGPrDjhUwDPW9Wztxid5CYBOlWgqHDl9jm77FEyr1Q3NrQvnvRbQK2sePrV4sP04bHBSqV32T+L590pXjMu4KoUeLvWpEkEaU49q6b8ky6XpabOG3/TRLV6YqXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On2V3hgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On2V3hgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 864F3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710391096;
	bh=0GpiR6FGix+G4pr0EWDKXAT80VSO4dQAThGkfAX8jpE=;
	h=To:Subject:From:Date:From;
	b=On2V3hgWSyk82RkMDa3Sdd0861xWAqtospCiTISl2mSLzGFLBFKL+S6FV59hReRSW
	 w9ZG8b8xLF2gtzVjU8+OZLy8DS64ogY5iC/MHs1sm5twJUMmmck+GZ939x2u24kyb6
	 2Xcj6iBtlsHzhTjs4Yo2T7J5WaUdyKVNreO8uYrz+ifmeIl9CVpID7QSSIux0nQDKY
	 P2L4ImWmV66b02iOjpNE4QsdXfq4+ZyQ0sUA5S7v1S2X4dISaFT5U5Tsi8U/76lHNM
	 CffWhi2DTnZCTEQbmsKcYLzdc6S6Jd4DpKdYDCyP3zvxOCIfz75AdERGG5o8LzQ51G
	 QSkpVJtndaNLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67723C5475B
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171039109639.21219.14947596940409677394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b27d2f9d599a1bc39d68821195be81f057ced6bab2dc40674fb7e8c9d9b65f
Date: Thu, 14 Mar 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710391096
