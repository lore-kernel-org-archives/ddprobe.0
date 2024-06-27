Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0B3181337
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719493463; cv=none; b=SQMGofcU3OkzVgVikb8Zd4b3ah5Jgn/fCVuuVqkkm13XQ0y+RbKzpisOv6VRE0n+Xk7LvRTSIxf6udboTn9iltw65Qevm0U5rMPJJ6NvksOkmJb5x4BlmTg670oDwvH3jq+BxxSuubPMJ6DFCp8SBg/JA+ImNWCSZIUk55DGsuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719493463; c=relaxed/simple;
	bh=n3n/N2mWqmsJCLdQn4Nczj2ZnsHMJZv2QHVbDssITlA=;
	h=To:Subject:From:Message-Id:Date; b=fjMKUY+uF9ZSP/Gh0c3gtmfzr61MaErfIzNYsupP6zwk0+E/uI0KuY9RswPXE49NhJsth2vO8w6WKT6wEsXs0FSyYLE/BZBg4WbLM9LHgspKSnJPrm0B64gjP+ouqrGRxwIUDI8e9QaCYzt+uGzRPOpZDvUDQotEfdrMFi3zd90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnG5wG+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnG5wG+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04392C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719493463;
	bh=n3n/N2mWqmsJCLdQn4Nczj2ZnsHMJZv2QHVbDssITlA=;
	h=To:Subject:From:Date:From;
	b=LnG5wG+a4fHxpnw8iFinD36jsjD4WUDUp71rGlVySgr5Ss2KLaaq/3uav7rVWV6fJ
	 4e4nV8dFlhbaEIjYbE0ps9Lh+nj1CyXVaaKvqWATinJtdPrVS8lNYfRPQgGFyoHixG
	 4yuVvTCzGgKMGPeYEheZHKEF1lg+0nDkOsHHCNPJDoaWicj6T4XrKCWBSQDonkEB57
	 NexieIjmztYtf/Q1XgVCgmK1rPoXidGpAhQMq5kmfi7t2aOJCoqYrU8sdoxz5jmzql
	 z38VsbynAlbGEpjtmDIF+Ww65sg6uTQDhMU27xYdpa38nPk/YzsWcCVNIXPG465n/z
	 lyc9D95WoeeQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF06DC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 13:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949346288.24192.1837904365523797795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea643c843b410f29e70b5f0b81b8b0a4eca46280e951a72434f7bc5a6abb7575
Date: Thu, 27 Jun 2024 13:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719493462
