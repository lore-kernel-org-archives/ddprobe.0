Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610916D4C0
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714670543; cv=none; b=r8w5REYF92UMUz4f+BOYD768aSuMIcG8rv6JK34w1w+R3kcRACjaLRnBpPnFP9/n3qXZK/d7nWEZdc5K8odU04GoU19kwegWuTrDxinnDW+ZHBpSlwIphm0r0BbrWPvjg2lAVx/n43XRcM1eDwW+Ciy2mNaz6Fjy1LSDpiRX1dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714670543; c=relaxed/simple;
	bh=KJ9GEarm75ry4ZDbKismIpsCcoZsKMi30T/9w/FoHIQ=;
	h=To:Subject:From:Message-Id:Date; b=MCZFoDaxNYMEy8t6NOrRUnF6JzfKZpRb5O+NiSvggCDzoeXFR3WW7qDfX5APf84v2esYG3Nb0g+my+XVERoeOzsxu95VCsbv59glfBJiVPYFkOx+80XaMgf1zhNZ9g57twPLfT9Xf7I0f8DeF3qNCNrTHEvPclozzaxD25KdsfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmtrO+zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmtrO+zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE8FC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714670542;
	bh=KJ9GEarm75ry4ZDbKismIpsCcoZsKMi30T/9w/FoHIQ=;
	h=To:Subject:From:Date:From;
	b=AmtrO+zVAKp9B6xUz1f3ldKvncACO2mSgQW73lfGmAPbfCLSG4/1//hEtT603CKia
	 o1j/pKoJjIvSaU8xl0AigZrVZLGnI8DHXKSpGGnvxYfL9oqeA9wAAZpdjfUtcIT/+k
	 eTaB4R40atLF5L35sTGs2sVuUySe86+iEiQdnG8XPDrUal44XLL33B9Ja0RBBHhWyD
	 ZrpDqJY+UUmJWyuFoSVlgYotZSgFLxdK5x7/rKJSYL9p87WoEAWoeK1qWn1WB25m+y
	 P29MB7a+RNRMcDXSapW3tjtr1u3QNFmOryoh6R6BX25kYeRo2psknmzlPFFg+9XfK0
	 Hh1Rfyfii9Hgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDCCC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171467054277.15428.9268149482539920703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e522b099ff4c30cd6b8072d693e18aa04ece93f1920db412770f7824ce9e2099
Date: Thu, 02 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714670542
