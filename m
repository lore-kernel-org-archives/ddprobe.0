Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2205B78C9C
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758682794; cv=none; b=sTj/8WBaZpMyMG+4EupbR6UPED+SvKP4DaGj1ReL+KjQyuQs7ADqMIddV0Rl8TvXDdNB4mf7uzr9bKswyt1MHXkg9Jj+5aedojmZVpPbiSIV6dXJv4pjU0eTvL6b5UeeZFzHDhb57l+UK9mhZ5+JQz6vFkhlsbu3d900RUvUG0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758682794; c=relaxed/simple;
	bh=uVj5hsjCL4XT05uCPvqv4nkj5Dy8WmeGGpfFVY8XPGU=;
	h=To:Subject:From:Message-Id:Date; b=ddiw9XMyKpF6hOxaiTWHVTyZJOSxmt287dFpx8nCrRnaUQaRNo+EcggPJIaqfvN+zW7P0r0iXjCNw4IIG/mTm+l2zWClHj9ZokQfYxEL1ddMMyTBuCSWkSfuDXbuoXUrWr4inVsAR3Qw2AGA8p4uTQYTHHkC4aVb4sCogKurpEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwZ69nyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwZ69nyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758682793;
	bh=uVj5hsjCL4XT05uCPvqv4nkj5Dy8WmeGGpfFVY8XPGU=;
	h=To:Subject:From:Date:From;
	b=KwZ69nyGLXZsfhn32ECrwCteuoasDyKAMjrO/zg/7460BhTTaAEofNzzhDjnatQHi
	 +a42VMsY14NFRB0O94HF5HcC76VeG5qXKpHIImmJwbKESrFGikwQLkCvt07zfYERwf
	 X3SoVRXXSv2zhj5apa1KlduEKz7OgN+cogrSG22pDXnI5gw8/fjX59O8RtaV31As8K
	 jpu4SGBxEbrNdLeJTTVwST+wdwfsBz5gHqWqRRUvp7rObTRQpj1rvyqk2O2Ex9JAuV
	 dNrmBa/TE1QaDZyjiY2n3ifr2EbYeA4uQy/Dmloswad8T4s7KW1U1js7D4Si+/VDNJ
	 5Y+d18KxUlNfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F958CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868279357.28758.16562284579363110306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac418d3dc256ec8e3382371b505e40517117f52b21f6f707a385743ce21878f
Date: Wed, 24 Sep 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758682793
