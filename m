Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D56F237180
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750196994; cv=none; b=QXEPgOA1Q5dXBmgZZ6YAf6tY17waqcHnBd62wBRuc49nj1B3htOuhro5cDgu6DV7gJ28fD1lpZ8aCUo5nNuS/omBc7j291rI9iodSMWe4U+zwGBqguCuMOmpjUzvyEuctGLxrZCh1/YomdUTOP+FeFH/R7IEx5RxltsSKc+vYgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750196994; c=relaxed/simple;
	bh=JiwYgI0gO8rTRX5o2hMx/mJIhiCx0bwlGBJp23xG45g=;
	h=To:Subject:From:Message-Id:Date; b=BJwqLWGppQpFeJ98HQhGmGvGOP8f5sWBNC2SOWC+JO5obZUZgnOt35AwrAQQnWl7u9FjxzLi0wEg7YZHDsED2WOEwiPKdYAR+IeeSDiOIy2Bdncw7TlZMS/cCBWsF5o+4ZtmBElWz457gZ8R7w50y2NGUkjdHzXuAH+AlWHmNIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVbdmauU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVbdmauU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F08FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750196993;
	bh=JiwYgI0gO8rTRX5o2hMx/mJIhiCx0bwlGBJp23xG45g=;
	h=To:Subject:From:Date:From;
	b=gVbdmauUI43Wggf2WQrPhLR/Xy4lLEmwNsS9638W7CIZGS4PUjhPfRG9v09cWfeCD
	 bL8w9T8C2ORjZhm1lu79tkCnBZtMMzdq1oILwoePSJqtFA9SuB3KakoQDLcYMcxeTN
	 m48ejKuCmMP6K8B87Dks89nvoSkRq1hqJJXCAdtH1Cty0KZErMiiuzuRbjiaWv0I0m
	 wCqVr1kI+l85JZ9K96ZpfeZ2KiCfG4k0yuy77TBpD+SxItTGSDKI8qXSYEaBE73s+n
	 It1UmnMTcgtjdN2iBrFVIV0f7tDO4NXFahqgMXUZ83K7dATKmBDWVnz6vOBkczj+ND
	 /clIRxCDUma6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D3C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019699358.29377.12629948434103932212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66356ebb86719b00b764341dce3455bbc8b52e71386ce82d960d758c8b1c1156
Date: Tue, 17 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750196993
