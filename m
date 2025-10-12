Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03EDC3B186
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760298594; cv=none; b=XyXZsjSUxA1G6NG7dHGagjpn5QuQE9Zh0p+mYR4XBgcqbpPKTZi9PlZkjXDpkqhsp3tWhEzRuN9mPxFrzTloOcR95eH7vu3JxdTzbl+OWrd00wcliklTL9gTZ2/5xA5mfJxuh/X0WPb4kV+JcGvQFKyldS7UGDak+o2ts9Poalc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760298594; c=relaxed/simple;
	bh=oZzr3YNJrueGinUnNLuc3GQFJ77hjL5gl/upF3VKyyU=;
	h=To:Subject:From:Message-Id:Date; b=g4j1p1k5ZNBjH9B3EhxL59goWIz906TAJzG28kRrDpb3BwyFtcNRuCFTbMnB0AoyHt7Yr7E5bR9HStG9nMNqMIoOMFcLQ1qvnzwcwemoDtlBOYoAQan5WWGoG5QvfEd/x0Bl6i1vjcfYAIewAKmu3dUACMVHA8btP5ecDrp8Wo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkjZLsdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkjZLsdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D3FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760298593;
	bh=oZzr3YNJrueGinUnNLuc3GQFJ77hjL5gl/upF3VKyyU=;
	h=To:Subject:From:Date:From;
	b=EkjZLsdUTbiJ58X+Z3Cb2KCzpgRodnMcUFxAanpTbjbVmDGY34nGLR70uE8VD3XHS
	 I9KNA0Efl3A60jQtSfKfXYloFuoPa8Fcukj/uhMRUKuLkDIZG7xFbeObpTwB7lsUg6
	 FSitPU12hAF7K9LuCp0GlwPLFxjhjK356oWkhij/d5fFFBSQKXGd9IuVxBgYVSgetB
	 +9bPLGh+SdWcRt1hBWdPU2cpob4jbYLptftX9Fm54ATWHpLYkApyRzho0qISrCzkDx
	 pLqVZ0mKi55yojtxHE58Ws+/7/kgjeBlvmcEQWj6utWXUFq1G7EqGYDMF4evAv4zGt
	 2GQXA0MOJDWEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C35CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029859358.32483.2025794574715994313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54436d9e0aef7916967980263a55387b3ce74aadecca304e6a9513d1e2ea07f8
Date: Sun, 12 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760298593
