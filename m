Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9C03D904C
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779798154; cv=none; b=OAjGy6bYI8PpP94xJwfEkAhc9YxwKNZ7kt3htqGm5AU+l9r7v0thTXWgIEHTQOdfFwWWgrguWAyTfOtttzbFE4VWF2606rAl62B4FimyhVip3fUziz6cNLOgJL2K8v8jyqflAcf0G0moOOm9IQlv29ibApn1sflf1B4BE03Q2a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779798154; c=relaxed/simple;
	bh=WvPIFz+uec+BdCZ4xcnedNBOzFG65eYyxfXcC5Ciy90=;
	h=To:Subject:From:Message-Id:Date; b=dzLOI7lyuJQPvWatT3OhX1kW8JWKuBvjXmOp7KkPyPaOt0LFPjB4SflIfaBsSMRDmYIxx4oA6jhEXObh6RO8kQ8R2QZOwpKZ8LFxvdDHNZY+xlow5ZP9vSTAJdvrjcxa/lLXVABGUQX3Tl23Gy16PzBNIFlKvdOJhwnLjBaUt8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0QQerSj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0QQerSj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9093C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779798153;
	bh=WvPIFz+uec+BdCZ4xcnedNBOzFG65eYyxfXcC5Ciy90=;
	h=To:Subject:From:Date:From;
	b=I0QQerSjjV1vQN1iGD7bLsYThVa+yv2IHUR3JUy1/acJsrFTEmEFL6raTctoSE4k/
	 ZTAG/jwFxCPI7x+CbmLgpff6qutTdUJblIBlAFXBfvDB8Ahrs/Wp8TsCndGL6tq4Hw
	 m/aJZlmpCSqCm+0vU6zaOoU/Y5/Ryv68vl4KaP9uDGWj0jtsA2MNCK4vATvLS0/1Q0
	 X1KiTFMSCgN5CShiSRU70qZZQeHy3N5Qu2guVO1C0kMswWGmRUhGahAwexGemQRfiN
	 jt73OKikovgn8Lm83Qd1WmBCESpKqrCad63H9DaYSIM4k3RTxYmlFb6LgEOqcSID8S
	 XiRX5G0Jiuj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8DBCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979815370.4979.16822419694543759439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49101b5da6ff98292b3f6dc58760cde8f355266705feb43f46a30849efe91be9
Date: Tue, 26 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779798153
