Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE5C4502A
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765580574; cv=none; b=XuKvmlu2xd9QX7pR5mad94ilQx232fEGhQ917cOEeTDC3bPV2+I1hUkG2ZqVJZN81YIv5QAoDdXKizIZmmDMFHKT9bQI/WPgbiFVEPuMT/75UF9Q/SdQ58f1Yu7IqZaUS5rYFBMbqsCs+nxmog7LQ0X1yxQ/QU6ktExle2WirYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765580574; c=relaxed/simple;
	bh=X6VI/dpUDTFaqHL/RIsEyIl5cSvZe5kYxeuJy3uhSKQ=;
	h=To:Subject:From:Message-Id:Date; b=XEtOMwb2maNVuQgDmhQulpjaqqDYDkzcZIg3C6xBjhaLutxmPUunLXcDgC9vlNF5oQqClOrUuIn70p5OpIwUbUgBSnMPiMAuA0mcOpnMmHjFNmasxD702CdR3QnjeJhWoH+HZLlHs3gld85+Rdd1ZbU3LXcnqr3nGpD7sE0X+Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjwsGv6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjwsGv6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765580573;
	bh=X6VI/dpUDTFaqHL/RIsEyIl5cSvZe5kYxeuJy3uhSKQ=;
	h=To:Subject:From:Date:From;
	b=TjwsGv6yusbcItQUp+7zJjr09qR8OHB9LikeYvGxs4dByAS6EY5cxXfi4GQWd5wsL
	 VxapkRBBOh+pX8B001SwXceSTPjSCzYqAqqjn/Bmhe0zvui/x9yh5lrliIYHH3uZyU
	 GzITOrHESf201hRu8b/0ySnKb1hPT3zu0pXLY7MCJ7a63Guh2pNs/pOvejFI629umA
	 VLgCcZym9fJrA5qVklJAlocsHOlDzCcS7kfjntb/G557QNrttzOVQ1Vugq+0mkqM6G
	 QL3CCSVyQYn2DwlRmuTPyK7om02C5ffGBuAt8d/FQO/CltdtO3VvsWaM3zjh3Pr9pp
	 a2zVFj2Bi8M2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9546CD59F51
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 23:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558057358.9629.18430157650341165999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4963a1837edda48187ae69d5fc89bb48f378933df1e82f2b503ac3a8ed1856b6
Date: Fri, 12 Dec 2025 23:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765580573
