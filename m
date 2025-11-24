Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443272727F3
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764025374; cv=none; b=Re1JfsNjjSrXrTozFA9GqndECFK7EBsRd7gJQNzDzXGJJqe0SRQQty5m2YFLRfGD9VLjRSrdZE/NBLiNsuX57FQ6FZoGX0kXepkbGf30XLh6ku+HGyEXTYhgY5uxJG1x0ENF+hMRph6w/OIxaE3cBvRA5pO43jJRhMrjdvSamVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764025374; c=relaxed/simple;
	bh=osOAjxYzPZeuXl7auY1JXVtonqC72TV7+OLdJL1CCCc=;
	h=To:Subject:From:Message-Id:Date; b=TAdsA9Bz+JWuD7/SyuxTiOJz659u8JYtfAVKlrXezp8gw/hWuM0h9KCjDa5G6mHUf3Px6dZLkGCtVuKAaj1TnRY/ka52RKgNRQP+i+ARgbAkzINMfJGCdxFSuEQr4tX9KoSAJfEA1zQWa3qF6oBGNbhA0H2JKczpBykigcpYNgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spgG/V0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spgG/V0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FD6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764025373;
	bh=osOAjxYzPZeuXl7auY1JXVtonqC72TV7+OLdJL1CCCc=;
	h=To:Subject:From:Date:From;
	b=spgG/V0LjIgN+XVBSyslOH0uGM98h8NrTRZMxAH9/V+KyXT+O+nrZQ0kQ4rOpLn6P
	 ZZY8RB1F9YVkRs/mCpQlcht4cGvBWVsb3DExbCrgdSea/3W21r6SLtrd6bUs6go2dM
	 RlBJWpJ6220SukPjMkQC5Z55OZjSWtMEPB5Rtoj8DDkC1TCxg8litBi6iNlr6Catj8
	 DWvxiunnAdVEGTfAWnDJkBrNULFiqwQqq2vy/3U/0IdcllV0dY/T7TNS/M+lgJQquZ
	 z3dHl/D6bkeTX/ZPPNXdnrYXBVUCbKsGaDzjmoG+vVj2TUtIYaRlJyU6/D9lVZMyU9
	 FUaTw4cthRuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C63CFD367
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402537362.28816.846599162899751963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1828849aea1cf4c011a3077a6d6448564d821630cd646060f63ca12ac8b23c0f
Date: Mon, 24 Nov 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764025373
