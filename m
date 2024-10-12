Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264B21E511
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728740154; cv=none; b=BMZoHk1o8b0R6wHWFKJwfPHtK9sN8KuLPrKwB/OK7K7TxhjvUNXuQ1C3jFzX5TR3hFEzG/73paCRs3T35trJbfq9/zuHBkB3Lzm1vtwZi9w63sEBR6TQAWU8tCjpBbCHJDIDhE8G9pE0eoeuCfwwFNk/dgsaCn+t3W8zWhd/oMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728740154; c=relaxed/simple;
	bh=YvoTjOGmG/l0iMaKJe39W68kkjol/s0ucI40veeASTk=;
	h=To:Subject:From:Message-Id:Date; b=XhyUy6pgsFExabz6QvfbK1usYspAtUBGm3K13ufRyIx3Kd3JdpNVfRaYuTXIcSJbih91E7YKs73AIlIRgYVxA4WRl7pxfS6piKwAEy9Xn/75HGa6xlYRo8w9Ew+PLwn2c8pqbBzAlMCpLITRULT43ayN4tamqTheW0F2GNBS+k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnvoOSdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnvoOSdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD13C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728740153;
	bh=YvoTjOGmG/l0iMaKJe39W68kkjol/s0ucI40veeASTk=;
	h=To:Subject:From:Date:From;
	b=PnvoOSdmLsipSLLUWi/ujN58cCoxY8fq3tPiW1q07VYfMUdTKhZ3HWoSwaXphe5rR
	 f4bJXhQlVFk40bDz/P7LaB7VwNP0i4KLTscEzVyELMmB96nF9/Ix6Uo+GzTnSr6bP8
	 Fjb6tC/EdvrFC6eYqHMT/pF6Ch2e0IdOYauo59WKsrpeOBkH2SyXx8FolisSXFTuWV
	 xmhV/G6GHDRpfDSeHY6z6aAwoM0LiQLYT5EkRy4PK2tuf8GOmtU9nseSt74h25ANXr
	 5ttdD4R91Dg2yKxfpjjOKQDevHlJrtZ3Av5809HXjWaqJnrEyM9Rq0YdVNAPSsNKsB
	 dhtlBjYfybcAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC01CF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874015357.996.8800669628936524943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0572a01d8b75f5084d680f0cb101b587e93a3a7622387ce608a07d27bdd6adc4
Date: Sat, 12 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728740153
