Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6891B86D2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721387154; cv=none; b=fgf81o2kLFMoa/0qkRpSvYbXAADcqcVove/uTLIbJyFnEFbcPQvKxN4Bkw659YkOV02iTeTKhGw7hQLBXQXbefKrTn6Cd7pH/QSQwJil87/Ndb8dBwqGdR2YSGL9AFtNTOEkQGej1M27v8/RLMxjRISprOmb12rfdrEqkWMNE5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721387154; c=relaxed/simple;
	bh=HCe4rY1s/Mwb8yQYypio4hLMzEaV6genS21K/PU7RC0=;
	h=To:Subject:From:Message-Id:Date; b=q+jpmddnkak9bo/KxuD6mKrM6+HtDMoZCBlhogG1KAyr7ZvNRhBQAvjrE+Dv+f/IN4jEDR6wKNsOpk1nWIdW2/RRuZ7v3bOgCNYE3AlR3nNw0wpcf5IITs5q/ktZe85R6YBlPhOP5a/7XXppFRH+VO918kj+VWmmSs5K+M8iLyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYu0/W46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYu0/W46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A326CC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721387153;
	bh=HCe4rY1s/Mwb8yQYypio4hLMzEaV6genS21K/PU7RC0=;
	h=To:Subject:From:Date:From;
	b=UYu0/W46eQGUG/gmqTLQZhVf+kqIPmjxI6MKRKy+yhZlOVTPCXEzZHSPODmtaAKG+
	 daeKBwBCVtQ4YA+Ybu2orila+7SEgB9712ge8GHjdqcAk83F3iAqaWOVmQVJydxt1O
	 Ow8l0KWDZ4un2S4gjsrmdHz4t44J7XEptAi8/ZjC0k9IzxfXYFoXaNDfvfwRL9DppW
	 zUBuA3yp4w/1bOUWb9LracX3y0aZa1wmvQwppgPg7uHMfh6t+bk4lN/isfs/tzYJvG
	 nWmBY45ATr3AQJi9EQzctGMZBPl3xY+DOZMoqEz/RZA/RrO5i6luqtNjyUwHqp6nHP
	 cwBXv50fDax9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3DC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138715358.14233.11858328857192386112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da0a360822572093e2d6bcdb5e5c5ad9779294c38e64368b5d4d309736636538
Date: Fri, 19 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721387153
