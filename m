Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA952EE617
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761115794; cv=none; b=OVKNPiKV6nvPRbm9cP9OUsRxKLtYElI2EpW9MjHFpEfG4wEEW2o4YmefxcwFMmvuloEmAyMMHyj+2OvHehruLqd0/Fv4QgNaG+uuDeH10n5291A/P5RI6BOPMxap5KkkLnL2ST9O9/7aiAwTKREjBXv+sHkZYkU5gFuUq7BY/H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761115794; c=relaxed/simple;
	bh=SHNRjZK3y/WHaTWp+HNtdxVR8B6/bsqJuvGgHfHpCnw=;
	h=To:Subject:From:Message-Id:Date; b=UIdK2lniKvbUiBW+/MAyzwod1PlwkZGly7JukM+mMjyGu2JnA/19eIyu8ZL8Vb3RXwF0VwpCzPzRD5SbRCKr0hutmVr0YS3skGiL+xtIwOsamaIXPCKhh9wmZ2xFKr++zEyRV1NIpBl2Ws9pqcZNk/yT3pMN0GSsReDt8t1MxY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBNnbVoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBNnbVoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6EBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761115793;
	bh=SHNRjZK3y/WHaTWp+HNtdxVR8B6/bsqJuvGgHfHpCnw=;
	h=To:Subject:From:Date:From;
	b=EBNnbVoGFUhfNwrMQuPUm5BqhFChTg62GE8/iWnelQRAVr5Va7T6y3uYoHR6C9koB
	 QFUiLJBmuskBnMuii336O/TLxF2lcaMNY0FX/axzXPVosKmU/YMT0wS9iZAqlvGovv
	 Vc7Zvh2hMYt13QQw9N+yNYWlvMct6FsO2BGXUr9k7hfRBlGlFj2a/WI7glb76UPAxh
	 2C7sLxsqplDm2vGFn8BTHo4gYyFDer5W3GwLrkMvjKWNd4qLCSaR0NuqTKhvUzA+Y7
	 eW4MheNUM2Cn6I1cloHpl9WX0WxbpJAad4rrCT1wHdZ3vi9HV9hFy7URRMKLm+EUfQ
	 2PusnWOZKcRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC4CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111579357.2471.9682245670059271033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65b0353591cffb9c56f5a54fd7d28feecf803810d0a87c1eaa4f9f52961b735
Date: Wed, 22 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761115793
