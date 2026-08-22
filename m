Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D6B493657
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787417434; cv=none; b=h17HfqxREycDK/NuwqCtz6JQyqgiztm0mmksXnZiKztdWbmT/tiNtnA7dMj/Bi8B88hyoQeDr7az/peLdhgCHYsle9V57eys5WLzEaGy3chkPCpljNm+sig0hAvHqhVNVswi0tCyIHZy11QlWPcLtxvsQgrquMMXFKAUDZRjNAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787417434; c=relaxed/simple;
	bh=cFOxCVXfLenZAW9yKk/k07brbkR1jmksq3v9szbxQJA=;
	h=To:Subject:From:Message-Id:Date; b=QMwWn24Bn0XuKtwi4p0T9RkTiq+aGF0k9JxIw2BfxVIrcDKdc+86lq90aewA3j8Ma4jwGt4uOk3EaahDNhLfXvw30kaTDuqJBX65sBKaYdv8BeLaAwMC64qsdlqTKS4Ea7gVLO1shEhQdlLLMV29bu8izCdaoVB/S/vyXQh0HCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaycGWZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaycGWZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D897FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787417433;
	bh=cFOxCVXfLenZAW9yKk/k07brbkR1jmksq3v9szbxQJA=;
	h=To:Subject:From:Date:From;
	b=aaycGWZZomv2LCR2c2tr/LDO8vw1L0B6uhWckPLzySIugxZqw3JsLjNLSWZS2Saij
	 Y4ppMp1rmQ6S+jA2IZciRcy9dxu3lbQSlRhLAEFZI/qjZH0dp83GAAv9iaJMVNRkto
	 MSHda0XQvjir0KPun2F6v4VYO92+ERfTFUkapSf0rHVBPEcFSlOn6hc0h+bZVIE3Tc
	 0M1DOZAvGbmIPgE90g9VmI+Xg7gNExdf2l2G5xagXOkQWeEdeTrBY8o+vnFueg2mJL
	 FynC60lq7b/B3wjU3FDPWadbZ1poND0zbk+O52NuZvjjqvzh70VhF7Bu6Djei2zBI9
	 ySo10SoqVH4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B265BC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741743369.15275.13509180652583012261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe22383f5508c3fa2bcb896f6bdc3c41cb675b2374ecab43e90ea9ca838adc5
Date: Sat, 22 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787417433
