Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FAC1FB3
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756048194; cv=none; b=VUdZ9oCemxZsrMQfbn1CMfkqpXh/iB6Of+NX3WYW8AxA0FVmM1ls3Y5G7CeNe9cfszvrLOzkE3SKQoLVwq5chlCUNYFXkaFa2ArKATldH+6IYIfzWlcMQ09cD+AXzswiAXmgbaae5PYTACoaTs4lsLJQlqh/JvNxlS6HZz37tro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756048194; c=relaxed/simple;
	bh=urNtx7McY0JsrSrFTYp1yZw5VtvO9S6/J+YFK0m+xi4=;
	h=To:Subject:From:Message-Id:Date; b=u/lE87l4EfePvuKX29rsbrj+gGnLVnjOgCdk6dAQIDUZOwsvGi923xJ4E+39gBJixQrHVGVwNtT03TRZwCVYzD3GblykhZOBOwHzFcnmqWTSfpt4ri81pMPZTvxN5fsO3WTx9zc653sS2/kWEGPI1cjP880GfurEcP+Ur5g7NsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alC+8S+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alC+8S+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12FEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756048193;
	bh=urNtx7McY0JsrSrFTYp1yZw5VtvO9S6/J+YFK0m+xi4=;
	h=To:Subject:From:Date:From;
	b=alC+8S+IQsatC70qaKPqDIDbnLJRI9yf22OL1UBEUlcgmbJ+LHY14C/tpCJ73PtwU
	 kS6L15H8+X4KA30A37tCtes+oU6O5zQt2gdM1BmZWcMSNrou3DxCbRboGvp9QsNTcL
	 LFo96OZdt6aVEm4njVJ0mFq9pLvMlqUI9WCuoxaEUxhdKtVrKvC5LcA/DxOAddQDqg
	 XikB8JzjJmscHsN1svgKesXip43wrKG+5IrsrUSy59pz8HykSS82hUHt8VAFtxid9r
	 NJri+SlmBDUhesMLvI2sNg+fZV6YSxYih71+ShrRL38VOnaWbHnSqDkNQHZK+vDMD7
	 /+hIvWu24sV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F560CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604819358.17839.949700923880520025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a461f7fbdb9014bafe4c512cfd97b6728ae0abdeddb413271fd1e67f973f5c
Date: Sun, 24 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756048193
