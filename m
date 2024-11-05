Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5E51FE0F9
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730790353; cv=none; b=h7NWBGNa7WIRpiCZTpk6dyFNIioXjysuPG/tIB3BooSysgKMMrLNOzcEIafJ2w8kOrLZLtXxUPS7Wu3rCgFBsQ9aYFcwJaSo61Q7gG9ZFvoVG3alBO2Xqa0bU/P6PB2qPzNLP6IzamqoVWfzPaFst7xXx2eRcq5MKHH0P/fhwac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730790353; c=relaxed/simple;
	bh=au9qKZmidf7HybQ0kiQdbtefir1JnvCBMd5wV4HNVdY=;
	h=To:Subject:From:Message-Id:Date; b=Ryq6NNE/aczHt2ProJj8qYIQjiC4px8LRNKoedKU/GCfGWMYyoGp9YTC8MiXvbdW8m20Y56S2GnIKd2eBWrJq9V79Dl0TAXprsu7mH/Pf19o8foQvNWTVCajdPiwlSOCn50ebOQqksguOG5cdtbFfzs0XP3vBxoMz3Y+YF4UPEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RN+CGG+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RN+CGG+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4084C4CED0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730790353;
	bh=au9qKZmidf7HybQ0kiQdbtefir1JnvCBMd5wV4HNVdY=;
	h=To:Subject:From:Date:From;
	b=RN+CGG+0WKKablzk9+7YSKVsotNascCxkk8VS3LPCx2pjHHt8yBf0Bi/Y3sZaeukv
	 xhiAdcWjjeailo12cEoz7dXDMS1D/NXoWTI+1Tk9AS44d/MAPrJha/DgrL80QVBgwr
	 E91dKFRMpAaJfD4TyekVXo8z9p2yu93t89AUV6UB/C58eLhfVeeUq+GB3dJAHm4j3p
	 mWTObZpzStV1W7fxYsdCKVBtCvb5sI9z7YSxop28pS70anbhqnpZViIfT+6ndtO5Nc
	 vwhhk40FHLxI2fsKTya62BkpfpLYoHuh2SiRO/hp9Pa/kxohLuQmkiufhYXJEHTFVF
	 g0NNFeMYwC0sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927D6D1CA11
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079035359.20143.769083652181435222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b331c176949340bde71adcfe3dedc320643d86fb3eb05f6efc14f902d86a50c
Date: Tue, 05 Nov 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730790353
