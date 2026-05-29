Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7510430FF08
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780060354; cv=none; b=JZzl2i51wDUeaKtfSxTs3Vp5tOKGR9i42I9QZ4P1GiLLLbX5RkVkBNoV5joRcJ67+wdHmDBEgfbfs+zDxJoytp/6kD/AJHM32EDfJV7JrxxO6C/tLSaG1m9uFeyNGRH3YLVDUxctGCM+tjYpCdXC/7JVuvqXqD2DEqsPaDItIho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780060354; c=relaxed/simple;
	bh=Qq1BDAvbBD+SWtkbR4BkxgwTpeytbcr2fOsVyxsbEqU=;
	h=To:Subject:From:Message-Id:Date; b=V0HjRgbkYCYU500OPGwCszOGAIvimx0WpfJ8TuI4bCVMmFYpSCtFrXvyz0upEp/oy2GLkttnq/nnG/cUZZ6aLhYmo93qW8tDAJ5MQpuo0YnJGolxlyZ8HlH1JAHH/e0csKUF8KkuZYast/mqgdy0yjWu/fbimJGc9ZCKV/aCRoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkpkgaQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkpkgaQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD721C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780060353;
	bh=Qq1BDAvbBD+SWtkbR4BkxgwTpeytbcr2fOsVyxsbEqU=;
	h=To:Subject:From:Date:From;
	b=bkpkgaQF/LKXnb9OGzA5+Gp6NO3G1nbo9Q0Rc1hPud/WKN490YYcwOTjba+hUJdkt
	 sR3O+IkQhJ/2wrp6lbgXus1dfs75JvXZvQoJ4Jq96JFloKetsRzFAidc2Xn1lTC0y0
	 madnS4YCrSNWzLzPEGKGT+ovuvN4GcBDh0Uhv4RkqQpxVG6jyswnMb0Ggz3otE1AnB
	 87ZitqntP9CyNX8gpdP2rpJuWlc1s+84cEO/3v9xnUETleBM55eZ8AlvFmwVL1WXSK
	 0EcOvI+B6SQ37lJHkKRgMdF9UIgzA4H33qXwjhB2RwVgznwSOY1neGuHfm0jUTNkKJ
	 l4PTWXUpAX0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25F9CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006035371.24504.11664465392320596490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2295d79a10faedf5e75e4cde061a6f3cfe6db24da20122cda41f3acd2ad9b5
Date: Fri, 29 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780060353
