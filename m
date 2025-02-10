Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B53C1B85D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739175954; cv=none; b=RJnR55rPPI6tBgvYshhYN7TAD2yRwJRg7wwgZDvd+0zXebOMiPFswfq/134x/XAxqj/OH+J+fZvAwxCowxlV4TcFYi4CczYCgy69qmiKDxsnqB5ViuVRk8+EW9CuKLwbzwQ2CR3KyXtwikGGxzd0aUfPdszA/8I/XO8DrMecA7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739175954; c=relaxed/simple;
	bh=BaZumDO790wp0TjAbRdgi7IdUNfPkhSBEmw9EF/JUok=;
	h=To:Subject:From:Message-Id:Date; b=P78tD7g4b5QWm5rZ/FHqE/DPhZ0H4XtmkPTyHE3ipfm8Yr/tqFayxvB/sm+LAKT+m+kWwRrquPr62Ir7bEaLhj2bFuRPbgzGelpAe/8uxJeyHOgbsArikjIdX/C7BAEqDuqmUShcP7ckaunt2Vzt0i9mWqa/mC7Y1ETm9hdJn0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofHQ9ruL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofHQ9ruL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C28C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739175953;
	bh=BaZumDO790wp0TjAbRdgi7IdUNfPkhSBEmw9EF/JUok=;
	h=To:Subject:From:Date:From;
	b=ofHQ9ruLacbkbuF9uafvrbOuAdIKx6GhfLIpF3zdwggIvkBgWGd9MCvlCcS5tjXHC
	 72ixFX/YT6P2mnkOAD4QrFLGgw/ZudBCzPVIdtHchpRbIU2Xh/EpWb8sprjvoV1ylN
	 cSIeK1i9uTkfjinkdJQtIvqXB7ppnWbHtCXJWiezArCaRbDtE3xY5meBCLOq6LJX1d
	 PD8H2QnQFalJ2oEWWy0HKIED9N2UTsev2rJ1weDKX7z79BQrxvVZ2iRJ4WjZly9Mg2
	 QiOZkwu1jgaOsTikPRo3ArNRATUDAItKE53q5wMufWpdNAXa0tAhHVaA8+PP47yQ4Y
	 NKoUvVOGU8hcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5435C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173917595362.8914.15648222464131643187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deecdcc9eb84406997db466ab98878e673c45f0ab26bf4d50e1fa6e0f4933d13
Date: Mon, 10 Feb 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739175953
