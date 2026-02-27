Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1580E3321D4
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772171694; cv=none; b=dqqPT2qSdSSnR7lBiv1F+4keSfJc+hSX5u+of8JgmwEDnWfjPFl1U3OI2hsOujIPFlqaAzEe9r7k/JOenNRsUiJpsrQJ/awLubBEVxdzh6dxjQut70ZnRgWfb3rla2t1Pzypzr6M3bIV+zZ5IUkTPCUv/Tu1zqaq0KeY23pdSsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772171694; c=relaxed/simple;
	bh=Ih6XffDSY83AqCfHRwvJbGJJikqEVyjYLoYyK+qqRlo=;
	h=To:Subject:From:Message-Id:Date; b=sBNVhA0ZeujYiMusP1HR0Cw9+2cd06epfjxz205mOCr0SmRky761PNb9cPs6M8eecO6AfBvZPnqlzTw95CUMHfYF3HGnHJITTq9gk3uBQZArs0IdIVEKOXKSk+SmyxbryHOeBY4DUMACQ6CeKn8HSTMoFqketx1Wt1FTRiw5MMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGhwH7s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGhwH7s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A9C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772171693;
	bh=Ih6XffDSY83AqCfHRwvJbGJJikqEVyjYLoYyK+qqRlo=;
	h=To:Subject:From:Date:From;
	b=ZGhwH7s60lw5O37ZyQIbo24Q5XqXP2B+MFBUM3j3oRjiSiyi1b967gM04E0cf3lJm
	 NcVcDism14Qyjl/gZuGor7po0pNONcVkzJze25A2pZud+VgSz5SpNogYe9FSPKSb5y
	 Mb17yjl/IwphlEgPNd7Xnvk2yE7KjFRkF/uzTRghw5xX1S5SqQ+3vLv4p3Q47As9Vb
	 zFM0vQD1ugZgrntcPKGzJlVv1R62vu7zcGs7zzzEE+salnrs+7HkUlIjHyxaYM+81w
	 ihcJjo3WIw4NQWvK8WaB55ntfvISMCH1noBRcult9/0JxyU/GAlbyxHFW5twCflmL5
	 rESgCkYp73mOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DBFD9E3C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217169358.26449.11540335878449422423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa33a78f07bd42b40b520dfd4d00c086b74c5d6ea2b263aee9c7d62ed1069dda
Date: Fri, 27 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772171693
