Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8F82701AF
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746784195; cv=none; b=N2gKe/KYWJzRSbk7e4+99d8xyXhSbtZYe8XTT4blv9EDcKF9atPfqCg6DNpi15ODQmNrO3dOgvrepUieUu/HJ29OGqzrnKmnyFp3K2ehB6c/Ipq2qWEp3kHXkPeAscGWewvrUCTjReXV0sRAPFHfbMLJHhynMEZx9lbfr6qDUIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746784195; c=relaxed/simple;
	bh=n3eD/9blU4rGUMDJ9x6ZSbDomddnzQwt2N14+qo+Irk=;
	h=To:Subject:From:Message-Id:Date; b=BBRqfVM7n03AQsS4UYbWgfadw49vNooRLGRd1NFqv5IMaRy2xB7kxXySHii/gPNSqBoaAYEnzpPDnJpz/jedy/8tIcpTPM4MCxD4EyOCn/kdIM1x1fY8z0yGjbjdoinlu++qL1T0k/Vp6YIEggqZGPSd7okBRp7Xp479eZ5dAQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P77MJmlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P77MJmlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F3FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746784193;
	bh=n3eD/9blU4rGUMDJ9x6ZSbDomddnzQwt2N14+qo+Irk=;
	h=To:Subject:From:Date:From;
	b=P77MJmltIRZe0yiTRnglzB4sL4IxtV9XmKBsXtRMB/Mupyd0U1SeZ5DWT++iGvTL2
	 hf9nLDB3uWsy16QhfC09YN/Clu4kGNqlUDZifWpDMXyRvCOTzgVJ0AwUmbVqktW3UN
	 XYQp/WaCjhXss9cv3hMjQBplxFP5KjyPngHGW7Co9IFRINNXZ+EmEr18Qeyb4vNd9a
	 sCjTM3OrOccumrQ7sH0n74vWtsdoGKuDQjIhleSWeWe6EFTizG0YdhTtUy8tKh24Ct
	 eKHZ3fpdoJU/ICN7CsbK4i2a58VeLG+Ot9eWY6GDqmp142Yzg7ZvtJKqb1LliLB/Ic
	 O+Pys1UBZdTrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E810C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678419357.8836.15397736990767267155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148d980c5816f218035e97ee957b446e77f7912cab7fffda3f67e0e4b7c55d65
Date: Fri, 09 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746784193
