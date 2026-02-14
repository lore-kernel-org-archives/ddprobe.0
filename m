Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB1C13AA2F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771083894; cv=none; b=uY+DM2br+baex6y38ZUXURzI694X2e41UwHkkYbbKNwzOxqO0M9nJ00X80YmoDfv4DeTHmsSAWD7FDE3yS6IhYtct9+YHbiUw6b2mGsG7Xs5pGAVsGFbwvmg/pntkOepOez2W3p11WHVKDMhEMqg3rz16httAcdnmu8udW7MMgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771083894; c=relaxed/simple;
	bh=RoPiNMrqZuQ5tjcNywHufi2mnSBB4cPgBkP87PX92n0=;
	h=To:Subject:From:Message-Id:Date; b=EkSKwvLK3gxhVe3qtTLCb+fnJUc/B2OTARHKRnuOYV/TeoCBHvTxdAXh29hzXH8hwVYGdhnX/mtlYQuq/fQXK/7ImB53gTYb1TXBCnN46gV3+XnARnhgNfwclCzlSWvUVHAZ02UqOAIhpm6PR0owHhNOQ5jcHn463S2Kz2xEqpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAzupPTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAzupPTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFEEC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771083893;
	bh=RoPiNMrqZuQ5tjcNywHufi2mnSBB4cPgBkP87PX92n0=;
	h=To:Subject:From:Date:From;
	b=aAzupPTpF3pfpCWQCL661KFmovucyrPkXJkYfFnTfS+aaE6GBTk5fsYA8TRwZPC21
	 AiHuyU5EVc7K+wbBSvvoDcmTZLroA/9PIbgG6FGLngetYn/smwkY12dXFffUgDkOdd
	 mFwwv0/Lcv6Ztc+9BQt+ad4m0WBpfoPvynvnKmL83r1uNgH3BDUJthJTagxiLFq8RU
	 JYlfz/gjSqG5dyjm8+MpdO7aL0fqm8DyDojfJCSgA+a81Dl/Rj//6/nv02oHqmkkKN
	 HL+Z9U850eeA2Hm09pLCLiRI91lxgHXq/51ZeFCKLLx5MHow04fujPrz8Rd5a6vUCL
	 V5iE5xiy172bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94033EF5845
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108389359.29153.11997770099431098773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd97c9364994f3c12c13ef90c6fd5dfbd873d8e60d3b6f6ca125cdc81b1e22c
Date: Sat, 14 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771083893
