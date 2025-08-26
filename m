Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2783B1B6CE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756209594; cv=none; b=rWTRTlApHgOdLhfsaPo0a1XBckS1A8iMRvDfRkesATjSxXrucojv3a2zKYD0//MnorHcvlw6thmU2keAilM0iZ0P2XRaONmBgtwmaZc12iqhHN7FydRJyhWHwmvpIlaNiKXmNsIU9Fvn1sEXbR/x96rUWVEcCs1+jY+4Y8AsY4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756209594; c=relaxed/simple;
	bh=X9IzqpzjFE2TsPCd29syFWIh9ToX+hzY3bWLPbBbfAo=;
	h=To:Subject:From:Message-Id:Date; b=EKQFyVW9kZjSnIKcSFVgVj40CBcRJKS/FulUPdqBf+Qd+93MS5YBePpyVPlZhvc3cdre+63ELrLOMDcGXQjGSMWl5nPbAQxqRIks/4QY66/JvTEoI5xl9qgqWf/D/ndobMR7D6wHZZLTTIr05L0T5Xk3uwEmIRPSrHvUxlycKZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLAfGD8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLAfGD8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01D3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756209593;
	bh=X9IzqpzjFE2TsPCd29syFWIh9ToX+hzY3bWLPbBbfAo=;
	h=To:Subject:From:Date:From;
	b=pLAfGD8xoMMN5svBRnmbjpmv41wIuWtf2RLfJpMHDddJf1s+jvSbnG5mpvp94N0cu
	 qmc92d1K4aBoSPuYTg2Gn4ABMSmO8M1dGUKsmAnNnP7bnT9j4EzQOTTxsbPNyVA321
	 9Ydks0KyRZhaTFw2s4lZHoosgYTtaNb6LhBbdIkXpeoR+PrCxqQjt606I/ajjL3Qyj
	 cUFw0hx/bovIMz0vhhBHtaPOqzQV9SHuxSfwLzZLB7NehA2Lpc+EJB4aKg/PJmmG7j
	 fFHNhDVogjvP0M3OBpPbqxXUBoqtkT8BxqnimfMOMWPEzHTkZWDFbZb6Q2cdNGTys/
	 WH7y6bbAea6Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F998CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620959357.14303.16882907503240290941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f026a3583eb4ab39a18afce3402ab860098f67178f317111e8f9b74ed88fef
Date: Tue, 26 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756209593
