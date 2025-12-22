Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADC0327C1F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766443434; cv=none; b=HyrI8+5YWiePdyJB3nM5fT8gTwW/zlSFsPNnE1J5FRrIS5P3mprac/IpoxmjnbUoT7j5jpZ+GaNNqUHLcSOh3UEUotI0OBE15jakEmFnQqA87nezg9wtiUHSeFawg3Nz5sfa3Q1Tw5mpAju999+C9Rtd569pkTG/ScuSteY5x7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766443434; c=relaxed/simple;
	bh=dzIp5eJ2U3HN41rYl0RNGa0zgk22f128J4yikOBoDuk=;
	h=To:Subject:From:Message-Id:Date; b=r/LkxZVZKaBj2iZ7IGp2Pl2yIQ+YfjtJ0w7pVw3gm1c6Lq7nVdvRHMgHMv0kCyCif1H2lB3wNBfVr4FGa7zzyJLd5xICBQghpbzE3t7Git6bTppt4PLBWSLGoo30mUpDn2EoKhZCFWbyd3syYusMC7ReT8eRrB2sFW9b6IWOLOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLPv282r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLPv282r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766443433;
	bh=dzIp5eJ2U3HN41rYl0RNGa0zgk22f128J4yikOBoDuk=;
	h=To:Subject:From:Date:From;
	b=tLPv282rlhdcKGe1Jy1iMCFJPEoDDcP+WwbMNZ09Pduh2bTReSdyg1wbQaHI4sTYk
	 A9n2eSqDyxz19vEo1art3+9/PKSIsZcn2Pye5/KAXoOGLxvxcoue9QCm4BdEc7sEh9
	 gsv0k0PNzhqtj9Q14BGvex3BsqvwbM5zK9f5/7fEe8/oDLhfPbclCWQDvmAzJdJrUu
	 GNajkbqRvX1lvfCpKIBwvuaC1SL31duRCX4VJocxEBpxhnIPS7Oxuzm5unsYrP1QmQ
	 63GkZhlr007kHDuMbmLte/vq7a8KMSu+rWABAJwH4EnSkOuhwDePo6OpMY7/1iyl4V
	 eMQp/K0WtTPrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9FE6B25B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644343358.4067.2266180372638361707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5bc09edf569f126738564624d8386837e6661e499c5e502a107baffd340b8b
Date: Mon, 22 Dec 2025 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766443433
