Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC625A64A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737945355; cv=none; b=MvHshd6Cx3UmcSxBWljg6MHVWBRY5JbnSCi/iKf24uJz+61hXcI7UUirWq2vcr1ss5a6BCIC76D4dNimnYG7mmu4KvnbLIij8jEmWfUk9ED4qyWtDs3SUkoN4xnBLdism8nXugs/S0cxZltqgDp3cFA3TPNIKQwcBOmK8SEM5gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737945355; c=relaxed/simple;
	bh=kRd4wXbwXQ0/YYcq9yEFzuZs/eaTzj+49iU8HciqaTc=;
	h=To:Subject:From:Message-Id:Date; b=YtkprYt5fo7HpttWL5N2yXct91sZNMM35qMoGoZgTTigdi0aZb4PgJu8hkz5w49e6qzr2p4cVBTmnAvv2gL9mT3rTrCVaul7GwGs8gEzmpqqtMH3QXOLbZd+qzOxAFgtGZJKalDMXN5YaRt8dK6CFXaVQIyHHAIvvBF9IG2mDIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNd/LDSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNd/LDSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D16C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737945353;
	bh=kRd4wXbwXQ0/YYcq9yEFzuZs/eaTzj+49iU8HciqaTc=;
	h=To:Subject:From:Date:From;
	b=fNd/LDSBF9DGvQgHZjc3m1lIbC1ogAGJA3EtbtSk/UC71vUrA2re07nKQBA6Mtgwm
	 /IAdQFqwaIuCrXyWejYeMO35J1vapvMMuFYEom9PImeU0EbXuT9p9y3ikjs2KH+ha0
	 wyHBn6aLD0SwG1iGn13acIjEcXVbSoCkHkD6T4Q6d/Tp7tz3QuPNk7aEbUyZuvoLxg
	 pr5pJP+HSzvjhNFGm1ingWUbj9sSJTST4Ej8yA6YSAQzqakA6DOX+3d28roQP8da1r
	 jYEAmCtxXodG4EiZCwHL43H/K7VYdw2I+ReiNEA8G64a+NBDhJPVQnJlKAR0if8x1a
	 WU307I2PRzdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A5C0218D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173794535358.24776.2528940788949994738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2102a6c7ce310d8b4db14298db5e983d2b9d82c0f08595d1ba51ea9cdb9937
Date: Mon, 27 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737945353
