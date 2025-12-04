Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0959E157487
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764868974; cv=none; b=TivcX2eWVQZtcjcq7HhaQo2FHP0uNow+/7WaKFPFzuCc/vTTvlMbzqgW/bovDgBVEUtTySV1lx6XKRU4403u3flDXtRyFuFYk5CxPL3pk7ZAsoy6+k1NtkSSyGupgcniXGxiAUbS61n0QX+6HudREaWk1+hlTeHMX4EOwb8YMTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764868974; c=relaxed/simple;
	bh=89G6sbSBPPL6F97hBBKkrDbfUQ0vcx/KzFxgxCH9RG0=;
	h=To:Subject:From:Message-Id:Date; b=IOixLre/NCA1fGm25PIix+/eoc6kNplDTrSG5umy9LaZKxJff1pYuTmLKKAvqIrjd/A5T3+i5rF55t3Yr7+8hKcsvmyDuZa/+STBuJ7uTpaZzg/WLTAuPzi6+48wrzTiT/30le52J/p04xP2OGyt63q76b5kIKy3ANvlMJyrmcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpdNZUaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpdNZUaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A4DC116C6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764868973;
	bh=89G6sbSBPPL6F97hBBKkrDbfUQ0vcx/KzFxgxCH9RG0=;
	h=To:Subject:From:Date:From;
	b=TpdNZUaqS/ie5EGvMGrwoFayw89SE1Df0Vv+WOBicquY9gfN209U20s5f6mpznsrh
	 dKVkQViMqU4Klszlc4BFuXzQdVT4z3V0Ga7ZmIV2ihCfUsE6n7XGznEnSEjzpkcSxg
	 Yl2lWjFpA3lN8x1xagXvgzsWdIpA8KDsdAw9RN8PJ1Oa4ck5dqaVy8+omzaMASsFYI
	 w7li3po5/dfzNql8SX1F/48sYsbTvMsJP3vO1ghGMYsww//YMzA88HApoYeDa90y0/
	 r+cle0qfP8fDqWnV4NSaVxmvg6TqoHR6zPj2AuW/2RT6rPoEnLagzc2gWUcw6Emsvm
	 buwFPguj3EY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EAAD24440
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 17:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486897359.16674.11302160840231465940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bb99195490bf14a05be810e370f6333f8d77873c39ba42aa7f9fc2c454e992
Date: Thu, 04 Dec 2025 17:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764868973
