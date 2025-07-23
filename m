Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AF22E36ED
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753304394; cv=none; b=o6aGNZoWBu1tVPAEpOJ0oeqXB+BZ0FrRHm+1Xp2Plgbork1FR9wHhMzj+x8DR82B/vm1xZdSPgUpJHpeQkv/TedHL8vCMAkkunlnhNbyoElEEXXPTk7TyhM2TcSuaerqMsK5VVIpzaHO5X88l5Yfj1dykWeesOoFM3OUUoxBdIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753304394; c=relaxed/simple;
	bh=LKWEhpSOZ3I4QDEFmImbZaS2UBAii9dX6c2nVQbcJi8=;
	h=To:Subject:From:Message-Id:Date; b=UrU3GQR8OHPx2D2VcAuMJACJdVk5B9qJzDSVZbXLSNkAjaDirzctGTSKVYkiAdaJTVn5iDaOP1KunwTq4sUV/wLwKCBYoFd2OlgF0s2qan+GdQV8FtPG8nSn4szBGL9AivhcJrODR8CyzkBkt9mnlRfZKt+IsoLg36JeHkXVZF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAsAde6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAsAde6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F50C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753304393;
	bh=LKWEhpSOZ3I4QDEFmImbZaS2UBAii9dX6c2nVQbcJi8=;
	h=To:Subject:From:Date:From;
	b=dAsAde6YZuYUBkd0I2G7kj0A6QCTZUND5rSC0uWDpS4UDGE5dsMhBVL94uYDGsQN5
	 NjQAiAxkf42DkZr9VWbf0u/iyZkBOPMfmpYWtzuAv5ngsvMlzneEec1c0oc6Guyzhm
	 GJ3zFRxaaEQb42Un6FEPcIV2Z9Xkg5KA1nvZaLpluiXlIXMy/HwB2PFrKcvgp8Hp2p
	 GvAbnvlp437aLITcPItcXkIqtoQKrdK+LL4nx6uOaIoLAtJfOsdxfNEPCHmKTH/VPl
	 E5e5fIcBFYh2aw5Kl/UDB6/aK1DRvZo7r0MGTwJXinwaZAmNa2S5EmyF0D5LdWmHnr
	 ZuxcPSHgC6y9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A3C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330439357.12131.18021877442652540214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bcec7703287e5cc8c9b3e227c92fa0b7abbe0fc31cd27261f87546c75b05f8
Date: Wed, 23 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753304393
