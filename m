Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2834D757EA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783989514; cv=none; b=a/EdFjHCHhWxvElOuyTpPqPo/Npm1TegGOIayNudpcCl2Tz4Qy+57Ica7hr/O/MUJDOYb0hYhBKqgKjiaLYOl8ZHXCaCeJdQK/pH5JFq2TPEVDrUKX27tbU8ExJ/wAADnJ89lIebp/nSKc1F0N7ywA3SMVDm4GdfbRn4sqMaR00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783989514; c=relaxed/simple;
	bh=IGNixx+KIUSjXj+ID6zouqlvUmB1fMQRBGD6T7xD3gs=;
	h=To:Subject:From:Message-Id:Date; b=jGxq2aOi7LradmPo6FSoCrW0dBrHnan/cdlGjwaPdXyRHYpRotKwCBOJiwv71uRjVhFZnBOIPsGYsA1AW44BhZBOMivreyefEltwYMCUGXm+2GHkdNT/Ed+G/mBuJGSurP06EC6nV9z0oToDQWFNLd/aXt/r4lylLvc/nLyc5dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPifUI1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPifUI1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3A7C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783989513;
	bh=IGNixx+KIUSjXj+ID6zouqlvUmB1fMQRBGD6T7xD3gs=;
	h=To:Subject:From:Date:From;
	b=KPifUI1P+o54AUuGJ9qTCox44wgldOT/vSJXwRER6U2ImaiYFf+FKQH0Lvj5BPEXf
	 Hb5MC2bCicGt/TEDv0wYTFmpaFRY2OjEuEsPbMYLMRrjFVI5JtVUa84fYRJnxuUdxf
	 3mNDhViuNPR/MgH1Yshg/bww9DIr0bQXg6ZgEEWxc9JuQ415A90vZPbNIQC2THgOUK
	 /1N/SufncUBar2LOk+yyUcP129EFhtrJHuQQixCGscL9fqUMVT5xlJCLaTtuhgdF+w
	 /MkRX/UUWQmXlUYPteDNKC505T/WGFAKsmHuyckvCIIZnMJ8tvxHnsi73P0gdVELbH
	 yjASHHrsPbrrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC77C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178398951368.13294.7679318095253361993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2eeb5422e50274780d5a5d12788ab0e34111a097dd0ece30c7a95f22477de4
Date: Tue, 14 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783989513
