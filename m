Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DF7321444
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758624595; cv=none; b=TvmPhHH2Jjg4d6MPcBx14EGAbUIGeY9x2QIUokIzJ4Zrfs25Tjc3Rm2mhKRHLuawwuxq5Vw8QOU/YPum58WO34qlPGD1wRf5vV2XBZ/z46CfdSbwlRNXLCkR5ZQNhB3OATQ9DpnhA7H8+PsHS6cDYALzdR0iubl5laRXJl6AvLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758624595; c=relaxed/simple;
	bh=pCNDw2BD2NQkcv8SVc924APIEyyQb8iuO+deDK55NbM=;
	h=To:Subject:From:Message-Id:Date; b=e64WpQmOatHyMLISSQXFsGeLa9zdyMed+Hpn2Nc1kI8ghnZWqtdSCG+wq0Xcm0NWE9Yg/QcN4bxkNTEUZAYVowzI9jdpobcmHi9x3dR/GP4uxGi9hbiETA5rrX+Z8yfchBuVhezwp/f+LwhQqCjlbEfhzEasGJHa20JWgNkturM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hniWWk7B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hniWWk7B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C57C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758624593;
	bh=pCNDw2BD2NQkcv8SVc924APIEyyQb8iuO+deDK55NbM=;
	h=To:Subject:From:Date:From;
	b=hniWWk7Byld1ausmbSTGoF4sxDvBWRMAKU/bPKB0PJlt0zv86w0Tr3Q9mSMVm+gXG
	 O8WFUylDmmD3AsJPRqaFU7doBOOLt+JovxwZbhB5eJvLNfHMaWDZO2R7LBh3IIyKCO
	 MPu6wPAFW0NAJGMtT+9GhGJ/2rR5ykaBE4MXwi8RWaZeVM4vCzC6L/goCFF237m50B
	 M3Pjn/tONBg3vjaauqJj1x677572ygvRdAyLrDjviO46DUtSIJGXUJK2Etv6lSqxim
	 qvKl+cgUQ/c7aWFOd6rb+Cyo2PmqRcfZVxhCALfZmAS8s0Y7xg3qvnqwCtakVKeqUl
	 drnm2vyD6mW3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB8CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175862459359.7537.8631562886010477198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b95a4ee4ee4874600cb248d1c06bab1248dd68d63ce8c67b6fc6cc64f450ff
Date: Tue, 23 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758624593
