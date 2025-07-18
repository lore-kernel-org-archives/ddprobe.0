Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5D92139C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752839994; cv=none; b=dUNujbZkU3ZQI488KSn2Gzn+GbXBfJ+dSj8jQLvUA5pvv1P9x/BlafmKjp5nHfuSMJuNQlytdB7i6h8wqqB1p6nY2B0TnloCqrDLeDyYzqqiA1i59tybj7KvvZ4K4EllnHABhp58VUgHx9M/lAMDR14csWEj98WvXO6rdTyRZ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752839994; c=relaxed/simple;
	bh=8X9p/nPObIKBDjXJH36JznCUfAQEMxXIsyWA4LscASs=;
	h=To:Subject:From:Message-Id:Date; b=tXsYeNlcHCkmx+gGvh9HVao0ElCvyER9/pta8TCWd737q4oKzluIpf3440MYZiCP6KdozTjbXq1zTF4VVb0nVfNed6qgxtdx55L36AGLVuCKr12Lubt3Yn+dDDl0u76APXIOOfiO8xjnUwP07kFtmvcNy1tLJDagZjROgM/6vos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q3PcH58c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q3PcH58c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AD0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752839993;
	bh=8X9p/nPObIKBDjXJH36JznCUfAQEMxXIsyWA4LscASs=;
	h=To:Subject:From:Date:From;
	b=Q3PcH58cxhK6Ud6/pfsAlJGq7r1GdZSShiqxvjHNK74CjEJaoXZnn9ZLHApk/Qepj
	 tFQWuaixf5QZ9SCGvcGhqFtwN+Y+ceEI2JVPFYiYhzTxNVjrCNGVFXaWxMFFNc7FyL
	 yWEjH3nOeHKexB+j+WPVqStyStCTdfFdmLTT2BEfWUXqwI/JZZY8zvJUf9WC4+wCbE
	 EONXT2VAV9OoIxeumm6y0WJmYdt2f9FicgEmGiciro54k9o8C3Q5JcaF5Xx/wXPnyD
	 Qy2mWTfyKLLwV36KzqdcGfRj3FyoW39kNBc/eKkDvtmZUJhfRhyuO3hzVle7rYJqJq
	 pfbZG9xx9OFMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9AC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283999357.10801.17432349854350490615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0e766175b7195b5a9d207e3d67ef868c03e3cb01ab756ff6ff5e564ed5d8f7
Date: Fri, 18 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752839993
