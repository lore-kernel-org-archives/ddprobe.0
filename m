Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584CB442FA5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784904634; cv=none; b=jU3H3U+4UGZ/kSa4B++2DkHhEPUcjKcEuvxWbVJRpovTEcQsGDXBlrN3Tb2o+xWdxYAZ8DuqU/p0BOTHRoAQGXLRWo6BAi++OIayOp19OU/3qqtN7IxbqkWnESFen2Glu3CtcSkStwiOgRoLVubEODhMlFj6bN5F7xq3YN6ajzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784904634; c=relaxed/simple;
	bh=WlLZTous/rJyeZKtTL6WoXPk5viuyi8myevoYQx+Il8=;
	h=To:Subject:From:Message-Id:Date; b=NCNkZBKL0UF6xSsaFeI73sRML2seWmilRce8JchSq0tyvK9ao+flsdlOrL74/C4f5c1Avjbj7apgkLWeqvwKCjljbzyf6OosG8/LcWWNfDTrr89kIXni2rl/AvWAnPwUkkMNqRoI7rnH6ROTIMm/dxXIfMi08JMevdMX/gkUsw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXkjtmxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXkjtmxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC35DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784904633;
	bh=WlLZTous/rJyeZKtTL6WoXPk5viuyi8myevoYQx+Il8=;
	h=To:Subject:From:Date:From;
	b=uXkjtmxI0vnZLOdGtSHDgfhYuKjbZ3WO5feusUFKOX0IEWnrRHDG1aZYhDBsd/B7q
	 cT1VP0pbqOveiwMeWCY7LobERjkDbasUQjqy2NH0x0mTVhtja9GjM+uhiOpoOckIii
	 QKFCVtOmQsJfEXAn5Nw6o36XjrAHExXcFp2n2UObhO98EFoVNgOA2fgBNfm4ZNs8+J
	 X6JYwTWsLS9UvnPufCPpKWaKGK9sFJNJRSZQ5h/tvYtz1apm2IYRAnbCbwaYVbPiHO
	 l8updJvQcS1Wnkoc6W0ak8GbUdHQrUS+Zrnji0J/UvYshWTh5874nfl4W8wfRP9Sr7
	 K9i40h77visjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80BDC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490463374.3518.7440170336245588631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca01091c6384504b68b4b055bba81a0b23d5cfbd924178e48acdf000347aa4c
Date: Fri, 24 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784904633
