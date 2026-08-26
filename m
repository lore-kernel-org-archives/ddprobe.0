Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA4336F912
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787737234; cv=none; b=e3avB/EBCAhkmaDHeHMx5ZJdIvDJxM4DneikXcOp1a6S2n52N8Jhf99Ac5U1KOChHJvYBoAh9c2BE3BgAHAWsyBJ+jFpbzCH7dncyvDW4PUv5BVufQXBa4FuvwCbrVQu3mZS2n7sjcrr5HK8uQY1ngOVcX94dV31nozLlQFG67w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787737234; c=relaxed/simple;
	bh=agqqYEsdtJxyIuonI6GMR0P9Gi09qrZtT6oCE+7XIJQ=;
	h=To:Subject:From:Message-Id:Date; b=d07TlFf4oX10JdPkoT9RRqNTNmQdAr2s3MQRpKBlFujsENlcUu0vWnrFBd6vpwPsduuIIH2GIijfX0f9jHQnoWKbJ5IPyqtpmNkCM9hXXxyK6wwhis0E2hNGOPnlW04Gi8X7c743MygJr3EsThn/5gGlZ2VlFQZBBGDMZRmrJWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+nzZoAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+nzZoAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFE9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787737233;
	bh=agqqYEsdtJxyIuonI6GMR0P9Gi09qrZtT6oCE+7XIJQ=;
	h=To:Subject:From:Date:From;
	b=j+nzZoAq98O00/zyzzUn6xdIffbylJ7f6EXG3j1+bHQp0aLgblJjpkgSHvKvbYz7f
	 kd4aIjtNGKhjVkS4fr+T724CcfilH+CY0hVMPjuG7vbl8UF39DxFQqPRF3Zs/qKOAq
	 +QgwfrJxCeSQ2aj2mR9OQCv7aKFN8Gg+vyLd5rzlNMTyFI9n/uU03fUReXM7xkZT7T
	 S6sst4C0Mnb60FymafAxVZPG5/TLzRtvaLFNIQbxcQIjC/NLA45y+rIwqPRy5N3vh8
	 tb9Qc5ncHgMzuTC9FGSG92+hRRTAlzvRjCD7nnmDJgM2bQuz16LX06Y5smh7Yhno4O
	 Efv5qvYAC4p9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7ED2C61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773723374.19313.13010470398085130602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871bcea695676e9406ae49d1867b3ac7d257ac88e939aa066273f20ac6b5bcf2
Date: Wed, 26 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787737233
