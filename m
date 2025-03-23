Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2401EBFED
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742689794; cv=none; b=izqNye7YFs0SquNA85XYVgH0KQ5QYMUhUwwANfWpgl1DaSCZLylAr9SrqEwb/ROwRa5b36JC5okh7Mqh3EJ7e86tKBerVmMAgd4idPcbtowyspK6T+ShG2CjgPmovfMw3MhDCvx9C3w0jJxPpkxD67x5qHJ1hjzQUnmZ10I02LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742689794; c=relaxed/simple;
	bh=ngh8Jjyrcn6N1/g5WiAu/6ElKvdgK3mjt0LxfzSmjFY=;
	h=To:Subject:From:Message-Id:Date; b=KwlL6H+n9Yh94AS8yWZvb3DmOcE08+1zVgVPFImncg1on8s9PV6a8tnR1xIvVVnMYF17Z+24OqCh8XO5aOf3SWDuu/ugPJIxGeRxgHhwZk7tkcBPeUehzp4/zhlE9u3hiP+JYwuPJLe56rvi9bOFsN0jIQRyXwaWgmSfOCdtxf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y979zbUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y979zbUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D391EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742689793;
	bh=ngh8Jjyrcn6N1/g5WiAu/6ElKvdgK3mjt0LxfzSmjFY=;
	h=To:Subject:From:Date:From;
	b=Y979zbUXNSL8Oq9OZOTdZk+BLj8XBsccB0/a4PxAVf6OSPmq5uFW50UbYKdIrvnN1
	 2mt/SSblsdH2XpY82h4rn/8cuAlzDlaWB1ryx5MICUZBJwVknsvspWSdeT/gBtix4N
	 rTJLUxffsI1xzE7EWFQgir4jA+8KRZLcFNGOirxRsDIhb6GOGLUCIXLJw1s8Gey5xK
	 z90vLwrWLFJkAqhdaM0gweEjB65NHUANv516DKoMUqDdJ9tCYKdT2iu8N/KTd/sxP3
	 J/Hrrtm1mQAUuEiWcFVYw7ZVc4+eQL44uR3sK+an2QTFWin/w8AOIbOR9+eahMlbUF
	 xB2WG8okGvhjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD325C35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268979373.25564.6094609725060023994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ebbb9d8a191f77d21c0a5d84e5480b578cf2ba003f1ec29fcb9344fceaba2a6
Date: Sun, 23 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742689793
