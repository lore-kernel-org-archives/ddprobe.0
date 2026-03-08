Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EB163CB
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773002094; cv=none; b=G4N2Ji/f5I5DCuijDjJaTl6Z9OlKI0X2DwP9AQ0TU5v7J89j0co8dnuwF1QI8vWNvCIGLE3mXoW8jGBDUWL101jETaegMgkkfwHv6tyXTJWkTddrzcv5cD0oGdzdjd6EKdHEEX8fwQT3wdfi4GilV4uThujiuQwkc18fYCPpNHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773002094; c=relaxed/simple;
	bh=tRR0UXewNf4HUr9hKxntuHN8wki7SwnzRDt4MVXfoR0=;
	h=To:Subject:From:Message-Id:Date; b=CsgXJk5KdMTXY3fo2UocDADgyp8P+fS3Q5tJick4KfIDl2KswYKkdCVgacwztyoDIDiIJeMP1F2TdMLtn4YQJJBDeCcacPghkU663Un4S2mr5Y47aB0gCKyWT9FKhs6wa4BzVp8JmiojNSRzCsCfMNZDp4UMtQxAsnXvghQuJN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBPlna5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBPlna5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7795C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773002093;
	bh=tRR0UXewNf4HUr9hKxntuHN8wki7SwnzRDt4MVXfoR0=;
	h=To:Subject:From:Date:From;
	b=mBPlna5Of0XbfkzZG3kurX1AVASn9HWfsLLRZmcRVLwwVNXUOZa7DBblC6AhDd0UE
	 S/zo+Rg58Jfivba4mzH8HP2a/Xcwna26AnMVr3V4T7A66i23q7hhbtDmDfX+ePoJ1c
	 vdP9EggJvaKqcd1OgwOC+Xq2ZwvMAhu4/Y63NhgSd+MXDQoV6LB6n4UNR/nWA8Ydee
	 y1HbY4CjvJSDAHS4z9mYG308G0/Ccq5kLzGeHxzBLm0pUIoutvhVc1vNfdnio1AxXw
	 FrrrOoqdyPugK1fR58VrxSzzD9GhkaY1qOgAcEbeAFmkoCN5VP6LNFnrkiC1SQyQds
	 9n+jIQI+zedLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23E3EA8541
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300209363.14751.9060902118007466687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5275897a0c2307b4fadea2a878dcc0ff9a10f9e57ead4bcc918d9d65213ebac
Date: Sun, 08 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773002093
