Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B29A302CA4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755695395; cv=none; b=Uk5jhTzNd3geNq5xfremcr4ppquMyKfzgUJIMl541U/ZFaE1ORmgUctGFhPsZ5F02BTklovYpKis91gxOZwsGCqgi3Kcl5fhrXtJcpsBVFhQAKvFppnPMVV56Iwyn1f7/uZ98aKjdKCcOcBNtPpuxXbeTgDIGLJNfzhX8ReUHTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755695395; c=relaxed/simple;
	bh=Uej0oyXapGd4t3WGZR8KRKuRp4Umby9CLqv1ClC6pSI=;
	h=To:Subject:From:Message-Id:Date; b=Mszqp6qQLoYZzJFMSHFTqi1CjobmCN0984G4HZ+wqCuMf4jmGo6n1c9OGcTsGVaktmsz4a3QjXkTtAjgVZjmzWd9Q3mHNSiYa8LhuxrX4XL/Ps1sBsitVCOlu8BT3+lWs9UlaMa61ds0OMu68rdXI4kp+4kRh07LV0PIynOgGW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZhQiKM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZhQiKM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEDEC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755695393;
	bh=Uej0oyXapGd4t3WGZR8KRKuRp4Umby9CLqv1ClC6pSI=;
	h=To:Subject:From:Date:From;
	b=YZhQiKM6RrQHrTS9DddOn/636u1rriFu2Bh/jyAeW3DGWmKq5Eqpd6aoAwZo8V2Hi
	 c5f50a73tPbUSABF4cC+8tYG0eriu0U2lF5mJ+W9npUCzMO5m+80dc5Grp5f92liZa
	 xTyoEpanD8ByXm4M1sb4s8Ou9dRsa4k56RRVb13Ap5H/mDxFd1fef9SFaC/T2DHj/w
	 rtcDIztI/y7NYd0oeZTiu/Y3XN+uYIHkPC8XeSG6z9E6TDvDZv0jcysNy1TqkUOBKq
	 yaHOhUukyCeC/3bU8Nd4Z5nuHo4j97CIjU0Upaug5leuQHtwc0f0UcOwctBSH63x10
	 uvq2jEmdkFdhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF2CCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569539357.10024.18212755108934189073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22d77393b54c2398b93e70499335c47e33a17ac0f5c505af45570900e795e55
Date: Wed, 20 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755695393
