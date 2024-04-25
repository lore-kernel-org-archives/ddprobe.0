Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577373AC0C
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714022483; cv=none; b=A2RwYBWz5DyFWmqX9rfpikf9IaDooPijLL4xpHMLPREFKWMPmo4Kz2TanSKkqroaod6G4SpaRdCf/HDIWCmrGYoe9rw4zyWGDCZr69Y2Q5m3W+a+I/U7Mty6+UXXpxy4zP61hqb7F56iv3w4XoBJsskNtgkRtKD0T9aDoXhhYkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714022483; c=relaxed/simple;
	bh=vdG/XsM9BW8N2Qp+Mt0bEPxaJScon/R6aoe4g1wLGkw=;
	h=To:Subject:From:Message-Id:Date; b=pzyhdKFmNllSBLdHd1wxgBna+d0xtzLV8y3Akj409yq/eBDhq+p3Kk6OCQMaPHcUgvagnRb8jqeT6eD7U6mVuKA20Pl6Sc0bw4fGE+DyD/3Vz//ErrTcfHce1CeoWvWM12x9/k64XKpXekp6+wl4AsAFOaBf5ccOSESg1k3VfnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PETUzdFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PETUzdFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67B1C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714022482;
	bh=vdG/XsM9BW8N2Qp+Mt0bEPxaJScon/R6aoe4g1wLGkw=;
	h=To:Subject:From:Date:From;
	b=PETUzdFdNlyU8LJtPpSoORRsmKr56BCI9L3cbHhLLITZJD3YIGLIxwGmfuEODhFcX
	 OZk2uAT/FCy31yyA3yKt4yLsjU+SkrMftjVREXa3qyjpLjJyt17SFv/IP2CcPDiFeL
	 ZxMS6cyxp0Ju9K2w1AIQSY0hbsL9J0gBfDKmcxZFoLuO3JRnfpZEfOepVXtLrK4f3G
	 Mg64qBWS5oRVDRqlibKeMWnoNp0Jj8cX2OUZc1yfQsSYcgcvx6jpW/T+Qpw3QuzSet
	 M11UjXS4jCAUsUFgRSFWjJywxMpQeMorf7W2xOcRQZU397YXUMTE3jnZqaaAOHc2xX
	 C8uwt34SrxwLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C43C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402248276.773.4212420026951126197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ef9506a4fab15af1607b8a07c5a36a13c9296cdd70f4934f4237a519beb017
Date: Thu, 25 Apr 2024 05:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714022482
