Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD993F23D1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791351034; cv=none; b=HsvlnzzKC5dU3HwFUBBLrzvdjsz2sWMToltRKyaWaz70/xsPIywLhBnewKtTrcTJiK5+9gminUXmCLdYYJJ4XWoLCTVAZrTEWsmaSjQDUfJl10p2cYpJeft5YINl+sa1Lt6PHBRMPcgA0KyPEV34MQJj4xEGWRURkMIFHU73JWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791351034; c=relaxed/simple;
	bh=tc7IkkvaIKkEbiqaelPoI0EtQxbjLNodyYcOEyYo+qY=;
	h=To:Subject:From:Message-Id:Date; b=f03vqOW4kursOr26P1N1aRm9tZCWqL+0hUsOUs2jrqvxzzypLdkvlbmUOZ3KAaUz3JkiX0Qe4UoX5wCDFUgljaUWGv/cjUt8vXbVQ9KJaF6AT1S+noCwiy+s3Yq78W6v6J/ouGSwgmYsUvdmyLb1HmgLnIosNWRKfcPPJ14mKdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdSgJ7QT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdSgJ7QT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC94DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791351033;
	bh=tc7IkkvaIKkEbiqaelPoI0EtQxbjLNodyYcOEyYo+qY=;
	h=To:Subject:From:Date:From;
	b=YdSgJ7QTjKOTBe+MIVuRBe6AwWBZjPloP9v3wRDCIUHhU7UmhsimnYCBggk6eoMtX
	 81PMWU9JPsI/+mqEzCH+1/x0ew5o8ZY2w+qRoOxMN0jsuaLEP+flF/zGjxqK8N6APa
	 bGVj1+1NHQ6vTFWlfFpOXs+YeDaozoS5MgRYh0HIjoiGeoqKbGkyNteGyZeFtiGtN2
	 ULagFTjxqSpoTxAKoltCvadO8uCsd4IvHokvFLMbCSMeoX8E45Nr2UEec7g7c0scrP
	 WlhIfBd+/U2zEWuWanG5GAqdDtnCP04xMPSwBf8hUY1Pe6RKRd+HUxWQN1R2L7lTFu
	 pXoxUeO8Wzj2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B27CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135103368.2292.12817134296090862505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be83799f887a86afa6db59d4648d563cd4ba32376ff2626624111ae6c6329ac
Date: Wed, 07 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791351033
