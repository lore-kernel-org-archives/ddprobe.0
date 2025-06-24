Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2974325CC50
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750757994; cv=none; b=nHKkHvhSh2C0wezWHHkDPOyvNeWova9qmiV2px49QWf54wJ5W4c7PWbqo7t7fvlchS3QLN90a4sjt/spjnLC/1XakqlUfQiAuhaFsMt1AjwhxBTVg/KPJzl4R9EphW0DKeg1AYh34wv+N8aKvEXeB5kWilBcyJvfur4fyvLq3G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750757994; c=relaxed/simple;
	bh=CwiaE37TC4mUNXZjPUDPzdGu91OgMLfqPtLR4GWm7j0=;
	h=To:Subject:From:Message-Id:Date; b=VLN8DAtmtTbf5jX8dAHsxaBn5PzN1ZeZNpn2Nzi935fOFPLF/Ov5LDdefxDc7C8hLJ1ldFByEjBXiffJ4pxZoFCVm1sWBu0lg713BJ5AsC19CPH9KOOZLd0Lvfnzq+TseXYXy9hNtFqMVMGddNvjirvWB2QajTdecn62u9B3PBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0ybbG1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0ybbG1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750757993;
	bh=CwiaE37TC4mUNXZjPUDPzdGu91OgMLfqPtLR4GWm7j0=;
	h=To:Subject:From:Date:From;
	b=P0ybbG1OXHEXC/kNplEtP22sbjXrCjBiYmYwAZ5Fb+2egZfeEqKIe/0U7LmI81nOp
	 P1PsAfk+Rk/MxRTRWELQ6obmYIiyKjKjXZWHBcZ0pC2KsJmEhN6pLp3VbFbInNopp5
	 RyFurobcbvXCInGs8AOaoBsTZsZsRZoPsu0ckN0JVqKOJt+XKkVmXbHfOLzhYFFam3
	 MNfIgycfgMoig8sEH9DsS1K6PwLZYX1NoECg+7sHx1U6km2LtkeYd8Jr6JCu6n/Nfx
	 i5ihxeTuNlDur0XQzveFFSU7ylmVdAbk4TqaoOX4pNqZhodZJoD/FyyzcDyqMmPqTE
	 7KyGRlgA8mzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF16C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175075799357.23770.14066356027595892641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e8fc75cc489a11623bab5fb2350c0283cab04d4f25e46832ed49c72f45cc80
Date: Tue, 24 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750757993
