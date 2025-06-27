Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FA71F09A5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751046594; cv=none; b=DmwI8JzAi4BASG8Zitu9LpYoG1dsX3FP0D6zeCKWDoGUBPvyCZh6KDe5qmBe7UzOQftyraeoEOIyvcy0KOAfWPFQ2q9+7B1RdaJpFb9BYTJQ+CSWPMKshKXFkIvPJLOO+VrJ1U6EerMtaiyxPp6I7pGFd0u2PAtnRcPY8vNR2gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751046594; c=relaxed/simple;
	bh=Ei1Jn+d6Hm1D0FJaLjvLC0cY59b8PhJwfz4x+H8gOec=;
	h=To:Subject:From:Message-Id:Date; b=Rl4C08wZEHH9AeA0SlY+FlM75q/k1Ey8jJ5XD+g+Gme/LxekBWUcL6Ew7xg27ry3g3WgR2XZDHmMG0zF2IRKusjZwBXnm0tkwNollWO6Cf9Utyp0Gc8wthoDofCEVnWy5m4S21qkN6njXrSVdroYF0zlEnwS1K7+UznKMYMwXog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFfxXGeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFfxXGeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1798C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751046593;
	bh=Ei1Jn+d6Hm1D0FJaLjvLC0cY59b8PhJwfz4x+H8gOec=;
	h=To:Subject:From:Date:From;
	b=aFfxXGeAyUJRzs24d2GJ3Pd3AJfQYN8WA7thMvXubC1pwZHfmBgsqGxoS/nwTzdWW
	 arQw8EDzVn4T5ib1tYq4MgrYuqJzdWV4wutbDBSqEpCLMO3xsouKf29uEWgtI7jLHI
	 HLQZSXJGjVJBUTP9X84f/GTs/5zhr74xfpdLmeFN9Y/ybfH5cxawDPbDQQzF0Kiu6s
	 oPGQ+4vTaZlDV79LMOqlWpC7LKjaY/pDa6wbZveEFzMQ+kqIp67h1poGD2/ruExKc9
	 6aA4ErQ+BGaDT7SgduJ00Dg4pU4nwluuYwvbp+ov2YBFR4IcwtsKPlvelFO91F2fmA
	 UO/JvBFWv90oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90215C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104659358.24389.17300520631939534645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879337c9513d9dbb2b5d15c6798a4483949fdb39236e1b6c7146ef598ea9cf5a
Date: Fri, 27 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751046593
