Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA3F4A1A
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 15:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715612543; cv=none; b=mrKgaqlrBFiHVIszkntylSNOHOiBS9yMot9eQCnkIoGPaDC8ACiPSpg6P8xQH5xpAkN8hYJ0Dn9QF2XClrD2/XsukbSSQqZQLSCpKpjCWh2Elp3sPXITLbLYjrPQeBojYmHPUnN/RGiyGOGJtdeJmdl4Vp9pUrCOPGUz7vB9UKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715612543; c=relaxed/simple;
	bh=HGQ8J6S9CsEyeiJL4iVNFcZpshZBPyl0z7DKg7HrxRo=;
	h=To:Subject:From:Message-Id:Date; b=TDvUtkoLCj5urHkys8ilczzrp38h6yiSq6nUF2GnYztmc6krTH7NvrZ6bswxLTIXkMT/lds0mpHNxA4000A9+e9Sa4NzB6u+FiNG0DGCeYqbwuAQcZHyhwVCD49iLPkbMtESru0RIAoXFf0bsKqYqLm0sGzZE9yXCUe4DC8TU+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9i0Pulr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9i0Pulr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D21C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715612542;
	bh=HGQ8J6S9CsEyeiJL4iVNFcZpshZBPyl0z7DKg7HrxRo=;
	h=To:Subject:From:Date:From;
	b=P9i0PulrucVvP85IXFa+B8e/Fj+hwuv9O49xBw9aNu4ZbVuVlxIHx6sy/XWAvdh57
	 naZ58kbu2r3vbIwJbTnYGwPlImPQCOmbvpJvANIK1r27tY8EFRU00DjXI0SPksxQsO
	 AiWCcnQfrFaI2tpneDNE9OmLj344G4wjY1xkQMeYh4Q+PBPejNKDSzVvR5pmF1i8sR
	 +h0giyW6dhedUlsSZCnXuHQukvbuE2a1FUQg5K5bOJFTwMD43yXMnX+KpIB5JdiXkk
	 pLD84xSQHlpH6Y/tsLffBDMB6xPqjA/rABqMbhqW72F5xHjsv8Q1d6F2/edYKrBv3e
	 DqUS688x3ilHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5C2DC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171561254285.18208.5247275877907473303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1707f77b9b729875eb0d804cf989f0658304e32883772df988a6f9f0c19b306d
Date: Mon, 13 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715612542
