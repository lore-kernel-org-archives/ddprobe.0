Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA07179B2
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714509143; cv=none; b=a/aSOsdM1KHR9Hy9WW8wJuKfiqtal+2fZRwbzR0xOGK+xL/oN025rR2ukKYpz8RypS/i1Og7W1vZ6AIc3z+1leO96bNT+IGqhLw2GYl0TGAVZt62eFyFHJXwPdmrInX++ogEi4dSx7SN+mRtV/q6XDYCUHahTpiYrpPwtI1Lnww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714509143; c=relaxed/simple;
	bh=eSP9T8f5/y225XpTgXDD9kWZRNAgqWIdhYrfayd07gY=;
	h=To:Subject:From:Message-Id:Date; b=f1sZIQbF38tgjKYq+tdwKjUQITsqGLfEplFNm9WTa4OAsi47+U5OtS07WSjj3MLsriB6qFv7Y1iiT0nsOsHHYXwf5zDKAYldvcZv40O6YAUa7GY27OpKGsBk+O009ekjifmYns5t1B8l5xyLoPy2oqkHUWvV+emmJtapNkCFMQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIPAc9aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIPAc9aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6F48C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714509142;
	bh=eSP9T8f5/y225XpTgXDD9kWZRNAgqWIdhYrfayd07gY=;
	h=To:Subject:From:Date:From;
	b=ZIPAc9aNC2xmw/a1dZr5VKwTi71K3H1Zi/kSoWp2BRWgrD6a+Xop6Bt3LLj6E0T/r
	 MgupPpCBygtudgGQ92rjaTs/9LLLR2m/fVI1bPhsGaIzjHYfluXh6tTRynjgGnqbpB
	 LpW57YKJ6Uzgcet2yUIASiJ6L2QVLJLXMC+CNLmvM8JNmrWOtTL7s9g1fZSBa/CsQ9
	 ZUj5eq9NisiWijdA0s8a8F6IR0d5Ehz44oJs73HbD9PPi4YDoU+Vw0xR+HM/uWftSi
	 JSLDPOvjeVtLxMWyXTryg/31qBChcnGVi/LEgnrFdaJmONIzXC28DpGomcCwBvlf9q
	 jCVHKjtcp09IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0BEC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171450914282.9063.3519812665092669761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e984808646a1c5ba6dd112099065715c2ba1085643134cb00ea0d370d0f46a
Date: Tue, 30 Apr 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714509142
