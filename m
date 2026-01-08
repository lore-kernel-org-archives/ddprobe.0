Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D7F199FAB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767899034; cv=none; b=DXVTkUCMEB3la2UtAOvl7vOQdC63y9KqNK6ZxKQnr65NSPMt/ar/0yfbcTZrf68R6cSGTnCPS9s4eJpJ+KIIohMFPxFNqOyO2lAit7rOvJSyggxi/ZsOn7ItAXkcBeWZJgfw5p4lAWz4nwIBBBQ/R1xoOWA1xbvITKWC5vjdlwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767899034; c=relaxed/simple;
	bh=nFzMtO0+Ie5JYSIwx9nQGnEODTvI3lwMB7Q9DXpQEok=;
	h=To:Subject:From:Message-Id:Date; b=fLnCfpvS2618eDWNL2w1Fz2MiFicT5hees5mBWhfRVjqz2e7dO+DYBER5pCN4Xb0fSFHyKDhgByV0qVrvIMw6UaGyGN4kHPJlUpudEeWHIQLZuyf+D7pBUU+DgnzQdcqpJRvItmImwNYGhbTSECo2bFTDczJPnSN4n7dGDMTlEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soyEKanS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soyEKanS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D17AC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767899033;
	bh=nFzMtO0+Ie5JYSIwx9nQGnEODTvI3lwMB7Q9DXpQEok=;
	h=To:Subject:From:Date:From;
	b=soyEKanS2V4VW0iCvUKTLUIFYYPNVzXs5YZj14InENk0A5fVTNjpNTOckcO8j0VMV
	 +1J8mZmzwUJJcLQcVhtAZ1UAZqeA7fSWXuvEEHRD74k1vhjJuOJdH3k73CsJVBMHNT
	 Fhwgm7aseRgfjQLemvg1yd7slOrL16OJ8ei+DHv4TZIfNzF51w8ACQIHA3cQSjLAq0
	 JA3ueepN1ElwJqeApyAP0wLQkwuOPucC6h2F8DYkHONNQPTeHELwdwCCKjvp8Jgi7e
	 U0diA0Fr8lNSo5Wi2CdrjU49gDo3FX6AamusiIJIQP4otNi6t0mGaJ5LDfwGS9lZpz
	 Dai0E2jA0z7kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDFD1D486
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789903357.25448.11769425112243198690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb520ff1ef0adf11b4f2ba92ca3501d77abbef1a2ffdf4aae1d7e5e0d86b1e9
Date: Thu, 08 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767899033
