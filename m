Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE2513D297
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737445554; cv=none; b=UeUXILxv0M+K5LAKOrMoPNGlHwoz4GlL+gvztQMOOQc6hllJPbmAXHdI0mFkapdqUKC60/5xz2ZDcMzaLG7vOubzwds+9L3m95Dsyrm8faBg2e6mPTeJNDcTJiumcHJeko8t0MYwF/R2lZvU0HkWklS/iPA/HvMnZCOm1WdS5k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737445554; c=relaxed/simple;
	bh=S3QIixuMSeyVndXNjcqDLAXvHHk+7p3o+chnhbgtpds=;
	h=To:Subject:From:Message-Id:Date; b=vBVZkpLtS7XTLJZ/RAsPjWqJWNKzYDT3VXFTRVvaaUKCFa/Wm1/dJxdA3i7GnGSNzvFmiH5k6ejYLai0ULEsC4hxCEVv/dKUOTw82lNGjCL3XKxtFLug4pt61qYK7GKoI7IMq0cD/8ThWB1L8wZBksB5iL4YDO9g9PH7oaDrAsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7vHhayy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7vHhayy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD33C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737445553;
	bh=S3QIixuMSeyVndXNjcqDLAXvHHk+7p3o+chnhbgtpds=;
	h=To:Subject:From:Date:From;
	b=U7vHhayyGYJx3LrQRjcPWcOGfBE/c0R/U6Q9PkgJA6Cft+gj91Tv90CZcjzJCgoyr
	 4q4KmQyNR7VfRI09v1s+fqNkQXzx3KaYj4nY9NIk82j74BNlXQu7525zdrRGKaKRpU
	 CV68CbOFGJEfABIzUDe0EzUdNK1tkYME7bDcMnSPryIkenaB1h+auZ5sSMqOo2+3pV
	 T++bYykYS6Ex3Qea12Ufq148xNIkZ5uqia6idM74A6CDOhGnqzzaAG4AU0pADwJ73B
	 wjpVpiHp8Z4x0nE0c2sOh079ngUO1WRN4yJMZfW9rTkeF0YMhnTok9tVEUYjVi6zAS
	 36kwqOxraWg9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B404C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744555362.32425.16087098375855634242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d97bb9cf0d1ee7ee9841e8da4020c9095510c61c0bb4ca0111a8e7201db4e1c
Date: Tue, 21 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737445553
