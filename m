Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA24542EE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790189436; cv=none; b=Oh9I64k19/bhjY3S9BZPhCeSVd0wYrQKd63G+ye7OaRAkLTj88CPCpfsJ5cfGdUpE1Luo2UtFDZYv8KjDHGrMPzWogBuTBd3Qj58xWmx8rX038hROLxEzgQX3o6LqKfAs0wnpB5PMbIvWowih2WV5HMg2+s8RHAGJFu6PSim4yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790189436; c=relaxed/simple;
	bh=vCVbaPRPcXTuU2i5jM/bFupUw8LsPy+d+DOnICx2Who=;
	h=To:Subject:From:Message-Id:Date; b=ITl6tDHrFeZ/ACWdLPT2E5JW22CDqmiM6Wg1HRcqFKRWFpVH/W1Yi3I+OdtUqwKt5brQEbaChNsyRCuxI+wTdLRAdArAZoB7PuhIXueu07XOjsq7KGRfiomQPBY11gf8Imnhi3qumP792JwndpLwsQOW33MAl2K7x6AXyEf3KEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9sMN9g1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9sMN9g1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E535AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790189433;
	bh=vCVbaPRPcXTuU2i5jM/bFupUw8LsPy+d+DOnICx2Who=;
	h=To:Subject:From:Date:From;
	b=q9sMN9g15peNY7BQ/5hoUYMLkCUswz6OnavtTRDeSPzXevQ/djZZ01UwIR8c91YT1
	 I9EMYboS6k1pUq3GYaCE6h61Bz31wwogoSoE69a3SiT+NFLEC08YJTrgWxHgMe/V1l
	 tCIRscuxqpsOvDQVU1zxVyy+VY9AxYtGCI3ZNiJTdwIJ2btNVIVDjtRlUJJRdMGn0V
	 LLTew4Htxj9RR0nWpXdT2RsaFqrJ76r3d6ebGcapI/rDFRQYwydVogFSKc/4WaBn6z
	 SmvmMvDpct6J42nNBb+UY1gJ1InxPZ9EjaAv4QurKGmckJydT0Fn/ICUtSH2WUp5XA
	 xAiupQT8eliAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAC3C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018943373.31443.13991242148868419651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0857564f396883a50e2e153ece3cc28ca126e1d2a187f350251b383a5489fc
Date: Wed, 23 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790189433
