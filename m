Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70AA20323
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723454753; cv=none; b=BSnBk35oywZpEKIsjhGY/uj9eB+fYtxe3iHLPOtfQMBbPnxDI7Ht2pP9igMHB8HNM9LdsLwsqh6CWWnMACx/86/k/55WBpw7dkU6zdh0TnRrGcDBDbRorMlMa4pUBuch1GS7Ivg0pXHDuneUF6oIS9Up3CC9fjBQ73YStErUaow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723454753; c=relaxed/simple;
	bh=DgAgRbcbQbyShwAbtc30mmGpa6rzg62U0pg2Jc1Ws2M=;
	h=To:Subject:From:Message-Id:Date; b=pTiCVurS/NJagePmOffwYZc5YBCe2KNjMca3lwvO6Wj5kDjkzamU1mxEC5wGPkMWTYvVR+lmy+WxLWgbT3bwb2sRxk399TiPlmbIeGYjVnsMPNR63AW7yxNd8dSgDhEYDy5nS742bAFd8nVaEW140/Nepx1AjIZnobUK8PwQMNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCvo7wMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCvo7wMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E80AC4AF0C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723454753;
	bh=DgAgRbcbQbyShwAbtc30mmGpa6rzg62U0pg2Jc1Ws2M=;
	h=To:Subject:From:Date:From;
	b=OCvo7wMxTzbJWIptSE6cjP1fqe6oLuK/KAOs5fc+jL4TjqPL7TJhq8/8h13d95MaJ
	 7XNKNEKw7XdAMcnGyc657omWdNDC09HaHjQ4YRPDDeANReSbdAkmJwxgNvetuJmVvc
	 eT6tWWM2qVKzbOCBcxqbil/854R1Bq2JXrUl8iqn3ZCfCQbkNxeUBz+GoMvDV3agFX
	 W+NLSo6fGYJRBVt6/3c/UeRacQNvYbmtXu8uKnZ1Z9fHh5hLOpYzQjIv2AFsB91iuF
	 0A+BjN0YteVjkvIFEcWSiJya2f6ZJlj5Itg1s5dXvxQZFRgXDKN8y3xbVw96eJiEFQ
	 X+P251X7a8yLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EBC52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172345475357.17080.6179406173914558101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83552ea84e6faabb54e9325f6b2a7bf4bbd5cbb6646e07ef53dfe9da92f8574
Date: Mon, 12 Aug 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723454753
