Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2485A20322
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735794354; cv=none; b=EUb552kuEMEB5/twWHdPQJfyYPz3+rLcxOGbn9J/6KHEqimNkDtLU/1c9WfeuF3d3K8isofSgQauBCokuxKHpSvgOWLH5U1RvKC8F/MlzxHa9JTD3AvKOikhwjZSLjxI6xmFbTkyB+nqq5UaKOqsjpcehb/NJfsGC5FuA7fw7Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735794354; c=relaxed/simple;
	bh=JMQzkm8rlmkMIoDl17C7qTfWJozy8RRBzFGiztQoUH4=;
	h=To:Subject:From:Message-Id:Date; b=bV9Kjdfoxaha3BAR/eHTtukfWg6E9I2XYdE11iMmjkVaQH111GKM2MmLydSu4mLgYp3kAD4LUZXopqh8yzDbFOageEGYsAtcLhlncUHQLzZXgHzUw+1hHHyMe7VC+5pYd20Im6HQVbfCDKPKdFybFV/XZ1tLBkkXALrSLDAd2A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7j1hgAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7j1hgAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B42C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735794353;
	bh=JMQzkm8rlmkMIoDl17C7qTfWJozy8RRBzFGiztQoUH4=;
	h=To:Subject:From:Date:From;
	b=q7j1hgAjQdKVLsQI6OIJg7Qq8I1m9jIBPO4wa51Tx0URRz1Ex4147yyTKZXsqpj+e
	 JthaPkOaw/d2pUCoAeFCD2EGvk6yqJNGdHGmpokXKq7rZoswf//Jr5lo6ND/JM59xg
	 odqrJrsaIeRz8EC9kkgKTRDioHqDN8CYa02nD7j/hsSXH3L0iC23BBGMFcVjhBTN/Y
	 9yExJXjA+8SmkQPCHKdcLDlx6tFTO+4tQ9u4jUz5DeQ8RAD+UUJ983k9e05ucqWXxV
	 F6LaiBx5wEwu6HZQElcHrlOQW8HdhG69dUR8X0VN0hIqAZyhoxFWwrQrTyk6P/085i
	 6mFU3V17/VdDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9333BE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579435359.14679.6939319716507944773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c024cf1bcf9e6e5711a5fb8fe775dc921c3a91f69f3e320a65f27870626a8bf2
Date: Thu, 02 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735794353
