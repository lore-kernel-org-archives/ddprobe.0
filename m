Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B4018E1A
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748791194; cv=none; b=uVslxUSmJPTwHPr1JuPXpuzjt/HppEyakBa7a91EtE6/qAJmNCCx/tugpo6CgR9rT5z7TIaWR/ZzxeSoZVkehBt26pM6k6bpPF0H45rSdgwgh1I3QBJFs0ya5s5g74+WHwd0q/t1bipB12vmqxsgZKSrMBI9euHgVlWuCYM2MU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748791194; c=relaxed/simple;
	bh=hWyUrYgKy+zBYMwdee/IXr6L/7lzQppD/o1SqAh2HsU=;
	h=To:Subject:From:Message-Id:Date; b=Zl98dU4+JJ4Ye6c0FQ/iq1v+8V/yysqF32G6aW6Ky8NVfpYjQKZvDm0mAFBtGQ/YSVEjmv8HKP00SkHQfRNPXjxe7dvKnJXihbzj+7vSO4w6FxfwfEVXjtpXG83vE92WoeVPhxAobYBKimYqDNXhydGKqtMpzP1Ixq0TZoHPE4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btJysuyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btJysuyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC768C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748791193;
	bh=hWyUrYgKy+zBYMwdee/IXr6L/7lzQppD/o1SqAh2HsU=;
	h=To:Subject:From:Date:From;
	b=btJysuygxA5PrTS7puzQVgGcwWyfJaPLOgR40+Z3eaM7lA9pKp2DqG1Psjnaycs60
	 zk0AFbGODrfmrZptHmkaZB9XYVea0klfOVAhEjgU+y6MrFE0ikdMOEbjrAssDQFmOJ
	 GXGfzsyJMhKHB7h/pU4LAhL1Fy2WobrWe0PLHc4HAJIOPSvvaAe3Fx7R4XIRPbJ+Cn
	 gOuYXy/UNdqIJp0MJ9HBzQuiMcOA1XJkkGTDwoGe9iwWq6W6+QyHq3h5aCsqJolxJC
	 1qgd3PvbbPB0EZHe/GWej09U0aclW1B5Pl0NSaRhRhHqy/Khs/UtbO+F5m6JmgJm93
	 qYVC0Da7RMjTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95943C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174879119358.21793.15942346532336381909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9c63d1e55f8ebd87d94c800d67fb1ad0b5c3747732636839806eff6d6b63e8
Date: Sun, 01 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748791193
