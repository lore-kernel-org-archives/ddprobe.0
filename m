Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281724A23
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764387174; cv=none; b=BN9YNyCuirjwSFdano5RzxujjPrxDCVNFYL3KZ158Eh6fq6cB7D0ECSTuwxqcDjiQSlXamkxfq7kQExnDeeBpwtymhSmwDAroe9ecrMoEKEdZDQa1xhoOb+3NKGlHPxxIDVbXu+i2rQfMjejPiIYGMJ+tfb0I47/zsSJe84HSAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764387174; c=relaxed/simple;
	bh=YmyxLWWn+N8l+7YsRq63SMLuL1Ek7DSsxZXJzaXNhlw=;
	h=To:Subject:From:Message-Id:Date; b=saQByTrTxzJPKvKnRPEJCdY+PkZtT5GDxfxYlmk4tA5G+yLduxls20ctBdS7azq59aWe872zgDCcvdftRsJuzqo1+fShjGUZo9oqi7xTu7xDQnlslsSaK8CGP/LwQTkvHTuJdHwDmuhDTs92eibOFHyCy8bA67Qyd9g6fuStOQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkI4Ilhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkI4Ilhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF659C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764387173;
	bh=YmyxLWWn+N8l+7YsRq63SMLuL1Ek7DSsxZXJzaXNhlw=;
	h=To:Subject:From:Date:From;
	b=mkI4Ilhe2/ezK2SIhb7V+MFMscoD86p4/1RUebuF2xP8Dk22/UL6dITYEKO7kDf6Q
	 /GXxG62fAAYT3fj4jdJ2BzxROJOfivTPOE+3DVLDctjhQZ8UKYW5dKiz8e3uvwWGZF
	 Zlag3K3doz7NQFtzQh66aSLO2tXDcm/Xc0lDATLVugXUd6GggA2DZv78c+fKlU/j/6
	 h2g7DFTRDj9U9iA0Wwh/adFd4a6PtofkfZ1wyC5JRH+s1kAvR0DXkAMyy6Tb9fmBKL
	 op34ikxprOcVp2+m4ftppbhg3vlfAXVGAP7/rICG6kojaPx+WkdmobReAE/F0c19X/
	 hRuGJlqlHM0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B26D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438717360.17938.6985174157861325708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078c4a371e1e6c2adf590731edac1f5d213e3ba38ea0e44ddc0f62e3133e5ede
Date: Sat, 29 Nov 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764387173
