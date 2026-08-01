Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFD4255E43
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785574234; cv=none; b=GvdmccvWqpE7YIK/gZmHVNsBo1jKw4U2kRzcmJINNPtQsVIlHIDFkQy1NO57PU/v4Nwas/vRr13HGV84Vp5BrutyZjdNpdQjMONS1b/Zwl8w16gl5VamiISsdgKFnX0MdXr1Uq6l/BUomX8dH4wD4E27wpnYIZOUQlPTbJ5ISxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785574234; c=relaxed/simple;
	bh=EGgeRjONEyoOMhWxRNaojtSQKm2Jx72zjZ0Q/ERr91k=;
	h=To:Subject:From:Message-Id:Date; b=hN2vQ41cJA21inUrW+hgzNYRGfurx3qxxrq4f8q13IhMPKrK0lCs05NmGDYqhgZRXrj2pSQivGFRdzeVJpQkFHdsL4Hs7YQ+6BrkLgS/4M1u0cW77tZs1W/mHH+RgZ6N9zKuW00Bv+K9IkegCxTZy6nVXdYx4mV1wRPZhVjYE2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZ7z+IXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZ7z+IXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA4FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785574233;
	bh=EGgeRjONEyoOMhWxRNaojtSQKm2Jx72zjZ0Q/ERr91k=;
	h=To:Subject:From:Date:From;
	b=RZ7z+IXHUZR5fotrw5RYLD4hxB96C2kYy7iQZDCcqPp3UudakZe7ZOXVQrMkFoEOx
	 owZB9dKZ+bouyFJI4UUsxd1RzOqAboi+YSHubxEHwkJ7zMDOIwAMGLZYX7Uo9VIGYJ
	 usqz1RKd4Gib/7GsEcxFtl5a/mY0ldKF6RXybJMxhK63wN7+WbQSC2Bbpcw9tNCVtU
	 7eNeKuNknqkrucfQ0Onbo2WqRdYO7RLl/AqQ9iGttjE3dKWrQFVcQ7IfSo9okAZtkk
	 jOvkb6xobELpO3uKXzWPqW6GbZ4ZB9EQqNFUQ4mnYk5a5z33nljcAvlpfja61vvBlr
	 wjuOS3+aNwfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F57C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557423368.18717.16074904408129959773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640970cd2bb7fde11ea3d560a942059f09441ba699ef80e71bc2ae6b479191db
Date: Sat, 01 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785574233
