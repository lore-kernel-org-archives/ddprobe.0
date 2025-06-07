Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C9E1FF1B5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749338994; cv=none; b=LBW+n3l4xN6bPcjSq/Fbso/RpsZ8N0rRU2unIHsI+d6GhHGirubBACm7S4DdD502zHTuv6vLimLb37XCkdolsimwexwW4F5gMaWp3e1ZIXsTkWDWooKO5GJb2QCbuZT9xNGvNVM15t4Lqw0+S4R6KS8s6zrVeQcJ0TGdu+lByFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749338994; c=relaxed/simple;
	bh=8UkrE4wTtNWS4nIFkncLsU1sIOFXjNlhXVvx6sVpT2A=;
	h=To:Subject:From:Message-Id:Date; b=a5GHMNIJw2Oi9oB2X51nUgD24zjHZSCWxhgnKPU9xXqXpJIwPuKCg58T5OWLZ/DTaTzg7jkzbV8C9v8pEfLSJ5d0Hv/xHtobfqHEZHypSM9wZhIUhqeXUnQ6KB6TD9KquqKxl8nxTojEn6YYM+pGGRiYTqzNDyKIqMhIB3wuSAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roAzs2U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roAzs2U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B86C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749338993;
	bh=8UkrE4wTtNWS4nIFkncLsU1sIOFXjNlhXVvx6sVpT2A=;
	h=To:Subject:From:Date:From;
	b=roAzs2U1oVwjMRaxTAl7fphKs3XF7srW2s3myfgbfACHwJ9UmuWRmfCKoD9iLKs2w
	 886DlArGOznENAjVvMi7twCaFBZApzDk3fzSSekFFLfFDjsz4kBFqqkqxs/3xL/Pus
	 GRVYi9q007UO54/g2ldudClvJCZtxdVw5YAvL5o8/9vM3fjP2Wwd+uDKTra2jaSvyF
	 JmnzqCdeDdu49iKMjm4c1cbU0Fv54Se3q5PXYYFUFE/p/nj22Qs3kEdA9YzLH5msCy
	 jHui1grdw35xeq3IFmcbjSPkVkPfU7haVt0hGbwnIeG+SWKvkwiZPkPNSIcz4C38m0
	 Lmw5oyOTMvobA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E93FC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933899357.7397.4329415848720669670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b823aeef09fd48d59dfe703b4631d4ab67b8141c49bd7f60beb5de8b86f7d5b9
Date: Sat, 07 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749338993
