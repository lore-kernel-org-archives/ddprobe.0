Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB6C1CC14C
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729076154; cv=none; b=Wu0e0tEJ+J+7U54WVwivq/32y+yN5CBBRCGp/Mx9EtNivirajHhbd47/mOIL0m/AwPP5BNEE+hiZXfF68zBpnB21SRc37fn7cZiR9Pra+pzKDY6UtmxdPFW2L1X4bJ/eGaU1GUZ+h8dKh3zsCKenlUKihasxWKh7W1Jj/03/V+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729076154; c=relaxed/simple;
	bh=Z4MXXQ9A2FhFPgYJgwRX0n/lGAPHwt0NEnHTIeO0SAg=;
	h=To:Subject:From:Message-Id:Date; b=LyZdefYiSGqlFnnC8iEKpS3wSH4plKUdXiyUPoqRdep3OCYaEY3TL0ZmRTFAuukdehW34srStSz6CuxsfAavweE4LjrmeQnyjMk/EmkvjY9dYum5RYBCxQn9+BkU6+1d/BrYramR3zPguGtgAGKQk3h3OoeE7X+mAdK1oiYncmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBBL7JUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBBL7JUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB177C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729076153;
	bh=Z4MXXQ9A2FhFPgYJgwRX0n/lGAPHwt0NEnHTIeO0SAg=;
	h=To:Subject:From:Date:From;
	b=QBBL7JUtwX3ON+SIEDImR1bU5RVg1IdRdRly5HfpW3GzYchnVG2IGvu3nRuqdSAIs
	 tBKQNLU6aMo+dIC/2sT3EqGXfusClahxxPpiO2sDXvaApaDj068YjcCnh72ot0yf3E
	 suc6i++CH03Xy0aO7+nh/OvjON+5C0cDaBXGWBLwMyv/7B0k5KqqsqtMyTxc3IAICB
	 t6YP9DpKRjYsiWxLz3as3q2OtyKaRpFWToENExRkFlV32Tpu3aIATpLdROcxjyV62G
	 7eZKriiBi1aDeNIBjkRET80AgRoyySQiHjbgLzYprfF4gSzo+oL9Lq2q4XVIsuIzZM
	 QUvEo4pauLpzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C57DD1AD46
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172907615363.12498.833897471204733925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5cabf4a0ee4d1c7f9058526df7e438b603cf6e2283d9304b63f75685b527524
Date: Wed, 16 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729076153
