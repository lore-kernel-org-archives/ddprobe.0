Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413FE24469F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745357394; cv=none; b=EkZzdwQfsAoce124MO4WZmQSMV2paUG041/XMNDiYE/WwvBp6sAYIwXvj/iPIa5UJ/ayWFezcDe/Le55itwNWniN93H6XeddMf1jz8UXIHqE1AUxepW+18RR0EQXuQ+MVbxL2BRSTbAfl2lWP9NjmzUfO8emmQQmmzAX+7kWqFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745357394; c=relaxed/simple;
	bh=OKnjqJTPGaPl0OfnvqDKhU1xsJ2YixguYmxvgiC9/nQ=;
	h=To:Subject:From:Message-Id:Date; b=D5QFzlD/vemwP+7LnMnJoBp6UQs4OISo6+FyjGNyYBlb6hVwtgx8tf9V2+Rpb5DSp8Lo9APrcjT7r25XB8S9u2DFrAv0E1w5s+gxSRxQqr+dUAmwUkhLMnB66TTKJd4aH8SWKUIBC4s1gLT573BvLPgPnMKwl8J3sTXj1GaMTAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBGAD3Zm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBGAD3Zm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6AC8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745357393;
	bh=OKnjqJTPGaPl0OfnvqDKhU1xsJ2YixguYmxvgiC9/nQ=;
	h=To:Subject:From:Date:From;
	b=WBGAD3Zm/O6I8QY/AsUgVgRa0yzxw47ig9hVhdoZQnSQXssb6wE3y7mxm3higFMjj
	 RXh44eHxrKU7wuil/9A1cYlnwmlgzEglmrUHT1kw0Bs2unvTbcPLkzQj7vknq0rtmy
	 Ynny7hqrUkYpAH9TYkjmh2fuT2/F+T2zGSY9+2x5759VRtwq13IuYmsmu/xcyql2a9
	 hLmTTv+rIvadEW7BqhZQ6SbnoU3wKVThVmnN62Q5m5muZWvh0WZCB9X5Ip19T+SRXM
	 EbMLQn42az3aJp8MgNrK/KYoKcN6JoTneEpqaxnperq9vFRiUr2meswNAN+ETQKnzu
	 wvDpXr10fhcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A034BC369D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535739364.11647.3565090016031638282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b8c57ca518f015e6f8b19f19ab9bfdf4a4e4866c2a1e9007ab952a7a19d661
Date: Tue, 22 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745357393
