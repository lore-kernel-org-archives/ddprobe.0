Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23662249E5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756850994; cv=none; b=jTCTXYtG+amfS+stJrWnTV2yVpN/8O/kHmSOwnB+wHej6qtOL981peGELdFflNFc1m0s4YbqjRsLuPp8Xb100M9MMOSOAtwGjgiY0MmVd/B3vo6R9xS9OWoFJgPn8PGJmS6mNaS9ocU7kA+pPNFEEIeWE6zve3EE028K6Pct6A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756850994; c=relaxed/simple;
	bh=JYIZ7Hp29ndsriNDG/EzU0scfCbJxCHenLrp2MkGP80=;
	h=To:Subject:From:Message-Id:Date; b=W8PFZCOc5cwLc5iqR+YqO7sKqq+TkyzrG1FDONXrT3R4q7Kj6nPD3p0UjoDtPrAjzLneLaQ0yPbd+z8Zmr54pASxh/FTV5FnaUIo5XIOmvn4CEuP2c4UoB70oKzKHid2u9+hB898EEiRnW6/mChlmbhGlbM4Pw4pgdD6z/iQrKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJnqS09l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJnqS09l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A587CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756850993;
	bh=JYIZ7Hp29ndsriNDG/EzU0scfCbJxCHenLrp2MkGP80=;
	h=To:Subject:From:Date:From;
	b=bJnqS09lFaiic2SI4j0NMUcrqWiDLS51twyBi+wcXmXIYenT1OXYvgk89Z8vNW5DH
	 BV6A8/Ii/zp3wtsp4FsRwSvc4yrkb+5K32EHoekBK/K0TMm08Tf++GlRh+2jfMn5WD
	 C9AOBCfWZir3LvcEoJbavGKXiqrgIyWazcYna+J4NLFUrQMXRFpWX8RM1i99uyBQBt
	 m3edutBP+yzYsuTk2cMu2Z41ftatESlGrAsTBo1kSsROoUpI7nEEPQY22TqOjcuKHF
	 AfJ+kFGX31hxOJUzlXk2nElbxHgnDQATnHgK9gg1J1QFAU2ob7XKZDnrfpni1ZZcmm
	 ECWV43YofnPOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FBCA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175685099357.467.11919248294684921363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feb599372a7a06b2c5c2578c38d5550b4bcc4a7db7eb2944c6b8ee19f54756d9
Date: Tue, 02 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756850993
