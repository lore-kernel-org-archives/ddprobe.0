Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181AA183CA6
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749776394; cv=none; b=NS5WKRrhOFEHhYzjgPe0Jv3ogNJ2bd9FkVAMr1S9DTVRXQ3gI9YryEkm4g2IhqP+Ic1vVlhJ6tUww8c76e42YHdgk43GWLb92k7hr0A9vtiegCEt9euec64FfzVW4/9jra/SwUnrxCLauXxcCrz94lONrvO7DexNT6y7rDVG7kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749776394; c=relaxed/simple;
	bh=Xg3jVCPnEXsDrLZUhsNPcXEi9M1XaCUpYyADQakKYEk=;
	h=To:Subject:From:Message-Id:Date; b=ORIv8lP7KPYbEb+dvzGNHe3CWcmala28uqDxFCDITVuqHe56PnGTer6GNBjH2rD9Pr43IUI5Ue/55ttyov3nwzs1QUgCbBm0SaV4m7iidPw8pmg0j5bbp9SCefb/Q/z2LsXSP2PmqVrvejSvOQJ4hsfM3uKEE3fOGuvVS75w9RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPBwrYUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPBwrYUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A191FC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749776393;
	bh=Xg3jVCPnEXsDrLZUhsNPcXEi9M1XaCUpYyADQakKYEk=;
	h=To:Subject:From:Date:From;
	b=nPBwrYUgtIZWHz4Wi4LTs0zb0gnUAlae3V0tQpiLBtH6iShefqcDPO9YSh5m3Qcyw
	 PJh2Ht8RmxAsPyGDWUAzSgt+tWaBxVYyIla1s/I4nXqxYYwj6/2OtcX8ggGR4A1boo
	 EYaxqRn2daDxtJdRHns/jFBi7W9pds3EmDeGHyH10AcCxLLiLthQ58Z9qPnYfOpD+0
	 ntOtV+ASTQvNGQVEQSE0ippnFg5CS6jCNWCHHsyRBSx8YYQ278lh713hmNwlVyv7aj
	 ooXRe83Oh1890hv2F3GMIKruumDdiaOu1uj593WWaiFrMURK/sM8hb2OpHk5jedyhM
	 G7m+7aEQonSqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEEC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977639357.9860.3013505170321607663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70468c63e54dc2475365bc8765655eca4496824e5954648417115d3f8da44c4f
Date: Fri, 13 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749776393
