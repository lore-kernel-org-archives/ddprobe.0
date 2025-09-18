Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4A4244662
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758172195; cv=none; b=VBvQsww8FmsLQCrwXai1JTfCDyIOCvaLMoOzu/Rp7PV9ReDTIaxy4rhFxP5mkb964XDWeEdGtG6Xd3a8mI/r/7THg9sEoNFbX3Z1SMuexRWZKixkU6ok7XXZu4KMxH/HpT+WYeI+Pju++YaNKdgBxWOcL1YVW4MsJWZc0pBgf/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758172195; c=relaxed/simple;
	bh=tFRxa2ZtSvZMEn3OmYKAE021q4vkAwb60kH9HGqnu0E=;
	h=To:Subject:From:Message-Id:Date; b=YyyFm5D3VIbfICmr28N0WAdb+AjUEDLiH2KjGn7nWWE80Gj3FdLb3NV71b5fN9ab3cfWC1Y9LzQNd6fZnVWMl8WHxk20/ApTvzrmc9JSfLRxsuuLKslNBxkxp2YwOSKwwnVFYGcWLNrAMgK2vGRWZaQDzkYZMLxk31lFg7CJ4PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNoN5vdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNoN5vdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A885FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758172193;
	bh=tFRxa2ZtSvZMEn3OmYKAE021q4vkAwb60kH9HGqnu0E=;
	h=To:Subject:From:Date:From;
	b=hNoN5vdqXmg4DC07v4MRTx3/XHgjrfmkh6BJtWB7BJTNVaUHC8+7V3qmvAsDC80Yy
	 F8SzCk7aO0EXkuZjC6eNrHjQRNtxuyOU1bKOAHqLacX8b1vMdvLlRxYS5v/cKkYPOv
	 njr+DtkheeVBMYgIe3cx8pgTiN+nCxM3HKF9aTncDARzUagJjZriydtWwyzkpwjuy/
	 dZJnI3i5qXmmRxeyAK/u8mCAG9X2Cr49jnvwd0G3CEX4zhiNjsA09cY6wJm3fE7036
	 N9GfLaeodrLKVzCgP6Yd0IPeBE95/luaA+2dwP2n0kmtB+7DRXUEHaQ4BO33dSEe6p
	 xcun1pFG0f9tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A28CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817219360.31846.16697558157355757927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8a3f6e8cce441d4064f6ee132f4fddebffc339acbefbe2c405eaab2954a058
Date: Thu, 18 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758172193
