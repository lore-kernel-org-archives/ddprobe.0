Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228C02E88B6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764276174; cv=none; b=T5bXCnmK8ZR3tqnH+UfDvrySbPhCIzli5VYI6YRRv+wP4GqWr/yj9bs8jgRKglcR7g2/lFprlqnRb7p0rXKBQHw2QVghRIOObiBdNbGkTRxbvUi8QdN9Kjmpug1r2qBkQJln29tjiNwOFIoE21HYf2XIQTe4QbOBCZkaQeg3MQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764276174; c=relaxed/simple;
	bh=0VaZU/t0CLckuYL6rks92hkvN++KSSgKMpRjAlJVyUc=;
	h=To:Subject:From:Message-Id:Date; b=Qa6EXo2ITQb4BahkZNEsBQQL7uTBpUepa87ycEOdWoJaeIELPKM7cCP5z4ZZ8IZrNMSkOPOSSJLLS5YuY++zj28FvxTCsRa+b3ZveOvECgRNpDP+31/CJ1+VU9HquwOHJk7e1GftZzrktpGn1AunJeydD5knwy2j2dJQxEhsaag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/16oRc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i/16oRc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE69C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764276173;
	bh=0VaZU/t0CLckuYL6rks92hkvN++KSSgKMpRjAlJVyUc=;
	h=To:Subject:From:Date:From;
	b=i/16oRc75zckoAkU76bnSpx0WMSy6Nt0ALWr42Aym5H1m6uP7+hhtdQuyjo6+jHRq
	 U6Z0lKXUpAVHof+VcrRFK/eCKcXJRnfA27GWRvLml+jJrKP44+l5ZfBUsYte7NSG82
	 T0t5aalH7UlOtiX5Q4zf8dTfsewn+gyVyxchurHACHRs3z0MWA2ebGO35Cz2JKkFk4
	 I2r6QqOJZymSsi328Pu/AEEbjVBU87XgRzwm8RaEAmyBQA2ow1QodCU02kR1AysQiA
	 AJ/QT9snOscKeWLCgTssiAq0SlEURZ2H5UYs+b8LiHT+53xYLpkMG0KyJoB4uIO4cT
	 xT58jfsI3iPrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CCAD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427617358.8866.5182003558854599609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80ee6f3ccaad4a385c18f66f7cfa99e4bcb5d0c4471b8e2add1aaa102156cf2
Date: Thu, 27 Nov 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764276173
