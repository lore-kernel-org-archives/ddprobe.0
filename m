Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427891E51D
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726930554; cv=none; b=dbwqby/ZOtaVeCWc7brxXGMZa8IMrrYhzTEBrDnvWgf4OwRXy03dQP9LeSskUTeIck1cMpNPFQHSVatS8F/uX/Z0oYz15rShrCLtXgWJoYenXwmrejhSSwRgaynb+6+Hl4O19LULY5HCS6/HKpaveAPGoh020Tj0MkxMjyh4iAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726930554; c=relaxed/simple;
	bh=ivQ64bSkeGYgMhl1r80X3NCtBsHIvdUhE95p/m2j8jY=;
	h=To:Subject:From:Message-Id:Date; b=VJAjLPit068MXlUc0qxCECnMyQd/izOfXJ9ZxJj0Mg/XIIIUyg7DtBEGuguCUPHpKHc12gwjY15nC2xuwc/xFMuwzswX9la7HNOEtzwRljO9EftZEsOVfEcaXNb/JhvLmxPvQnwrCFvG0ykuqA2N8JYxaITbH7U9NAZ6jTMXToI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHyfNmoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHyfNmoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7785C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726930553;
	bh=ivQ64bSkeGYgMhl1r80X3NCtBsHIvdUhE95p/m2j8jY=;
	h=To:Subject:From:Date:From;
	b=bHyfNmoS3fwuIchi1rV24Na0EcDtRqgdX9x2cnDcV5vuOLa1Hnlb9RUN/GnnKzhmX
	 Fl59rPXwo0x6RITu0HUhcyy0aS+BDQ4ACj37tuqPcohG1YraSs2TUV+tdBvvAcQbz8
	 3PLQHkan0PSwN8WQJTuAzGZM6JG5oauRdNswWaDNzGpXNgt9VtaD2W/I9W8cZJueej
	 goxUnrlAt4SrvGetb9oM6xIBidmCVOmLuCCgeCAwjipha7uRsqWTTM+GOoYpQc2I/r
	 rtGY01/q43Ddm39a7u0kvGn2vSPONIrOlrGfHuowZBKp3Hgj9vRth27Avn/+PNIBwO
	 0s/bilF/E67YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96400CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172693055358.4947.6528102971055873138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e2c24845bbb183579e4959596a37d8373ebc0791b2bbcb0900460e16c1c992
Date: Sat, 21 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726930553
