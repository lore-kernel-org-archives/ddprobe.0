Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC1F13D893
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735255554; cv=none; b=E32y/M3PAgxNPTcEHB98Tp71ctOGuEDxJgwprX2m5wV1Rl0RUZesMz8Rcap4uThlOceLamm+aoKlDi4WhNF6gUW4knSF32KdKgyeynj0mc1OMYsl9v40ZgztGP1YRq/rjHb8ylHBwKlPE6dXAuhv6CZ4lF60BJgURQd8qWM1p/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735255554; c=relaxed/simple;
	bh=9NbO5SfkGguCPQRV/Zl1k8sWWUZ+oTsFK2ttGVqRwms=;
	h=To:Subject:From:Message-Id:Date; b=jWvne1l/qRKA2iFNtt/U2u3duprDCBycxuLdDooSCNLutHqzSIwsyeqKyuR4kgrtMsAWa4cI7pK/G/Wf8pvDYCt/K7FoxcrODyoZscbdJe4F3cqTPDc03b58LhI6DJ9s8VIZGzyhCopKP7/VNcNbWqjdmx2hsUrluMWNxJCf3kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVi4dRNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVi4dRNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC065C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735255553;
	bh=9NbO5SfkGguCPQRV/Zl1k8sWWUZ+oTsFK2ttGVqRwms=;
	h=To:Subject:From:Date:From;
	b=bVi4dRNtzetFmtm8mhgwZ7H5dVRjHOXVpZ3Gt57xAcyspiupcu+RzanwjFAuzG56t
	 ESCvGNRti5XaDrDHosK89bIZhQu4hBwT/ARCuVNlOAE6ETo29pcHEnIa6hQqBhepUR
	 E3xWjk/01vrK3teeHvHnMPgDu1VfZJ4m0LqySFOT9d+y/tXIq+Jme+1NktxgEQOGC/
	 B/yY7oYlBei9Bu5UnfNMOad8b4htHUR1g6fkMLv5jUsEUseFrMJB1JK/yqix85NXXo
	 aslRXTaMVLznJIew7JhLCkt+rnaLdchC106BzAD5lBgn8SAR3z8Uv5NSXdXr4N4s6/
	 rxZ0lpgMacC5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95177E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173525555358.19669.4611216007629411961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cb7ce14cde93ad59d5495c75336e88e3ab2cbf970eceaa6acb2a93d43d80e9
Date: Thu, 26 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735255553
