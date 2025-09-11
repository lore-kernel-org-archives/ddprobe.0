Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA3835FC1D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757613594; cv=none; b=W6kQtwFDasijZTxHIAtzewEntY3jVXSqKIM8qHu4cOmLtZxkRCOtmo0X7cujDlcwwAX5cnOtuFUGmonsE+EZBIiSvz3agYDe5g4xUFalNnDugoW02qj2VjMl0rkO+RPacGo0w0Ch/CBzpDAGRnM5jfRoTBgR0UrsJucOV2unfJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757613594; c=relaxed/simple;
	bh=eERcU+2wG8vubF2+nG2qgZ3NLBUG7WKTkutfrFrZ7SE=;
	h=To:Subject:From:Message-Id:Date; b=e4wZWEzKFGOy/6eDrWzUzqGHdTWOTvZZFGJ3tMVTI3FcbAUnSTe106PFNVy4PrVwS7UaYgJ58sdPe8NckfnkNaw35Gy/lYD6rcSzP5sDx+6VKuNLAk3u5slEoYccTsyWiDHNfKmFOOFt0rSdPr6xJ3+fnzpwyJ7phAnKFyAMT2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou1B8mCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou1B8mCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084FC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757613593;
	bh=eERcU+2wG8vubF2+nG2qgZ3NLBUG7WKTkutfrFrZ7SE=;
	h=To:Subject:From:Date:From;
	b=Ou1B8mCq1z27CA7W2pdz6QdiUyNY1SC0Pq2oSiBwB6GUoA5BbSRgqDlQKn+KEXzvG
	 OVbfNogpb07hQpH76UM180CGIqYSyJqbuzwDN0aImkKpbTQ12m8GcTCmyNjsEdmhc4
	 SQnFWKJ+2T8Uyb3g9ThI67Uau/Zgd0H7gp5nOYhyZrOUkcz1WacZkJAj+z9hKdsuYJ
	 6Tf61qY4+uXnZ1r0XI/SgJ9G5KxCPZteRq+SicCcgzZeyPvTkf6SDhK8Z1qdbAHWwE
	 dZ+1A0asSQHuhGYUrW4IBMjndj064Wxr60zAkalHc1CVFxZG41Q6wpAhb20Pt8LCqO
	 e9UFSEVme82zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87CCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761359357.26348.14270503739852822318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082e9b60cccbd2190e572e386783ad08bb900928911c9752d8282330a5e692ec
Date: Thu, 11 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757613593
