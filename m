Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492991531D6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726839354; cv=none; b=L2vIv5zcjKTXPZz7dwKRbgempBR80x6YCtED2QQMO/TVNdzomg/CBdswNGXzGI/nGioSNc3e7Uwu5+292Fo2RkB76oGajYS93XRonGxT8+VllmjxOEjgjfJHk6FYI3UJ84nK2BXcydrnBsBAMeAooeZa8LmCkXFxDLStnCPs1bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726839354; c=relaxed/simple;
	bh=GQHFtqTGrtcieRKWWOpgQzalZPRA4XwZHSaHjfmD0zU=;
	h=To:Subject:From:Message-Id:Date; b=KXTUbLnngUHCOepKrHPu6Az5/RhR/eeRDV/17FqmjzDQZ5Eqhg/e8F2erg1gt6VsvemtJTEd4qkqnnYb72cAGctjJJ+vWhGHao2TAAN7QCeF8USzz45QBQC+l3iomdRUMKuAttzf007WEKffKQQvRu+kdK/ycTeNwy50/OxTQTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyfHfc1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyfHfc1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B5FC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726839353;
	bh=GQHFtqTGrtcieRKWWOpgQzalZPRA4XwZHSaHjfmD0zU=;
	h=To:Subject:From:Date:From;
	b=tyfHfc1peiRtbgFJrS+k/gEqqdNMHECvC2Te2yivBcdBLw1QAKZ7vtP02JlJWSGKq
	 c5w6zft+ToPn7mxN85ZcmX65UPf4HbAik4NAduO/8u+SXpNug+hUq6xMda/qO1OoD+
	 BXMcL7NmiMtK7rqypWjTH2UbDxjZdqHv36uAIwB9uYn/VYuQP8c9FBiq0W5PCyFv/y
	 bgH7XIySzUb1LeXzzF/hPijisBYP5EJGyxoR9ut8C6DZY8sIXDeG175wxAnFTMkujQ
	 x+N36a4VNnZDnBPP+n4YRZRwz6gY7wnz7ABJonud5tVUCX+Ag8iPb49YWql9/T7H4J
	 uwwQpOq1z1D8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16F5C78841
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683935364.15916.15204309545308257277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0ecc03f679b0f0431ab3594eb93a6b5033dd094d0dff68ed6da3f60eb2cd2b
Date: Fri, 20 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726839353
