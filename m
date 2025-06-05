Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3978D2C3242
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749117594; cv=none; b=moaZXwDJv95Mqw+dRFFg4/ZDntyl8ydell5BZxrPzDHEMjfIcVhczpFV0qLJ+yUsYkul4paXSzibRHTiLaRJjqgu5Ug/m7qfIpSx3fezZ+HnPzaifCN/Qlmu45yjQp7LQ5L9eqsQVv/+ojui1musleMvefBny6MbiD1j0W25QuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749117594; c=relaxed/simple;
	bh=/flgZqzx4g38GU6z9jgQZpa/NEVnBN6zBmPT3w/rMwc=;
	h=To:Subject:From:Message-Id:Date; b=HbrNYwz9A2Beds1afOoLDHTQIXxPiBxwhwqANju/qLzv3vsEphyUoOkBYzVsPeEGcnZPedp67blwg6gnwBxyNKe6lsebuPv9+8OSDcLzh0hCO2LR7WmdXPdd4Nm3QVzs9ZeNnN9LW0FQI5UioQnnyGSiWmi1qj0Xr1V0FCHZtBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF6+XkHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF6+XkHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3252C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749117593;
	bh=/flgZqzx4g38GU6z9jgQZpa/NEVnBN6zBmPT3w/rMwc=;
	h=To:Subject:From:Date:From;
	b=oF6+XkHEFQmHZuooGkqeL7e8DJ9pKoGDsdWBBJzMuTToR2XA2FJ1CvzCldZwxCCkz
	 SJtaVTRIwOLv87/dxCPqtoLLPnLAIVo68aLcg//+1UPdBlSCr0igQ8gTwzACmdfSWj
	 j/hoGRkpFtkpYlWeaBdX5RGcEGBaw4biaFd6/jxHq7a8bi2IleSiodDpIT0l9tXitU
	 5Dituc0GZe1M8Tc7Eqw1wheXpwiKQbwe99B2plFro47E93NmKzZipEOybPmYrD9MqY
	 VpqUANByF12WlmNKtxcvn74E0+kJHEyi2NP0giy42moVMU41E9K07DGrq+V3kYrxVa
	 pw0bRRnp6FUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78FC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911759357.23878.14504935424759367357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c0ed0052f40cf3aefa6dea2f490987f572055c01ed63daf6d53a9953dd4358
Date: Thu, 05 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749117593
