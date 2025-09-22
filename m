Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2127623815D
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758538194; cv=none; b=r+UdRSawHUaZ6kPSL7YnyFx0dkBiDqETAyLN262k6ITWpLNG3PWaDJtsspOW7vyiqcoNsI2Vx+rpQfEU10prgHXI4Ip44Sgoxi8lI9FdPBVeqHmcCH4wOT02WO99drCNeXymHS4emrqmwuh+PDI/IhgZg+UooUoW4/y00cX4wrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758538194; c=relaxed/simple;
	bh=5xAgzbwrX1Y+ywhXQ7dDS1eTLkM0flSD90gO4rujfsc=;
	h=To:Subject:From:Message-Id:Date; b=E+2WtwI2C2PdkDaFg9uQiNMbnnAZWuJ4xOoP+QMnQ9kFq8ym/LH1XwJhhG/OQLhXV8m3qNpC3CuhZmA0bdrDAYI6P1DXfTcNEsUpOlqTBX5Zn03KW3D3Up19ZwrQwmMU2e6RpaiOUbZskreznpJdTgvQRigKgjKGnGTtdMGls0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXtmd2pN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXtmd2pN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A60C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758538193;
	bh=5xAgzbwrX1Y+ywhXQ7dDS1eTLkM0flSD90gO4rujfsc=;
	h=To:Subject:From:Date:From;
	b=XXtmd2pNYYB4GyABdQynKeQWUZzBkw0bzrr/jnH0Ns5JzrCXzaIJmdkyXtFgVMIwM
	 G062pApgNsdM3cSP+AeEhXQGiOHcyyVjAfmkhrffSKwyWLJdn2tna2azwsM+IIPwqV
	 3VUQGYWXoOsI+jUb8UtEkjleAn3eyAKDbk/bU/ljomdcw28X9sF54z3NGOYtu8Nfma
	 6Vx8+nZKaPoJ+fLk/BAqVovY/tzOI0I7l7v9a7M7Sk/xmxFyUD61HuEML5GE7oG9tf
	 Vi3fLvtJVb6lZ4xGMyyvig1x8a0EZX+5GdTJKxnA5JpEK7+CDYiYBs5VGrZViRgoMp
	 Doc9YRLraXT4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F314CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853819357.31549.6767589136521579514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 027d5f5dc260d081047bf91c69d2a738b6a2f185281f3549346d28c1f5d98215
Date: Mon, 22 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758538193
