Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216541F4190
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767465834; cv=none; b=Dw1zzfPaCAkb52em2X4zgZ76iLa6yqOmI3FGARerBNE+bCRXpPv1DWhRtbkXK+xbGZZ9ivNOmJdolwNlkBsgTcYAZCvqpFYOihI8v7KVHhfEQjeB2NnIn81xPrpvbwF2s918txkhGPq45eukv7NF7/dL2dS9KoGQ0k27RZdRQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767465834; c=relaxed/simple;
	bh=RkHTf0g+Suj4y8j8rEFml46K62k7xh6WjAO/e0Y0APc=;
	h=To:Subject:From:Message-Id:Date; b=ArFFvj1GrJWopP1/vRjhTpKmU48dm0Rb0ddXila3JDdwUCE0jr2rewLZS0cisZD8mEB8c6OqZsgqlLgnlWRWv5vWZLb90jPwWJj9htr2pbuKioDcBpSosZKVHpHqT0WMgHB+/oOitgeQt5G110HteIgubkwyfUODag4tkN0MlsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv4TO1Dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv4TO1Dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F39C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767465833;
	bh=RkHTf0g+Suj4y8j8rEFml46K62k7xh6WjAO/e0Y0APc=;
	h=To:Subject:From:Date:From;
	b=Zv4TO1DpS1euO7HW3+y3/U4/fx1ltQr1itT0c7LnEFFFQeo4fbN6BJfftAzFqOpNK
	 sYQFWM8Uxy7+rOlRWBYNSajNll44TcEKmLHUbzano3oJT8sduKlw0HDfit8OB5lgKs
	 P9i6QFK1I87yHUd52gTAxdy+R4IGOiieZt1RTjIOQxE1FnpRwrcX2Of9GxfVTGNEte
	 U2YrV6go0yhRFHr6foWsamSjrfarkHmPr9yxa7gznjlb6ai5e62VFYhhR98/8b+NsU
	 UINQCpL163GQFCabUxFvOnSA/KbzwMe/5YD6SmMFdI2OOFH8ACF9bDNWiKCcUcEtHv
	 zdspV5kK/uxdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E540FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746583357.23830.5583614072944854138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9f45e71279f2b60bfd606cff4154049b7abcc2ea3625d0f7002c4147d675b7
Date: Sat, 03 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767465833
