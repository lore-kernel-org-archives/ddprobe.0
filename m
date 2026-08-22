Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B2213A0E8B
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787391034; cv=none; b=mDqIbnJuWc88PWQ+GWnsZfzBT6+NaJUFbsn+r8o04VvpfrO6wNHz08wcLVqrMyKKMKTlxwzQqRcAv/J/spWGezlpLhjKn7OZPMHt063zWLRRgI9fPCq7QjPik6F4CtN4R5b5F8l1z09yBBQ3RekoDcrE4NzY68DwCOcXp3BaWuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787391034; c=relaxed/simple;
	bh=pod0UOQLio/AoXiPNxHWOu6FBDkoGePt/0nHjA5RALs=;
	h=To:Subject:From:Message-Id:Date; b=X8yW2auKcMtDMatu30sZ0SeKjxO1levTMrpVH/0/h64MkOgVZdY4masGn2uiL0JmN8uwabTcU7X+EigmM4lAuq6qV2KQZdByuEMdkQjale5yGdn4PflCmxkAA8yFEqHIiXjhjb7Ro+M+z/YtZSFrh6WAtqWZi86TQdECUi3RrWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kB6sO2b1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kB6sO2b1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F50C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787391033;
	bh=pod0UOQLio/AoXiPNxHWOu6FBDkoGePt/0nHjA5RALs=;
	h=To:Subject:From:Date:From;
	b=kB6sO2b13t07Vwh+MRyv5mtYePtAjfzF6gSXfgwBdwgJ+ZYG9B8HftKSEP6hwAB4R
	 Hb17WDNNmOGx/xeaD0s1Mera7wAbkAWW2AXwsWbCcPT8TGX+ZMSOMt+URFT9t9Iy7V
	 Bq6Ge3Xjt9vDfZswa5XNw5IOWwQATyjx9NVOH+CaEhsUpeyMjnFlpDhPj3nE4rwq7m
	 JCAkU8ltAXT3TbGyrx3GX04M+c1eKss9dYY/ZBr7Nj9vvANI0i45/EuvFZNntRSyd/
	 8x63+hmHVwokiOu/RpCWbHi0b3gSytTO771snWuCfXJIytfP24hAas/NyG2R+L4pgB
	 OwoK9H/bXQXwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0597C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178739103368.27558.4090941699800949404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c801787d1be8b6c24769fe135eb11de3a70a146c111f6b6bebc318f8f21c5756
Date: Sat, 22 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787391033
