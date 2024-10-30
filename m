Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280B64437
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730250954; cv=none; b=WVqXdAeKGAncIogVpG7QGxtN6KSMo/xAmBM0RuU2DUe5GeZIre23Li9NOUPxUhwVK1FWpaZ5mA0yl++xWUfz5zumakiB8eOtVzfScfFa9eAgq6OYFxqeQmKJcsPW6TGEBi1wYsCKJ67biTQ1Xw7tIdHX7OSCPy3dveWyozQhYnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730250954; c=relaxed/simple;
	bh=fJ9BS5Oo4y3FE2TwtnEA56st7b2eDjck0aA8IDaH4t4=;
	h=To:Subject:From:Message-Id:Date; b=GFNR47yZXzu2d2D/OQIxkIHZWY9ARYhq3OTzgTOYFE/iV5aXD+G9m1Sn0WreAlSY+g+JWExeeWGRbrrzfZIpvafut+meTtvr5duk2edgn09NjX2Nmpa7Vgx00AKvPwQmyTMxnK2Xgt/N+yoqj/qUgVhUUU6MUcdT7UW4GwShhUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhzu+xEZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhzu+xEZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA51C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730250953;
	bh=fJ9BS5Oo4y3FE2TwtnEA56st7b2eDjck0aA8IDaH4t4=;
	h=To:Subject:From:Date:From;
	b=rhzu+xEZsV0Lo4Kt76TX9uFQTOVnsqB+GSFoSpkUuqMHSFh0/PhsN3Bqc2Vv4ZNL2
	 zyumhF35uT7S4LlgC/DTaZxzNHRWnn3dxFlN/2tKbd0VjjkKzA4vKtxXaomIZbyZqb
	 cXKdSDnFzLRmz92dPA5jPGnfEVH7fkpy+XQu11354I7GVc0Q6IGFtDHGCaXlABD2Pq
	 ZPrscxNvyxUAqSePnb28IdyNcCEph/nw54X2eB1fU9TalLdg6Jgz+uS2A7rQvhhSSN
	 uKXG25uSufYpcZVoZR2llcs1HAz55p0JwiOR8GhbmiIPiRgC+OMODVwdlrMyM1DHPt
	 3RRaKQPPyX0ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99049D7494F
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173025095361.26666.5590947850814335282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e30883bb243bacc082163af05d7705299e59cbe127fe6adf40f33406315a7c
Date: Wed, 30 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730250953
