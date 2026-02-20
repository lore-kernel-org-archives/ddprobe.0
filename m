Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF16231DD98
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771579493; cv=none; b=YUX9BApYsE59EKT1adIEWLjgFgvzxCup1g71KLi7FNUuFr8mubNhx4acjlseeb6P97UJAQpRv3EmE7wwHol4calxIe89MaIgoPHArRvF7uiWmwVSF8lGCX7kIi+iBl7bww9c4W7+qHDXDE8bz3HpZVgdMUiMEUryN2COa9wFioc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771579493; c=relaxed/simple;
	bh=EGmGevAFfQRDBFCOAqW/9wiTBuJ/U6Hun31PUiVty/c=;
	h=To:Subject:From:Message-Id:Date; b=PCJQDR5rBU63KDfyaNs1GXs11nsq2juwOxWJd0HAXxCQoyAlTYulaHciMoWbksxMnMKIMFATr+ppaTkYwdTeGtpnm4PjT/fTCD968WotK8U57dCklqHh5rsM4uauIeklVgVDFePTDETFmc6G9dM0h7FdOCIxNWn/K7W0yT+ki+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1ANasbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1ANasbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C39C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771579493;
	bh=EGmGevAFfQRDBFCOAqW/9wiTBuJ/U6Hun31PUiVty/c=;
	h=To:Subject:From:Date:From;
	b=R1ANasbRWdelLJvxss5Iu+RxQZIWJXj4EpYDKEL06ZADR147bW/YP+dUqMB5WeBzg
	 T8vRkVImRBxNEGzfOvKLCFDA0xKO0nkHwIat7X3GzQIK3GUiAtYa9L3opxppSkJ+of
	 /SIGpMRL7MPKzK5L2kz2Vl/Cmhkci0kfxhNfJsWradZOitiqgcTuYJc1odAFEzd6dH
	 wdAJkSiO6k5pPM9oryKFUVl1JiS06sSB5GdkmPu4pcZQL2ClLgrHM4HlGnRdmTMCv5
	 KteBsYP8wbRai0wUHUFkw2fB2TRVaRM1Bg4ewKOIaAyJcuCSct/QVyzxEjVcVm7q19
	 E3QUYLn14YmtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91888C55170
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157949358.8452.6915091478862480209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2367e703b84c5227fa462cb1795100be44f6465c7c90f9ca8e566cb2a4744b92
Date: Fri, 20 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771579493
