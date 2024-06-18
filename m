Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468F213DDD2
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718746763; cv=none; b=XHH0nrf1jUMaP0NJLvlJVmT49Lm+sFfGP5gr2a7t+KGyksyl/bvZ8Qgqurbl3GtDGlLneCJ14WRnK9BjSffdbxl44bb7JMF8EHW1y3LJ1HZDKNWg88yI0ZGpmVxAdbCpmoW4yIQZWN2OL5x3se+RN8EVu3FFIe02/o85uBgm7iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718746763; c=relaxed/simple;
	bh=ElODPfWq7tAE4zxrvGPz6PRs2t3DUZuezXLqlVhCGYI=;
	h=To:Subject:From:Message-Id:Date; b=WKaHbcoEtS+QdoQ6H0DdeZKGFacbVmwvC4+aXeOp8y0AHHH88uxlK+A+v99/nj7dTPFfvwvAqkTM4bDGezmNhIta9dv2Cw+TGFQ1uPqDd8ECyxgRQXbuY8vIbWhtwNAFcpbXJtjNZFUto2IJ8IzjNTsOvyNlQmIxhsk12G7H2lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzsoPM3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzsoPM3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DE7C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718746762;
	bh=ElODPfWq7tAE4zxrvGPz6PRs2t3DUZuezXLqlVhCGYI=;
	h=To:Subject:From:Date:From;
	b=MzsoPM3LG44Ah1t76SyhRhl0syQvIEWny0qwi6AuQ2mBHA36dN0uBnyWgKOBiY6QA
	 94RyBfDaHuNPp7uriwBh1ZDNts5/1N8vwNi8nCYyuM2ZVMUX7lkNqnm3rlN6L7SQgA
	 Wb3h79YkWtrFpIHykK+LZ92cxnPwYzxND/b0L/D6CJWgXg/bqNOu7HLG+XCC8nec6i
	 nMCB9IJW7V5Ab7qbEwBIVh2vdPlZhn5leuU+Wjcg9jIYBM+LnAYtXatZMihvKp4ZMo
	 U45ehpudNWCpo+qv5vP73hGaOjQsDZ1D++2V2L/plNrZGz6w7+PffPvLRftvhn6wud
	 zEWeKm0t3IFtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31EDC2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874676278.23999.2195090945618237725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b9f78562c9987e5e774eab98d5723198f79f4f33134807de6a9ddae07eeb29
Date: Tue, 18 Jun 2024 21:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718746762
