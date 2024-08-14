Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBC51B4C3C
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723655754; cv=none; b=sxZfPdT+kw5px0edwpWf+TKBePbBg2XAMTd8jnBVz0H1LwJt5SIvktePlocI5qvDfrFDbEZp85X9E1dfCOPtk/J432t/d6mPKQaVtWlJvI1uYXVWRfHehkcTlW8thc6idCGrYR3Ax3LPlF+6kyH9ADzpANxSi6/Q9/XqngjqTT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723655754; c=relaxed/simple;
	bh=73UhJU35OqsyaammIUrN5F6SRlLK0yrD7WljQvrVKNo=;
	h=To:Subject:From:Message-Id:Date; b=V6G+h/WVmy18gyigJF4IiqBvhIZ/Gr224LUep5LYwgfb+jWvFBvPmybwCVSIxt1OpvzFIQq0E5YsGEdkr5JJKbQouhv61gNPSwiJZdlSrUfoNPAjMgm2EGLfNBBu2iwXnRIpw9V/eD0XTxi+hcI1EC/zx/llk0s3NyHbQt8OUtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWdrySui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWdrySui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D70C4AF0A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723655753;
	bh=73UhJU35OqsyaammIUrN5F6SRlLK0yrD7WljQvrVKNo=;
	h=To:Subject:From:Date:From;
	b=sWdrySuif2GzmtU8KpJwAH9NQjYzb2VoTiDqJpA0bdmblSPqNs9B/nyTCCxU2yyLV
	 0u7sAnJKGiBPuftMzvJ9sZE7qdtFKS740qTC16Y4niuPHVG6gQPagdAyhTgu1n73pL
	 hwf5XxhlOKE/o+CPEYW4khtneupW7a+ha9dgKfIug/uNLaGlndR4MMKXpqBz8fH7f9
	 ZxYSB3X6BR6N2vR8nb4GLSEK54J+opUJh20rstcpXGjbd2OnN87EYzqpMZpbQyN2wC
	 p/WXwqzppxnsRE/jri+TgPeRiNUZ0oxKBmwft2TGUcT+6VXCkalUara9ZD2GJkdnHc
	 IbjoRJBwORH4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E29DC531DD
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172365575363.14700.7766493429426709405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cc339c2d80294fd5aa3bf889db04ac97a7146735f4af2b2849658dd1843be84
Date: Wed, 14 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723655753
