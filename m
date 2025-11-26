Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1124C313E0A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764181974; cv=none; b=bf6He707heVAQwf20RdLeDKO5wz02aaFkAE7X8uBmVhEwy1mhBzTEAKWFd+9CE/A/HflXekBTbhZu4eqBQetIeehmiScIRFu+ndu1MwOFSW1B8dWGWQ2PeoNTa/ejbGPND0EW0LndIluhpRvmFDCd6YpMpPvxvlnBTEc+B/OA9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764181974; c=relaxed/simple;
	bh=EChqan15EZED2BtniWPmcLY5otTmZ6sBcd3EodGaQC0=;
	h=To:Subject:From:Message-Id:Date; b=DyWVKamYPfE6YeeRKNQ2sGkXkxIpFvKpgYA7l39nHLI4xcrUQ+C+qJCv2xsDVeF54BGqEZ4M03BzCXS3D8qrg+JRoVeuIN2a7mPgRT08Ht2OSzJDx67jtTsijXHqMVaoBXCsK6hQr8NIW32cf3sL8jC7NBEWAoaLx5S0yqkcteg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsugi2Ll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsugi2Ll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A192CC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764181973;
	bh=EChqan15EZED2BtniWPmcLY5otTmZ6sBcd3EodGaQC0=;
	h=To:Subject:From:Date:From;
	b=hsugi2LlGHBI8JhgNcGY6b0zKymZhB6u/k5LGKqe5V2JTgtNoVjLNO8t+PBThTnEz
	 jpfaFQ6OvQi/kukM2io9B62o6KMZbVQfqzRE5/XucoFBXH9o2WgpYP68g6dkXv83qs
	 kzrjdZ3ODAL/gNdB+o1p3lBLH5v0w4VBrfgNXPy9+04NsNmqMINLa4obAPfLVKmJI5
	 i1gXNmWYdjWXvEGBfu7jbiOu81MY1Uxn4Nu7GcuDu/rzViYcFs0xdjIqsk12Tf2INe
	 GfnfvrRtZkDQ76npBdfVih3UBgJ89TeBpb1ywS1ZhFCzSLynnUHJSxrDPJaX4cEHIm
	 HiMgbPbuen6tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC0D1118F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418197358.32309.6031492121152480252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476537a3f2fd2d7574e8eb7a98c72b93e57ad06f752e038c294e2bb44cf8ad48
Date: Wed, 26 Nov 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764181973
