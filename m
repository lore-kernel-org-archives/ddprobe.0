Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CEC2628C
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752684594; cv=none; b=MEhznAkY9RPXhNvDAGznE/Hxw4YLXYIh7XvBODPniG3757TMh6hl67YS5F/a5H39lIDPnFAzXW7322GYMC2B6MZNk+TpGGpnAxGMQh7/ppbI4IIzo3emX+5kDArwYvzZyBzCrkXbGSMeL51Ev+8e5q1TXftXw5tH0VPdNFTsO3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752684594; c=relaxed/simple;
	bh=IFJDb4zblz3BNeDZ8ohsqWMOad9MiXVJ1pnEocpnuQo=;
	h=To:Subject:From:Message-Id:Date; b=HYk922+2nepJUANkl/Na2oudrbDNGeSt9EXrogT0CccSXh4J6FPk+CL/pFWtwAsZi9YzRnic6vEU57q4o9HpGciZZ44kAC/1AcPeE7YpsHl70ODkJWW0xKVTbf+NnPUZLoY/kCM3ZQB8ucZ1Hr1ePB8D9gIQf79IzLlaF1RULqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5ehkMiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5ehkMiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED17C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752684593;
	bh=IFJDb4zblz3BNeDZ8ohsqWMOad9MiXVJ1pnEocpnuQo=;
	h=To:Subject:From:Date:From;
	b=G5ehkMiX7eb1lExjgWR4iteTCCqHfwylbLc3yLC5Rik1F/t/MiQ9Z4tO851+QwveY
	 UViOgaJ4J6111KjUtIYEh151AkdGDoIyhkxvEbdIm+DlKMgID6P6BNlLgSsqs6Ql3l
	 KKGs6yvsMswYC8H4RB4YxPS45OFZVu52DNI9gR00Zz/rfaOCNIw/297e+1twDr4OG1
	 ZOi0Gr7bbJ0DRxDn4hAD6E+XTDURLGMY0Wgk0lF/TGzLLMVEVo75Foy/I/3kSSQ0hn
	 uqQw9cyPtY5FA20DMl0So8x45LQlwaIi7rwVlr2KEWv0mcko3rEouX27Bxog/TrSlH
	 ToIg31HH/1KYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE61C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268459358.7876.4245092721718103487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea1e732af753533cff1faf238bd71db9d1517098d4a99098a2f99a6beb411de
Date: Wed, 16 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752684593
