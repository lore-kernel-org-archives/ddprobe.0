Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3884C26389E
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740094735; cv=none; b=XOiiFkYpvaTRJAs2ysA453rsfgp4FowwWT59aQgxYVkepC+0bOLqfrhIJb/kIqaWdDF+t+y2rLO3MZDoA9FauUGOFdjb+7kkkOC+/AvozvC8ZrfAZqU3AX6V5Z6rHgiRgzc0CiSvlPy6Gb1+jIGCg1u0ChAytNXslY2TSENcwHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740094735; c=relaxed/simple;
	bh=o1Zob5Yg/JllrisV8XatAGl4N73/SfwHaLSPBoGry64=;
	h=To:Subject:From:Message-Id:Date; b=risdQM8nnMeh85kk7gsFQkDMUZ07lVaqa2rMLAdOUL1y+aFEzmF8EvTK38lBitFc06Fn70bNc4kw9MCzJ5GQSYqHO424QRif4YD2iA9U0SgWLEaPgvpAfWGp6DOz8wXsRfT2+3Frbn7mye3drCdC+x14um4mXz/0An5Vzce11dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoY2/bWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoY2/bWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFDAC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740094733;
	bh=o1Zob5Yg/JllrisV8XatAGl4N73/SfwHaLSPBoGry64=;
	h=To:Subject:From:Date:From;
	b=NoY2/bWAerzJAR/tSRbz2bUc/ym5AZMUmiCClG0D3mzMR+OuHhL+xM9tehKPlS5cl
	 2quGhaEFiZYGeGtOodTReSjZDjB1cRibkCrQNNB8E6sTw1p0kF0XzSWhUmJhmfZdBh
	 y7SDT4oszW7lReGKDrReKChFfuvQcLQBr6MSqmsKbqRYrnxogdaIuhBRUVGL7QTpKY
	 3ZfJwd8mw1+LbQatKA7Z50SavoA/IU7+x9od/zTceHEfNfsCb2sAe251tpU8+w3muN
	 ejKL/AoW2V5sAfQPw0EmUHvU1PEs5rz2R8VGeerMgNH14L1sCG7g+JxqpwUWp/8rNM
	 xRvBlT5K/fCFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F5BC021B2
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174009473360.32071.9825684186785864121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a7b600c025cf1a5b9ee4b5d0ae479642e91e6b13efefcc5f79f60fd5976b47
Date: Thu, 20 Feb 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740094733
