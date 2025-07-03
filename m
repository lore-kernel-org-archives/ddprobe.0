Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B110EEBA
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751510994; cv=none; b=jRoR1u/2+Re6tkrq+CGULc2a8z4SwIBDieTPyRjUITn51hSXRZhOwZNP9eSBXQX2WoVOjy14BebqLiIh+5KjfmrtEbV3+sm5FnSUW1p2zXxCbbw6Ibqnicw3YWVSH84+PTPXYrTMDoXzsgz8GWWa/BL/taEddnbKqQRrp4IgMFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751510994; c=relaxed/simple;
	bh=b+R0RVirYGfvEpL91iq/rCHRnB1jMPcfM3Ae4/+NlXI=;
	h=To:Subject:From:Message-Id:Date; b=GORXbXksj138P6euXH1WGcCfDsUEDeVjTE3WAIcatlTqAxJYc/0qj03/FDdLArtq+tRf9rKUboARiJdXtu4sSJe/Msnev2grKl+muQ3qqK1SgfyQJPsUsZgkdPUBioeRgMC6bjE381ET/2mqdFU4QYy99K9bU1vKhX3ssdeqbHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INpPQC/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INpPQC/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C23C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751510993;
	bh=b+R0RVirYGfvEpL91iq/rCHRnB1jMPcfM3Ae4/+NlXI=;
	h=To:Subject:From:Date:From;
	b=INpPQC/HmM2eOc514VwW83CBpkMMZb9e5S7byKVy5ETj0PLukaV7o6UWWnMwPeenS
	 P6YKLLqopgUmCUru2bYXH04tpW2FBraIWbqjh6IVooirljLZVNX7/Py7s5D1CM1O96
	 3JoPv4RTsN9q9eKS4rmOGoo3QIKhyKZe+r49RXSdnN5QA9Ur8QirwkYCQWNpA69o0u
	 0utn+WEhEuRCzpLeYl+8QGpt3U26q/nfNCq45ulmGK5FtmY4unrDMFcs+HMyFEVIEK
	 aAMlUQ9lBe2y0ri/IVmd41gaQfWiKVj3TYodatlvifbwZwN0+x9o2QzjxReLib1QdM
	 9TAjeFfGx4TrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1CC8303C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151099358.8564.8458398491624046900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6465d524c8bf464ecbfd2c3d45f0108f196655473b35e3d8b35aff3b475baa1
Date: Thu, 03 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751510993
