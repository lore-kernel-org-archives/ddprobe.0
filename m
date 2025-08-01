Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7C83398A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754013594; cv=none; b=agUWvsNx02fr/aaF3fNnv2nq5UAmoOSV8fcPYH20yGSip+hCEVH1gxjnW2kyGYbyIZxdneIg4hcD+nailOYZtNT3+rdbQvNeHLn0WJqVqOlSmL5YtEP1e2A3PsvUa6lz1j4ULevZRDCStb/CdF4uHiZ9hlV/2QqO/UwNciIaMCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754013594; c=relaxed/simple;
	bh=uRP3Ds6FWzLKYLpdJJY0NyghAbRrPmGBjZtBHv9zYjw=;
	h=To:Subject:From:Message-Id:Date; b=G6k7ggZhs38uDB5PzDYcsbuU8XR3cq3U2Mh/xX71qzGdL9NCbSfpPGjW/s+Dh43DH8g/Ytzgd7zmbUmXm39t0GqY2LdiHzaEnkDfrkx0NhAjrBPo5GQ8xIEKPPQC7hM3fFPDBWUAzww10TRm+XXzZ+tp0AyM/trgx2LcpuUj/iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxF2a9Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxF2a9Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65F9C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754013593;
	bh=uRP3Ds6FWzLKYLpdJJY0NyghAbRrPmGBjZtBHv9zYjw=;
	h=To:Subject:From:Date:From;
	b=MxF2a9NdD+i7sqkjAJcM2KnoNRJrxUUo7t94sNwzqDxhU3DPOPR18XZYP2rBwZTOx
	 dQyt6ozyBlB+ktUbG/ZrLWRLL/xGjhwYuR2Rafp0OIILqLRHn3t/7RIPhlJWmvMgO8
	 0TaSYC0cmEO0Xl3s1AkA4BKC6fYcPdavbDLk1imuEDXq0HWsyEmqtnYVXNYSTL4fVq
	 qjk1ZP06t9UPXhVAl0YORgb9C8giENktvHzCN3fEaOfSRfZbU+huDhHBhvze0xFrQ4
	 +88CidgsXqzkKgNGzrcCmeGeLpDEHbtUo1nZdgUsYrQDQcDvS7uqnFKvrKFEsuh6nQ
	 SJD63AiTaZp4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F153C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401359357.2570.18055505549281603777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335ec4b1124dbd4a3e7c4876a558f9f3e534c0d88e655cc1651c048e1726014d
Date: Fri, 01 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754013593
