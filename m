Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D6937EFEE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783068514; cv=none; b=Gs+8pAE7SfxE63gBFjU6Vd0GAM67qQmMe1t4BSHCaB54Wy82pKXT0+McX3L6FovtqAQLChNyPcqP/4Vbv6JfaMuJEt0EpHtSGb+Xg4Sba10+F6V5iyfywc5sbTxUlpC390MA9N3KeuXFJ+QPGqQIJTSjUTiX7uG1PHFtqwbXooo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783068514; c=relaxed/simple;
	bh=B+xsoDc4es+fw45vTTtjN0v4c2b4yFjAsm6lj0IjVOg=;
	h=To:Subject:From:Message-Id:Date; b=ZubdrNUBtr9WomCSN79qXOXfi58zkxJ+YMUPEPPGkUj5bhRSFOPTahs2dS5ObIwQpLfG4Ja5dLLQWuRrrGd99mFaTbrOkBbNwRumbmKvje7kXqXNA6uBHIDXuaAEwhUq/cwDvutqL/46rgeDC3QAwyyHgzdggHaTXPlZaNkUCrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiwxf/32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiwxf/32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FEEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783068513;
	bh=B+xsoDc4es+fw45vTTtjN0v4c2b4yFjAsm6lj0IjVOg=;
	h=To:Subject:From:Date:From;
	b=uiwxf/32Xa/aTVJdTGAx9fO1Hhrec0nXOHUfEOeQ4WGWLoUKr8eCBeUiVKLbd4tn3
	 X1vt6+LqA/xqsxCeoCNZw0xo2rBuB0/9Px7oELLhtlellbAWKOKPu0TNOB7LbQTtSK
	 MHzHQiViwpUDwXPnqNXc5Ab/zOs7It8BCfdjI3DYbP8JO2lGuqhyjdzzBkkwmUCoYC
	 MK8RyZ7Rv7cwezgxn8H4BUyECRRhrlx62hWOhgycNpeiA7SPaCUIsNAzss1CvOxP7s
	 PVbnZIKFDCTvPt5I9/GE2chnJVrAXqnhH8jssTI1dmSiFwSMQJkrTGGairVuRSXjSj
	 59f1Lk3Tly4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC7CC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306851370.19657.10449129588460412400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f24237fa63159d93e3deaf79771bff5a738ac7135d2fb68ac8f9ff6c58f51bd
Date: Fri, 03 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783068513
