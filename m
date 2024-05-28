Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C389168B1
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716864263; cv=none; b=OiZTi6At0J8AUgQJHx+fH10EgD0Gkp94encBRgz1MjuXtMyzH62tAr5PQVVzEnhMe/l/YTOs8WFjfmpz6KcAPDZPulNcrE+iIPqQvgbAp88FM3MhreVripEaDWaIqNEAaOO7Jlo7KOgj4gcl6n6Xzyze4LQq4rLDZXA2oDISgdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716864263; c=relaxed/simple;
	bh=yQ1K331Bvtx2sqZs7IYaoM6aLXxKM3ZcYBUv7MyvD1k=;
	h=To:Subject:From:Message-Id:Date; b=dDsHPuCHZIMlSq79JYO7HNc4iHjpiM4XipfDPr6NyqnTVVxqcDpMwAnMKmXGGHXV1PBOfP/lRVjKGmOCjgwWWNOTmu28jjnAnREvryRJH9GYnzk2WDq0Kbk+tZaCMHg2sqijAG7EvAmdiPsqHK8/kemmdFu769D1nRiL+OV5HUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pl2aIouQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pl2aIouQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFD7C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716864262;
	bh=yQ1K331Bvtx2sqZs7IYaoM6aLXxKM3ZcYBUv7MyvD1k=;
	h=To:Subject:From:Date:From;
	b=pl2aIouQZldqvX9EcfAjcRI6Pl6X06AouQB/5kE4P2RUHOIwQe5q1UiPwBByZY8AM
	 D7/Gi7AFQNjMJd0sOX5YlHTsqBVeaf+3/DFX+WKJ7HQQ9mYtdKcMQl3Xti7a6bO2ZR
	 ZWVrnlERHagY3OKP82Q4tAJipZXp6iPtTlLAOMHhr5yyJu8rzU7x9vvUSjo6hcvDov
	 ZF6IosQcbc285vcfawDQo5HVXUNxSU9Wc4jP5LjDYy4mg06PU557M7n4x9EB6LscX0
	 BVUulcamPfG/oe/4A8sEQ8UIO+GQrekraFfVR2XvsvE/etvdGmx1DgqNLirbaDKY2J
	 dYmIcviSSNhvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCED4C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686426276.9930.18272156914145574907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f888854f19a61bd417715068dab6f917b9bc8d907d8d4c0d493b674d991da6f
Date: Tue, 28 May 2024 02:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716864262
