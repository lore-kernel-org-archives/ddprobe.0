Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CAC3BD24A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788537034; cv=none; b=j9bSazSoAICYlBu9bzMUXbthClFnO+mePztyFp8ASbmq2fFCXY1g3w2w/A6Z5iHGdNRqX5Sz9o+OlRS2+puOVLrAS39/S9p0FRA3TVwQIGL/U51U/zutSF3dTLEKVKv8pSS3w4XZDUhJRHetO6rcI2hDoUdLy06+z+J5HN0EKnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788537034; c=relaxed/simple;
	bh=Bsfr06YpHvCVKL5mR4pOcjf5kN4zELLSw+I7Df4F3kk=;
	h=To:Subject:From:Message-Id:Date; b=J8gh4YjL1oBfRM/IDzqu5pHzKsgBJwTLC6/uVLPhZsaJOfO8h3qju498OXWsxXmOd0ke6gL38cu1j5TpK72ttgTC6j+v8JlzeZwi0gXYS6RWD7sPUFxkrxXfHDG71UzLtLs9Bo5oKh7Zdy/U9JyLOXRe3SvMICmv6NHqMAHFwi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLEexC2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLEexC2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D085DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788537033;
	bh=Bsfr06YpHvCVKL5mR4pOcjf5kN4zELLSw+I7Df4F3kk=;
	h=To:Subject:From:Date:From;
	b=JLEexC2bekk2I9OdCXWAMBiciv/++ZvHhOXDFcYcgfTcfbixCCBOAXCX4rUj7evM8
	 5Bz6bRHbfeJkVBz498DRNRk/6Zkjbl4FvLwUqZUg4SnEUpgI7KjQwJ/k6Moi8wWaoX
	 iRQz3aGMeUbibqSbTc5nvHm2KwiyLhGIHH1CUE9AYFS2hh+KLhvCVIVTlVIW8xeJYf
	 JAYGU8snejUeYMqR9qwmenzdvHXF9bOKSGN4hypNNtApU92q6JSAcy61Ox7+ggPLrF
	 aGRaCin6I0tggJsYKNmc39p7292drrbWVxG+K1prvu93oWQXkbJFwmcrv0+XESiLRG
	 mol/9t3CSKs0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D9C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853703370.32505.17048678584486128953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9407cc8e168aa5426af763bb34bbc0d123e0f8e4d711ca532babbfeeaa014cbb
Date: Fri, 04 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788537033
