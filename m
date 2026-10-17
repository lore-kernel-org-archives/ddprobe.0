Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D5C3CDBAA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792261834; cv=none; b=jppZKdZ/S52GUeDKQbiYxGlagzZVBPOyasmNQ2akc/k5dojHbf6vkVhE/XhePv+K99tPGwMdIv+MvzkMMdc/9lBmlLaoaksoxYkaureGSyrP7+hTWKfP8qjWHavobCS0+piG4LKSGSAR6cuxFeYFW3el2n/iTl7oxUu2B4Q0J1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792261834; c=relaxed/simple;
	bh=okPCOwpmkt6h9un8BZupArjbvyQtqYecuxUGPd2LFfU=;
	h=To:Subject:From:Message-Id:Date; b=CbKcaA1t3wteQ8Ojly7AZu8AxVCUz4AnDZXCtf4IRtDS65TlQTQrAu6caR33xAb1v8TgNssQ4GoOWYtyBCf8nPPMLap+CLyTDPg9r9Xea/VHVF7p12QULkWeYMAZdqTFlXL+4/IqjWqOiT18FsPSYHS6m0n+aisSeNt03lRnzP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lfm1//uY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lfm1//uY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B0AC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792261833;
	bh=okPCOwpmkt6h9un8BZupArjbvyQtqYecuxUGPd2LFfU=;
	h=To:Subject:From:Date:From;
	b=Lfm1//uY8+ptLhc5uClMw9fnH4JhDQPr8GOwYKRQKeuapCHYSHJyTujCUZef5MDF8
	 X+m1kMAZ7YWvmr42YHZo8pOSvEaqvg64vW6F7hk7x/PnfpHHF6X7xW+uorUqkYH9bf
	 6ASGKl3lrH9ecGk34aBmACHrxUslYliOdyHza5r9WnFvmIbpkg6r9SLmNfhBITEq/P
	 f0bB76x+R3dqF3hsgASCmGq8L5nUOtzvfFfzK9rpSnyv1DbxIMLP3ZU3omcbIhaoNR
	 mSscsJBfEA6GcdoIeHc92HLHo8MifyRHUyEkap0KEBAo8iMewpQybGRi650ge+yEuu
	 siNDX9jxTUIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA4BDCCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226183373.9223.4068628773534494010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7282949b072a0b7bf46d74c6292909febd4dea8d27875193fdef4071fc3462e4
Date: Sat, 17 Oct 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792261833
