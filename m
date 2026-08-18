Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454FD42049F
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787042434; cv=none; b=tmt2tMHs7IwR8vnajfLJFgKX5HFGU7d4S14Jtbmk7fR9YwCdoFYDswzW/ri1XhmCFis9L/YmEJTMM1RFyUhoP0P9Pm4n7xBczu2PFZ0ZxGkd1KB7dfBMo5THDTF1is79zRRuNhiZ4d4DHym3jG4lpOTQl1DasHzNe80WPtvYIhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787042434; c=relaxed/simple;
	bh=p8EI2sNBHRvmvgzDHbOfuYC2sQm1wD8KjN5UYDlJGMY=;
	h=To:Subject:From:Message-Id:Date; b=kaXqEaHl/Ju4KexzoMrR0pjfw762hI/fR13d4HtCBWpqtPxjEuwYvlk5jkFe+u2gczNIszBPIExYWsA9KFhJngjiYZ0ZZvBUh39t7PumNEe07zKD3N//r/5dy9HE8lneJfPRe20PuhZBsvGvQV10pYO3Zbf+AQfSdTgr7lkubEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCsr8oJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCsr8oJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38B4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787042433;
	bh=p8EI2sNBHRvmvgzDHbOfuYC2sQm1wD8KjN5UYDlJGMY=;
	h=To:Subject:From:Date:From;
	b=gCsr8oJHhJuSUY+nSvRj8dfRQAS/ZJYbOvegcNf+G7kWNi/2pvWg7gbo7dFY6ypFK
	 A0LmnKfnxW7KttTdQBE+PLspvvFI0BkbwH6ay3LTv0McoQQsdr1NRlyJWosPI84ooT
	 kGAvXLMWpp41HrNGGWIyoDBU2Y7KuyVZyHslyMsHpHUf+wgOGodwdr5Ya1FG37qV7Q
	 JCZ1C1vpIO9E6jwPZw01t3Iu2UDZgezU7t+OxjG1hwKbFkzmCGW+VhSg9Dn1PYZBA2
	 eUoJ+8WGK/ju2fZ1RF0o8CbymkMGRXRZsh91PXrTBVC923yBCycwLPlf5FhmryzQ2I
	 jsuTbQ+AEn/tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB995C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178704243369.14132.6243183291359257652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcedec80cd638441f41a4dad3f9ff13f527bec2a3d3083f0f1625b9669786a28
Date: Tue, 18 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787042433
