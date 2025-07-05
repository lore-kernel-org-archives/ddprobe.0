Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171117A2E3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751734194; cv=none; b=Ce8+2ur7EveueiYbtmaXntHV5pY8XFP0wlbUuy8A5BWl3OY2ozRrTTBLfQzoxb+DTDqSM/oS5bvlhd8i+iyJXQA8/kmyS8P9bJ0fIKQ1OfMx1b9KsRBGG6AoD3v63ETYAYFniRQ3js6j5/bELT/WccuRsxYmSzicGpTvU2hhmbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751734194; c=relaxed/simple;
	bh=jI4RBG4ZUdTl95VOV8N9u6zTnKwJgIZ1MSw8WpBTRwU=;
	h=To:Subject:From:Message-Id:Date; b=Mb3V9f1NecOojHxbUIEXAuNZu+i5wUFJRtLty12be+4+uUZJhYRle+4Qz26NIMLgt/TFAGtEYyNGK0yBK38vyQP/RR3jgcdINVJwdqG137Nmlp/V3AzdDFWEE1MrsBzOIHN8fqWy1H0wVQ850QCqRGijOsQSe3ukJQ3uDCboaTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyAqS1Xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyAqS1Xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4875C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751734193;
	bh=jI4RBG4ZUdTl95VOV8N9u6zTnKwJgIZ1MSw8WpBTRwU=;
	h=To:Subject:From:Date:From;
	b=nyAqS1XxkZhuRMoN9ov4PSlhA00NnKhivrCghJM1oR+kZAPkK6+1dKhVJOcxRCrDl
	 9dBG2z/iG+mKtWwi8zRuqn8Wr9yCwnUr0WGZrYm5o/ThRFTPGhZ+GYy9cSjVec31p5
	 fab7OTud4FKlTbiLmc7XjhT1g346PnUuiAC600BbMGK8Mum2dIteo8KYeUlw+6qj2K
	 VElD7WWxlX7df08NtIRMqM/Nve91WkMWnCBslK3s09q7dN9Z58Wu2DtFy4cAdebw/F
	 HWDNqno4Q695R8DPzjIAGZXxFT/hNzfNszkf/3MyRILQCkemxIV0cyAm4ARwUbojsB
	 njSR3E090DBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93284C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173419357.2548.6036149506776842807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eea822d99d881bbbaca08fd2f4d81556e9061a33b9a0b2f3d0d7582e9ba1c4d
Date: Sat, 05 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751734193
