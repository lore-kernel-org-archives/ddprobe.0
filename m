Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796D53955DE
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791476434; cv=none; b=gmDhAwykr61fBFsjflfGP/1aAs1A+4mH6RGyw9kgSe2gJjn4e/ARWrARxrTd1h/bAht9Lmb1CCLzod1yyMbiTb6O6LHpFUn5bgy/srZ6HWxb3+T3ndzpIuxmekY66zoM5NW/wE9P0H3hDWN+bLmX0NBxo1NGMYM95MAz1k2xn0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791476434; c=relaxed/simple;
	bh=EF7dPAixBXDVfxCnTFKR0MWsGf63jdK6+fmCTF60rKg=;
	h=To:Subject:From:Message-Id:Date; b=Ml5nZO1CaWOv2O9SUPrgCbv0GHBH9nQ024ME6g34T1VZ1CIVwRddq/OSdNRwhj6Cj24hZTnobRCEkATn60OrGlE65a20KdlbAl0dAXdGDq8Noc4rFkI1ifcEahhIEZz6pyzbtwWgOfgSagwveiED1KpJMwCseYbwl6elh/C+HZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peCNmeKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peCNmeKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBFCC2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791476433;
	bh=EF7dPAixBXDVfxCnTFKR0MWsGf63jdK6+fmCTF60rKg=;
	h=To:Subject:From:Date:From;
	b=peCNmeKbrxaq1m9yVn45sKkbABe+k9spgA8QqMinqBWm4sRoVs4M3RZlmd23oYUdm
	 f2zSUw1i2Q8+I/eanCrTaAxBATtHoZBKEJyDz/yURyIhocVRnRsBoYNz0VK88rQnc4
	 PyIIedBUTJZo1s8bKrxE3kwIsv8e6ME/TGzLcGh1yP72XKqaxe+3AuVQJ8kjdANbP/
	 M4yHOV150SHUh7iYneFmGqhA5K9p3TuKiffKvYTHzKGfAy1SLF0rfdN5GA3pkM0b7d
	 xcyPEPs/58T0LkF3ADlfZkvGvdYffW1bo8qLL+ogqtgpkDu8nEc82Tm6E7ZD2YgHTq
	 Ew7nSX/DzUxdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0027CA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147643369.11794.3121590035757535635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5966ac95a4b37c9d1c0cdadc4a4f081912da5c487f01ac62b4e15c9c88f6cf
Date: Thu, 08 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791476433
