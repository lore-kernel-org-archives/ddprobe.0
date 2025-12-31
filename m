Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8E31427A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767156234; cv=none; b=Hb7L/8ja6PMtiSxkZwcXAMkJbSgmVU4XbuUWGq+fnEb8Nnv61N4lzXovUsz47Ejyh/LosT7P1AZrBuqw+K6cV9gIzY2V2ERAFDXP/KCCjiUpHdaioqio/iS1yj4G/G6DWlDN8ka8FBQuzpwIv1rut/n7ZBzWR132h5A+Dyg6NrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767156234; c=relaxed/simple;
	bh=ggQTL2lhCBujWaGxShpLxNjjbwdqpdIHBqRVUfg/5/U=;
	h=To:Subject:From:Message-Id:Date; b=HMvhTtpOWXfXdTOE8KUjV/lEj7zqyT1YobO3VFrdavsXpLLtWQt/ko7+IAIXKzYM1eSQfk9zTk93P2vLj/0qk2T3LytgaI/4hXbtSLpyAM6eGsWS6/NnOWjR01op6mOFwOYybuLIzwEA0ziofW1lLCYmLxgOp4Qq6gcvaOwfalk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVn8LseX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVn8LseX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE6C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767156233;
	bh=ggQTL2lhCBujWaGxShpLxNjjbwdqpdIHBqRVUfg/5/U=;
	h=To:Subject:From:Date:From;
	b=HVn8LseXACtOBepuDjhGrebWdkXz/4gEnvFPuXdHnaLhkPBLAprWtT6Zbi91UOjBY
	 UUxW49o/ADvrlOimtfYEy8+lDKnqexB1p+xRHxyDKUJSqBaOZRyoqQfPaS4i0B5ySe
	 RwiSkIFhd5gCB83A44gd7Q8cOHYokRnUYsvSHMmIXFRbMjxpxbN0t7RfgpiufDxx/L
	 gTATuQP5tZ/c2smwQrhmRkY0cMO1dTfsSKdaOgllQpeqF1EW5/qnQ7jZzWc9rBlUNC
	 4XuBd4EjVp/IqRftVIHunRP+JVzMLzGfFZUpPHO0If4IGdawnSDCp3zQ/qF7cRQs0e
	 flDHFPyWmS/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94751EE57D3
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176715623357.3710.17666375342063305238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa7b0c96b18571181744e56ca1d5bfb00adc028aff0839b699eb02008167dd1
Date: Wed, 31 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767156233
