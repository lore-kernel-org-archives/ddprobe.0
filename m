Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1475023D7FC
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766607234; cv=none; b=rbD3nlTCKp9YKPnPv/jw6gEzlmm89kaCNw7USN3lfdFkKC50lYdkXzxIIY1r0Lzh7K/8dkyCLpBiXS4dTIMSly9gzh8LnR8/qw8H7lAkwrqY5UuD0mg/pdvvTS46M/AettOnBvcuuyL6PpZU6xOYfzhF2gh6QxwxA4yLFIpvqRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766607234; c=relaxed/simple;
	bh=bKz/rWk5n1jmrhaojP4dzhT//gqdTP48JAiG6EmAfgo=;
	h=To:Subject:From:Message-Id:Date; b=hVZU2icSU2YuPpw25v4NNp+UMdqCNnjxWA44pyn/kjSf2tdn4Frb3gdQhUFq0MOW7m9SsM3D0FzShOhXW9/UtysgK7Z0RLvskO46w8xtm6iSg8wj++kEIidJTvVGtOLO8mVGwsCJg4jNY/l5Y2t/R6adeIzk7CVmESb6VNgtQlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AqGM0HIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AqGM0HIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D896C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766607233;
	bh=bKz/rWk5n1jmrhaojP4dzhT//gqdTP48JAiG6EmAfgo=;
	h=To:Subject:From:Date:From;
	b=AqGM0HIRtYRCo84wYHWmerixLyVLyZXIunxYEuCrHw2zVk/0AP5VoRKX9S6ZESehZ
	 50Ro3jrI1shlxlBAoRaXFj9HGAQ3pyGn7tpq8eZMihfdCoN6KrYI2kaFqzmjCZaTdZ
	 6JwlLSzhFPqGj9EhWKYVvefAqQgBlErKfHg2U41TMKhmaOOlSCy5ZVmc4Q2sdDxQ6m
	 yj8S7nkdFdHc8txYl7/qSf65NvI6t9Ab+qo5q9Do6GFL2+xUFY4fSmYBRyBzse/upd
	 LKci+j5PSR99kDe1Xp6wVUnL2z9HYAIX2nBeBLWl40SQDZzQNBbaKBOJC0SIg7o3vl
	 XInT31n0rq6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F599E7848F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660723358.12363.15438047228984728228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bfd367e75e5e205dfe5ecaff4b5e495ebd2f456bc5b3eaf6838e58761fe148
Date: Wed, 24 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766607233
