Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1755635958
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766576034; cv=none; b=ofNCxwZCGl5lyHYJc0Mh8n8898DkQWNVlJ4Jek61a3o75pxsoxZ+IPFR5sZvThZQ7Vf6mLNEPpAqnSZHEId2ud+klQlMKlZYkS1bGi1isgLGaSkyyZ0Jz5IPGXj5x8SGIR7hfpWb7gaaFFvHHRbP7zgQVnxKJL6/bSH8axaSsYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766576034; c=relaxed/simple;
	bh=PCDLWKKwujC0Dq2Rj1AHtupQlnOxPf58qL1RlfUchYQ=;
	h=To:Subject:From:Message-Id:Date; b=Y24+iI3zmi7iuPSWMvaSFSKDqtcVPvhgu0nbSnDX6ePtkj5OYnhxRieqbbGPIqTWW62gPVSX4VzZLEeKC3Rc24XanluNaNmYeDHoxsUHb5JvMREmIz5LtPCEIJQsMVyiPVWr+hHI33+W0iY41I2/amA2TwZSBc99Ym4DpwojfVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evd76Of2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evd76Of2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F6C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766576033;
	bh=PCDLWKKwujC0Dq2Rj1AHtupQlnOxPf58qL1RlfUchYQ=;
	h=To:Subject:From:Date:From;
	b=evd76Of2qf+abKbsDYhYqRz902hwLFX11prJ4CiT1iK0zFsL0PEJ8iTDXgMqRXi5H
	 fPDus5B37kA80RY6YbsWKyd3SdZEEIBy9TsCz4wJtd0gPzb7d502NbDbyRCCy7XMKV
	 NMWZALURQeojrzYSwrdXbZvc0+jMEgXwacWtZvM7jAu41GUx9HB3RTYG1NPupM4+t7
	 4K1baZ/Cb1FlJcPPWGn5JCpMJMGhpC1YJPbnI+q5jBOGBuNbJRLGePpYiuvyBI41QG
	 UiEAw7XBgm7U18DBD8UClWSdZMgsK/mNGGRMCSXeyMuphyHlV5YGoi2pcvXHTE2tM+
	 fuzYs1zRbhruw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BAE74915
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657603357.32040.330279404722091019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2918eec93bd7c95804d6dd1528c477e96b55444a23f0e14db6c484e615f432
Date: Wed, 24 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766576033
