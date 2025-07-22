Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F115F2E9EDB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753192194; cv=none; b=m/nMiz5oAoERoR5diP6Ny9AdzfQkqNHdasGb5naXrt1qb3ZmseUPwIx6S9Oet/J3CvCCd+R+zhOUA2fiFiOoE+LBvx+QLidtRzwxRounrSH1pJcGFs4dBUGolZulsGfLZMCwYv002VTYRU5hwJIK2WYrl8uv0JntwySxIRDFHHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753192194; c=relaxed/simple;
	bh=aS3nmHgNUm7AYtEIQdUGSK/99dQsToPuXLXBXkmg7Ns=;
	h=To:Subject:From:Message-Id:Date; b=OQDa3IFjXN/VGlRba9/4W4rl+2RI8Rv1bmCO5OHZcT2EmYy7sULtbUSwHHtS/OSol9Y8A0eHaDTyhMcMhGI/ajcmJPb7EuwQ9eUOTl1vamIdWNhq6Z4eN87vKzjg+iOQZwn8BePEYcH/VdJSY+Dm764EuwxgMrPW547SqBgMfc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzU4Em4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzU4Em4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB6FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753192193;
	bh=aS3nmHgNUm7AYtEIQdUGSK/99dQsToPuXLXBXkmg7Ns=;
	h=To:Subject:From:Date:From;
	b=uzU4Em4jhHtBPRT4EW4gaSewbvd1yOSI2PMBBjK64zHpdWlgq6HU+NSslh3nqG/57
	 j4X90Lh2ir74WcmsEK8xdHki9KknJ7v1Woz4fwDqJeEUS6lUGTBaNvZpi9+Vvb8Q34
	 Qw4gBo57s4bnJko4HsXaRQTME6kVlNxEkJZBm+76z/H8wTgcenZkkqVN+lG8Dv23eD
	 m6BppEgCUM19AX/+5Ey2E4PHsDgI3yYUXS5qObVPVWrWNfUUl0btOI8QQ4So4YUxqu
	 ahUou3p0+yocrxaxZA+0R1tSuP+rx+f8qTQkvuSvCued4zwwy/bRibratmO0Z5JAw2
	 4bYK3sdcEr09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C0AC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175319219358.29390.15561158525954702306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e5c1328d37ef88ec11ad97efeb0eeb5aba82b28c00f3d2a1a73bcbd9858b45
Date: Tue, 22 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753192193
