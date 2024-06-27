Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3BC19ADB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719513863; cv=none; b=El/BX623TMCflG94Jwx1DS+XCBJ+fyAzxxXgQPDbWpK/13iWtl4+pIbR0JV15XIDPKIKf4H7Zt8NSo5OwA4lym6UxYtD2fWQDfOG/OqSQyYuinDjopO7pN7iAv+ToAqzwhbIG/NMoEqWZsE7vqDmvtYhejMPP57kPTmnHmoEIQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719513863; c=relaxed/simple;
	bh=pi8+isxaSwPgOX1DhYkcB8DBQa8IoDcfbdLj6AHh2oE=;
	h=To:Subject:From:Message-Id:Date; b=Gk6S51nAGCEsyPE5jypGzv488d3e5/u0gC7VAZVnvGCO3ErLpWV3HfiPHVv7TLzvx4Xu29R/Wh95683R88gTjv23etVO2+2jYcH6yDHrUoXgFna+zgs6vpj+TA/o1wAghZfIDem2XXW6TXu3VUh9u2zVuQ3hUZW1qzzBUxC7my0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTKLhAw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTKLhAw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF20AC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719513863;
	bh=pi8+isxaSwPgOX1DhYkcB8DBQa8IoDcfbdLj6AHh2oE=;
	h=To:Subject:From:Date:From;
	b=PTKLhAw5j9Ms9TJW1logWh78CdGYrZLO+p6CPtzudLv2o07YptBD7e7TJaj96JFNv
	 Ihm7GI2Rq+unPIttr/G/+Jd80mdK3sVqjTXqFiBGIL50PO6nD9nwVtcbm1V05ucORr
	 T8+7B40WNg4JdwiM2wxdp+20eXdxq1kqLo3CMGlkA+NDe5K6eQlPAz2XEpvgSHeXVu
	 htfytgZr2srm2eUrTCVglDfh3ReTvjp7m3uf0DKAZdaMqNH9RL8kZCRgQhD6PvFw1e
	 ZbT6ynPkNM0Hk/EUv0fsnbwViTMpBh66WysN6gf7JK2WXNzKKIJc52fmXXLZT71nsS
	 n53EcaP/vBOUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7B4C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951386281.31822.7522453339941716056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f27fdcbf4fe88600cf4193110f1df035db80f852b14646ff3e093b0965a742
Date: Thu, 27 Jun 2024 18:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719513862
