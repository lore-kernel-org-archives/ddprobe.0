Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3DA2080C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764357774; cv=none; b=hv+uYEX1GSwfyi5ZQmgiaKzbrR0I3nob8Y0zIsNwy6JnFdDZSZfVsw2v2QNf/Vs9scpUgbsw3qUUpuq0p7vg32dyjEvx0Z8hN5i1zzdby8EIfu9S+bk8W4x58yGQ7mFdi64pYqHlrriwUp5dPoXZH/d+djXOYqqIe3+OpjJf6xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764357774; c=relaxed/simple;
	bh=29q+yx95aBa5iypdcZXQGnPFPj6JlpqVM0aUOYrFE/g=;
	h=To:Subject:From:Message-Id:Date; b=ajfSR/JhyMT29tgJ/46vk5W7KJKfsNpuI6YmLN8PGg7K2VbWtev9VPJUEX+veg5ccW18aa2QS+zcxDlpRaOczATCrEIrKK6DfTCT/AAZpdk8fZYALKal6kQeYMcqNbljHXoSPQ8/Hrxbe/Lc+/BeXVgl1ZGtb3tximuk7Y6v4cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iag6fCPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iag6fCPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9310C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764357773;
	bh=29q+yx95aBa5iypdcZXQGnPFPj6JlpqVM0aUOYrFE/g=;
	h=To:Subject:From:Date:From;
	b=Iag6fCPKl+y8s2GHDVoNh30xrKovDEt/Gl41HR3300gmUWreBWuH4ibwifmS/cBAw
	 tK0aq9Lx5euePuzcSxyLb9OqCUeVaFN/j7WqJVVAlfr/cZdoUN6iZUaFVQahjhreaY
	 41P+PFeyE4S7sQzBOm8FK3nB4D18yeYBtTDvlAvtAJIb3kNX3KmpJ5XOsXMCuGGRqT
	 kjHTH7CeEVAKHXj+RYlDq3Dg0h3N1ct7VN99FQH1pYLeJLDHo78XkyMoQ1EylokJbT
	 9FRPNRZRP4EG+hNu0qK2CIOQriOX9H7wzFgYi+eKUDV3KKQodonhCivv1+md4KlYSi
	 1elEkQct9C1wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D32D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435777359.3632.9483917815111481453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a0087d8348a93a45c2c8e2ea124913ac0cdab0ac8cd02bbaac7656e0ae909b1
Date: Fri, 28 Nov 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764357773
