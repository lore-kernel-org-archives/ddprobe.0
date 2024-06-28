Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D45E15253D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719567263; cv=none; b=OE5jceJfitmLq8yYo3Cx2/LaPmGuDPGQw+pIrj6d2lPxTmBOLIRuQdgK/OTTh4Y5XDombRkLifc8eTs976s6g0rEJA1azZR6WlYK0OcR4iUQAiqc+i2VEwdi+p1xnxWCVyece5aH72WWg9wJSBv06dhqX0ncnQnRlP5Wpe6foMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719567263; c=relaxed/simple;
	bh=GsWKoGpP/uYVpHYpRIElKKRW29mZyaKhMyZB+qgb2Fg=;
	h=To:Subject:From:Message-Id:Date; b=YWzYmO71sXwJ7tFzGgMQREnIebugKHUQgFBTcF0ahbWEBFBCHPH0p0EIMNoRONwxpPVlbe8109gjVIf72IbenQqqzWQf4gAGIvLpEzodMHy3YZiTZkuYGh8Sk8PoEx30sCeuIm22ivnCeXdAeu7uB/c+UUD445hw4KpLHFWfESI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhvinRR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhvinRR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17A4C32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719567262;
	bh=GsWKoGpP/uYVpHYpRIElKKRW29mZyaKhMyZB+qgb2Fg=;
	h=To:Subject:From:Date:From;
	b=mhvinRR7SIeJ40rRaQhCWQdQgTYdG+aohNHH1KsXHhOXEhk+f0yX+7cb438o1HchQ
	 CH/LWxQgwuwUII12nQ5Pa0Rksey8L8EyzJVmIi6S1VkniqphnyHMsZZQAP6rfpqN/Q
	 HRT2WRiSfkrtC+h3m+f8KtWvpNvOlO0wGtkWExAXOPBb6tJqMbYkdkHF4QURb6YofH
	 x3nkJ4OLUAOawH1l++BgJiwmUpKCHv4YNNXnOdvF5il2X25tpL0F9zJ0pxYZLB8U0Y
	 lfPiEdJFw2Px94y0xhHumXVaYRpzGFNuIlpWHoIiNKmp04emS73ugWsDKuWUCZ8dGg
	 PiGKJ0+pqgVzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04E7C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956726277.28771.15151382144639900749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4476a154b64520fdbc4d10d6740546ccbf8b2b099b36f6d80e09c8a0f1edb605
Date: Fri, 28 Jun 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719567262
