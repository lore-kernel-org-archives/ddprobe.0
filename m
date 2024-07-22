Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193B733CD1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721637354; cv=none; b=ZTudWFidFan1fx0IbNDI9CsGel64kjkozDlKa6npn3Bb+jP7ljIoq1dnv7Tfh1e97weR3VXEG6Yxx/xnlvJDpKCaW+ZuxFD3MI+coeBsy8TpNw96NDe9/XnxkbjS7RwSQDPNTamb0M4Z7dVVD3JyphCWuvfwQZzECq470dR2dwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721637354; c=relaxed/simple;
	bh=VxHYJjj8ozepSGgd6znZw6grE1rZj5oyaAXrBscrooA=;
	h=To:Subject:From:Message-Id:Date; b=QO8s55EA24qwYZKIXm7QL9GUb321dk2VkOsAR8iUUlIKab6+9SdsaX9U4DVrGTICH6EID8Na0aW7zMXdAjnpTTTxvzRhJO8jnukhFL/0Lcpxqiv1eL2s7JG3ETL+EELZGV5vB6R/5x+AhxqxNd5VtQNlw4gS57F2LKMIDmIyBZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjvs91l2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjvs91l2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F9BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721637353;
	bh=VxHYJjj8ozepSGgd6znZw6grE1rZj5oyaAXrBscrooA=;
	h=To:Subject:From:Date:From;
	b=Hjvs91l2VplZaLAuOjxpM4TQHHJV4Ypd+zGWleMuk/0DvVIhX5Y8bytO3yRxtYOzl
	 pPNNHO/Is2u/h8fpYtVpPNwRCgghlkr7uGhSKxPosUyJPAqkM3kZlm9gXNZ4edciEN
	 o7HIBLoEldqCSN076pviTm7VB9gwePD9TFD5Ot5LOSfCOyYb19T2cF88Q952HbrI0S
	 oFBboUw9rmKrBrlZNgrq2fvjY1rdzXpYsJuniSqaPpapD5vxLmvXEm3E3yn1Gv+afN
	 7i9txBo85U1WV0aOTtyvKFXn+1Iz4umGumDH5Ss0nekwvypI1sknmmGByOT+PB8Zqq
	 DVSSnCuuy+JiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD4C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163735359.30636.1853013710302444835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ece43827aaf77c434d051345aba15edb4b4d748e41ff63456988a1749d0775e
Date: Mon, 22 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721637353
