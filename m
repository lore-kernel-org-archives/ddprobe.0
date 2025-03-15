Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6023E1C84A6
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742078994; cv=none; b=qnO4DOkYpO+e6+f8W6rAIjp7ayXOty1DrAxPn3JUWC6oQ5IclUtIK+8fPatL4W0pGls0cLtXyap/ghjDHw2qiUlFFdJ1S+BOJO3Dd/HME74VlHZTD87hGQG6CPE3/2iJ8VPASnVLkGq1gOr7S128onKWt/PfXYXaYJh9ereKD3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742078994; c=relaxed/simple;
	bh=SSGx6dlEavwRVrZivDuVvSburSKYXkxn0JiL1VPCgS0=;
	h=To:Subject:From:Message-Id:Date; b=RymbDtYARHfwwYKwTYFG4XRjhIw/PdTs7sONQ7tQ9fQdAkmXEBCxz9F4EL4mKUZqOW/xI4HXJzhUvBza82x1PzLGxsVL4N05ekFiW5niGLhrdTlMo2L+MN9Wds2mSGBTV/yo8RsdJ2fPlaRT/2BCn6JlZMGcCwMVjyyIDD22gm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZP9Hij5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZP9Hij5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D22C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742078993;
	bh=SSGx6dlEavwRVrZivDuVvSburSKYXkxn0JiL1VPCgS0=;
	h=To:Subject:From:Date:From;
	b=ZP9Hij5YcdzeFUkR2iN0Kw1B8ye1DP490bvzb7kZ/k2bOFdNz/0MF3HRHAqD4+Qlj
	 nW4bVO4RXq00yQsrk1CKJAQTXTvEQw4RgAn165VZcQM+PQMD6suy0N59QNucaC/Djs
	 TkFE6cogpcMHhsJE1mB/YnuN+WZeG+mC3x7DQsHEURVWsMaS/Tc4STyMIyKP5zT9fA
	 g3odMcMzJJsEFaIOA45icxg6wgOS6Tg0J++H+7kcrSsY2uXxXeuIlYx0QQlIZlkJJw
	 LZyt/RGvyoQO0xXL7jgG7kjPaVUl2P1ZWX2BJkxqaE9DMxfaIT5DxWGeb83Taxc4y4
	 qMb9aOdyfyxqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A07DBC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174207899360.20162.8399148656488896516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff72f3165e2c505ecc4b342754fe47a1ac8b718d2d29359906037b3bcfb40c9
Date: Sat, 15 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742078993
