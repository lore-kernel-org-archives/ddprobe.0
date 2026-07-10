Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0401EFFB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783652314; cv=none; b=UjaY579K+k8mLaxdzOJwY4nzkhtcxZQSJvU5ZsRWGKbHEp1LpU8Syrh09j2b4i6Bd75IVFNthkX7S0jD0gW5/d+RIOzYeRvL9XkvJyxrsDg9nXzbPPTDOj0w/jrC9yTXEA93HsMyMVZetqptR0DPa6JuPTMDVfnnWC40UlRf4s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783652314; c=relaxed/simple;
	bh=mH4GZ+VTkKoYVBBn8Q2THCYMrjFZ9i3VbnRm2POGL5g=;
	h=To:Subject:From:Message-Id:Date; b=ofu6wfck+TjtlXmhNCaQRTguVPEOjatASZRNLODyrs8fNfvqrb+bIDET4VCa/RO66mrg+RvzEbUc9WG5WypL6bul6Ev1ZcNi0jvURe3PtxGipR02kZnZRPHmXgiLbxEKFN0xHPgRQy4O45vA2uJWW7NIB5Bk6yr7WmdReGs/5Go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IABpYS5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IABpYS5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC39C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783652313;
	bh=mH4GZ+VTkKoYVBBn8Q2THCYMrjFZ9i3VbnRm2POGL5g=;
	h=To:Subject:From:Date:From;
	b=IABpYS5yK/bdcnWcyPb/ymA84jCGPxk9Z93Kax2Vdogw14oVWdmMw7WdT5zbX+QqT
	 OH4HBcT/ecI2Ud/1BPOOvKVsDIIQD7NyqFyqXr1OXSiE8CC42JRmI00RCehIAS+c4K
	 r3/tevYL6CJ4LNTMriRvWvlpeMSUjr1dtnbNkazhT+fZURdIM8Fckbe6/75fsYTDWe
	 SBOLvIr06l4hf0xdsAv7yG+IBYqy8kP7FxaP1u56x1g6N/WTYa9HlY9adxFpNE4XVT
	 UVoJEC8pUfmfTLtjvSpjRXZdQOIgiwJO3euZFx7PPUzl5iGgyR1c+pMYvc4Ceq3rsc
	 LaPsnXczlJr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9323C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365231368.5517.9822671208967559218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bc396102bb960547cb60ea61628806fcd6013186572fe9cd346aecea596d59
Date: Fri, 10 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783652313
