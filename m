Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666272F25
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719119543; cv=none; b=IXbflNdEBt314ee4Mw8198qVPjnXWK6axGIp9kwiFiofcBps3PeMJPUubrObK7R2lZ/i6mq1iHojRNCkQxAzVDmDNVkj1DRxrtm7DtgH/QfQLy2hQ5E3DHwoaTNxF4mVowg9qDrOFbe9vXwnQ28srQ7RuiH3V/hgUDDXgo9fV8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719119543; c=relaxed/simple;
	bh=PK4NtREZvoVOmgkXpclLcb7omaHgwRXjKKqxC88C0ng=;
	h=To:Subject:From:Message-Id:Date; b=pcRD9WwjWthfsEVQVyPUon6Cu/vVzxMtWKuIPrRWB0YiQ3fcbtOBlSTfu4JzmuGEfkg5bjkUpL/OkVO4b4WppcLjx6qIyTPZv9FFrVGul1IxYoZJC8fpjIk/fI/CxCs8gj4XKnviN0pN1edaTOQCB5G333iufurH1m8FwnqlWNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsBI758W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsBI758W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8C5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719119543;
	bh=PK4NtREZvoVOmgkXpclLcb7omaHgwRXjKKqxC88C0ng=;
	h=To:Subject:From:Date:From;
	b=IsBI758W4uzF1WXXQK7JMgegWoN9HQMeTjqJG2nZo73U/vBffe/gF9UW5Zg/WcWdJ
	 49mfbIE5iRYdLHoY0G0xIq+V0TOPzIlIOewJrzZmaey0Wg57OhGXOxBx02P2KxygM0
	 Y2DWaB7NOfGWZcmi+96iEsswC/nFCI7zEEXyMKKMTDu3kPy2SV8AIW+nUfs6AYeP5q
	 QI5/tAYA+iRpxg17nQhDpXbECR4DM1o/ZKuAiEQPeggj5gUjuKHQhRGuH7aqpZPfjV
	 76ZJKWSsz7Nc44IVo9SjsvCPN/uc4XpkLOYXg9irxDtroftp6dFmuBJ1p1Eu0C9vwH
	 gYY+r3TQCaybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D86B0C2BA18
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911954285.19424.10840384498672238714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef60fdfaa422857beda6192caefe17733a37e2a8b01fb38510ce6ab4df98c07
Date: Sun, 23 Jun 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719119542
