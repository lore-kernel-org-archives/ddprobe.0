Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C1B18622
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736605554; cv=none; b=CClsQfg6tW8BXUlo+hx76Zmc9+0Pc4UFzOY3jUkTz6nMDvSkTgUdOIh+WKUiTIGTkNuMpGpNneN2zeZyEs4Bye+0AomFiwEXSDbW7SSNBQZRBREeddWEmVjF6SA9p5f7dLOKPF8xRNHT9YVoMlkkZdAhqIZF2GO2TMWNh9qMvM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736605554; c=relaxed/simple;
	bh=T3ir85dX937NSpEer2p4ash1afnRKO49SO22HiFIQJA=;
	h=To:Subject:From:Message-Id:Date; b=p7wgGw0bg8d+Q1OVAhcUwJW3ugt3HrmX/9921bClZjl1+5+KTsc5DjX7eYD8/Z2VwufCtBeCZDCjv13eZ5jCs57bCAxGiMdiMYeDBM97rLmz4bS+q9i9A42R4+adcB/5ZRUl7S4+vBObENvoArV1nY/xqMyMeINRwdWaYzN0x9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5Nw4MLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5Nw4MLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1FC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736605553;
	bh=T3ir85dX937NSpEer2p4ash1afnRKO49SO22HiFIQJA=;
	h=To:Subject:From:Date:From;
	b=D5Nw4MLIVo3z/JQFAkI52F7IoAVo5Lmd1T2hoW1kxEZQeD8T4PVH/yG2rMoYnu1O8
	 hW8kiMSEvtO9sUZZqTuXFocooFJftxWAA48avDWyNK4Vm/nH8wmmoI6PFG9+TiDE6z
	 igpxN/bAzEcw9dQeHrLHrkvMbgpQGss4ZstxOeZkvPEsNB1qjRfaxN+N8wp4GBBCte
	 ik7O7fw17fdGD+vwV/EkM9s2+ZivpfCVqsYcM9iVDMILwiirSMFEaeWSLfjUT+XsIz
	 wNlr4tHKLf0Qil/OjfZauIfWY5V3qG1pyRdiR+lhtzvwSfNFOiEA6xBbWp0soMqm4B
	 uw+b+U/Zsgw+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D61E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660555358.31135.9334843048620056221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cef96cf524d943eb4b320c06de3d376e560ec1090814f7d2dfa6eae6a95c9a
Date: Sat, 11 Jan 2025 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736605553
