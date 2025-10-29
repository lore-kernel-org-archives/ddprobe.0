Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169C023A9BD
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761728394; cv=none; b=kbyGFZMPvNsaWqThAB33aMRUz94JwtFWCslyQDWabuaYLHi3krlPcso+gmi8H5PojJGldAxcCXH5PhMqeBUTmZKBKTLM/n+mwVtcQgb4JyjgUalNxFZatxhiOsA9QxNtM/2C3fFTwcKMKDQkN/SxJUGFNsTF4ys8iOug0PNsCXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761728394; c=relaxed/simple;
	bh=afebEgLMzlRSP2BnX4G8uLiw7Tj7O09uA9lj2ttX6iQ=;
	h=To:Subject:From:Message-Id:Date; b=oPLGUtxRVKEx71YRh41gRHyAyQkzrqyggTEfWHfa1MCaE+fPaqdvJb0csv17WelocWRk4ef+GlULdeAPt+iKX2Mygp0GxtNEeUVjMf8RhuTLwrR4HI2lM4BFiSQeTccLYDtfsUxOWwOWknYzlVVGPB5AER0zyEQzl1BG5dqxb7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4t/6gX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4t/6gX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F0DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761728393;
	bh=afebEgLMzlRSP2BnX4G8uLiw7Tj7O09uA9lj2ttX6iQ=;
	h=To:Subject:From:Date:From;
	b=f4t/6gX0TmPA92uUScVdhpcmxxB7mmph7hcKwrYTsu8LZ3NH8QEK+pOCZeG6sLlU+
	 WYXgInWYKWrhLSfKWpIPkysiHswa/3+c1V+tKGFa5iGIfpLa5mYTTIzZdPzfEmaaCz
	 sTFB1LH4paPU1Zpjzvm6DaWroV0LVYNh5o0RWMpxnas4NIc1fdour/3tVG68Y0I5Tb
	 KoZ/Z1nMIjQngYZeOcsUJESOvafdWz45zfVcZtrSiO3zoBcSG2H2wo3UPMDFbjrOjy
	 84xpiGc93xCq/BbpE3z8Bn1acYCt+c4d0uDIxodA8KMc6CUQs7WDBKeMOH4ilfI58/
	 Y1sIDxAQWIKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94166CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172839358.31702.11452381567043998679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474896558fca28fbd5836391ae2ec0fa11a3a4bccf445930f33a94c8b64df829
Date: Wed, 29 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761728393
