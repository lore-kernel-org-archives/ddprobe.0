Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42D021350
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707517696; cv=none; b=RMKo4zXnFj4hSU9pMQcf1PhJ0BpN63g857Z4bUypoMhMuXl7DRSf//AwEjLfh8uLYcJmLCwcxEtumAD+zuWHuNRVOp/bJIARpkg4KAFQqhR0zRTXb2Ge0OCfgeTRYKxpoiT0repD+FykUFoeW8sWORLdEslANPx6YjWtVoXUGZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707517696; c=relaxed/simple;
	bh=wc2eXloQGRTPbZGhqczWOwA+ZsKqkB/kVsi+iBr2Sb8=;
	h=To:Subject:From:Message-Id:Date; b=IXDCVs89kIfd/7C+eCwjHOFZUzjXQ2WmyCqLmoMImvBnLXFYtto8G5CLpXKPIjLgTNv2Yj8HO6ntnx8MtIkln2NInSxocT1DXOkZebxM7rheYmg8DYzlHMadPrfeHpbn2Aw5p5Z0FeGzhYtuzaeL3EsQ37Oy5jkmWqJig2FAGBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJ9czGEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJ9czGEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738C7C43390
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707517696;
	bh=wc2eXloQGRTPbZGhqczWOwA+ZsKqkB/kVsi+iBr2Sb8=;
	h=To:Subject:From:Date:From;
	b=XJ9czGEPy3ASHCA2ZyLci7nNesa6hRTL/0n+G/UAWJabxcfYP9zGybgJ05HYByTIb
	 wT3lvqgC8yGFKE5NHIDuK2pk6J1JCxrrlPCF/r23GHEXxUYIOtluEjUu+q0HnrJLJL
	 OZ3tMsnpBjzvRh44PkEkUPjd13lSvhtoV3NnEDefBnV7NzKpaCbSVTKRpoCdOQKBsA
	 t9Hv8SlaTT5p0T8ZYtLO4nQyHwlDAdtFTDc163kLjbjecIEBFjV83zBLaiUVV89+Cf
	 qAquypBbfpUUweN7GuK4g1k4CdGtg6s2PX7RUxx0JUyj1JvDas93VjUYuH3CukeFK0
	 6bBoOaFuhVmSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C961C48297
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170751769637.2814.7453101125406867104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58dc8a9c6049ee8a486032f3b331d3d1d40c8c0cbce68a50625bc11af6fae73
Date: Fri, 09 Feb 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707517696
