Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257A62A1BA
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757750394; cv=none; b=CXHlANIKaumyZrCOguePkPcL3TGONANqx5E9ltbUhDDP/V6S2Klh2EkoK4RQKGvjs3GavZMMmds23egjCDfsFwj5sIJU/d/5BLEPPshQPcm3zxmPhaxNYJuVQ4AYqQqn6afcqKqffgYTR5H05zUQn9gp++sosoEHjnTiYa1qi78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757750394; c=relaxed/simple;
	bh=a6CZ0LpBRbukXEszQDuy3nF9uCv+IOrDDeJ9fNWgBYU=;
	h=To:Subject:From:Message-Id:Date; b=gtwVnWiolhc49ByV9zxMlqOesmI5rf4fg602rzZGvXxND8ZcBsGd8zGT6NkHbwhSTqQkwR8Gxs8vAbvj6Z97NU6Aarvzo2OBXVPtxolIwH1y4uJ+u3hR9w9LfOXJqmRLzxNezASEUXjeCKOLXuHxccDUkZMKaUEAYgaG2MuyYbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4k711qK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4k711qK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3315C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757750393;
	bh=a6CZ0LpBRbukXEszQDuy3nF9uCv+IOrDDeJ9fNWgBYU=;
	h=To:Subject:From:Date:From;
	b=q4k711qKH3xvwUVdOGKmug3Vj/ytXFrza8k4Pyv4/qKNx3BAUX/M6ueEcjZiO/pPt
	 zovyeh/5TtmDsCC9wjPSADsyhBCu0s/HJlsmwzfISz3OVeBrwPjujoNha04Pyil4+m
	 +j6ifGjMGu7KYFyyMLkMU2aRfOJ54srjweWTSV/EOlIf1JLUlswWvE4ctoP7FNNpK3
	 mQs2C4bXcHc2CjCTjWyCTEcoCAq/dRIsD8IpIJyHuEgOSmlOQb8+eFkBMo/eHJuI0m
	 lIrgIDSliDZvumTu2C/jFC9Zo4iK8KipS4D8LBGEMOPZ0+02COfIQE088/cSepr0gc
	 hYPGh0RTE0rWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92783CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775039357.9758.10655354101900062273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc237a6d24acaa01727b7545a18dfe2a5c11b4c1aa66f1153b5f51a85f320cc2
Date: Sat, 13 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757750393
