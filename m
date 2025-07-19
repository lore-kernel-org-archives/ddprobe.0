Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433F41FF1B5
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752899994; cv=none; b=V7HtFiHiCspLv2HXOXpQzTpQTkTW7u/N4KMsMb3SVGrA7VTus87ZicCPmdmItEICECUkp+psoURX3iELqlq0+ywVJngZay3VPVglyToZGFRLWmnGAxD9qJqh10XFvOdgB0I7XzSmoN3K3dbEpgiaNZobYEX7NFmI8WAETN/zc3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752899994; c=relaxed/simple;
	bh=+stYeYTSnRG2DC/AafR8sIDM8QqAVvjpQ/wu/moVfAQ=;
	h=To:Subject:From:Message-Id:Date; b=ieykcEDGnqEVcf9KewIfxieeIL/uRru1Z2/gkm8q4vwBg0yGBgeTECCTIlytwn9rPhCakjRXls+bNeEoZcl+7ZBlpYDp9h1UExY8jMcOr9gg5br34UXI1wFqO+0qjSIShXDoh7uENvreKyEeK53EHt6/PIlvJ99E4lcKwcJS6oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8i/06yX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8i/06yX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD4AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752899993;
	bh=+stYeYTSnRG2DC/AafR8sIDM8QqAVvjpQ/wu/moVfAQ=;
	h=To:Subject:From:Date:From;
	b=Y8i/06yXzmU1L2pXxtuESmAOiQcyxj1DzVkI4emn2D9I/GiFXk9MY2bDyq3r27/Dk
	 ePx2MNUxA+9HIE4aSLMPq6IxbF8kDiyZgWJMczJsbVSb8PnOHGycmzrV6IyfrkhQWt
	 S4ii91AV0c59esbD0Ubjv1Goa3lXu0V8bH64IVlv3k/opA8delEj6dqPKvawkeNBrQ
	 SutCK7Fu6FHLOhRBw30JdA/V+MMhxNvJIKwOPaU03Ow7v0a5RdDpLgIgP7qMhrRqGr
	 SAOn1SGEpD5qT7YrKyKSb14Ncxu7DmiNS3YiSgpf9Xq42suifxZ5nb5KQWXjfpWYRK
	 JPOqZrUsBS65g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96939C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289999359.25770.3624098746030174252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea45039f032fff67c6b4896ed1c8d836e6b137cf0e517a6514a50d697f6f0ac1
Date: Sat, 19 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752899993
