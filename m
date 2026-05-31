Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D071DE4EF
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780205674; cv=none; b=cdWgwKq2Se9UHnutWr8OsTpQS/0FpEkXr47N0S+HahmeYWSVMyD8mF02Qm0CyRIZ5PO5+kj/pdbL/4KNrYU/jJqhNjAWHVBB/b1WIBZWN64o+xhK3DIIDc571Uf/MuW19BVotnL8isPtiFUrGvf6IStN3v1sCZ4r6I/eQnnTTfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780205674; c=relaxed/simple;
	bh=MTELl6oAQzQwwjqtobt0oq3YZVY98aMdUm8/PldaeyA=;
	h=To:Subject:From:Message-Id:Date; b=I/wG1dZVdZZoDPsxV03/bDSiiS93l9VnozjqGXBbHjq56yUhwkK3DX2hQjseFhqbOMCJpBexOBkhJdWzxAs+Und2z8K4IljeNLfScNSfyzekwEBBcwIGlSQX5+IKdEiQjPLgX+HfMuiEWIhqFTRx6LXhaZdBUvLrfTzCteRrDas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB7Byh1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB7Byh1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3304C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780205673;
	bh=MTELl6oAQzQwwjqtobt0oq3YZVY98aMdUm8/PldaeyA=;
	h=To:Subject:From:Date:From;
	b=lB7Byh1idNuzMcAub+XYOhoL5xl+zo3eo6BCXPTqzWy+7QD/8MFU4EOqDjG6ajmKS
	 KmYvmphyzSIi8aI0UNb2ey8tW5Ag7O93qciE+hAuJ/P+AnJ2tfJojSzDvWpwIujWD5
	 ZDhEF9ArykKrLHprpA0XvMWUOc73JjQ3C2/jjp2DQK0ScaYKQvtTtlQHEdF2Y7oFvq
	 u0GAJeXa2EINLMJaJuCKgyaXUYqoJngxV51mbNoCPHEN8vNV2i4Rv+VyldH/EzphYE
	 c001Sa3k081hOFYZr4MoQjI/n3cawSJNz9rXxSkk7ZX9WvKcMDLkzAAzydA/GZVR20
	 9FrcaQ3jl872g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8418CD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 05:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020567368.1502.3645189795834614963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ffc72b0fa756e69ca3b9ec491efa862f433ce052d41d56ac9ce1f3185c6698
Date: Sun, 31 May 2026 05:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780205673
