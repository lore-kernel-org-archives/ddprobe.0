Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2394E2C08C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775864254; cv=none; b=MeuQGQItA1uwlt2xj6aHD2zs76/mOyIz946uMfdzmoWtEmjr+Mh0gudW2flJ64OZCGNY5/nxjhxa2/axfAFif9eRAeZ2vIzlNlQkMBzKqKLbELOcpltge4kFjtYfan1twb1pkOq4TOtB6JLgh2EsjkFzTgiqH0Bhk4fY4nSGfTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775864254; c=relaxed/simple;
	bh=Ozy95442JTW2B46N2kwkB3rQi6/C89BeORBk/ZI0cJQ=;
	h=To:Subject:From:Message-Id:Date; b=uIL5wVAtlACLZFie+NdU6YKajOjQhqY8/SNXjzYbb8UklNLHYpXDzaWZOwdz0JGoBWaLMY4Esy4CqDItMqIXOsgodPprX0GQ9m1FCsJYxd6lwf4EhiWQtHHyqyHQHwNkE+wgUjc9/fWsFeE51mTd5jjTbCSqdO8rblScHCe16gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfcLoKdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfcLoKdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B40C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775864253;
	bh=Ozy95442JTW2B46N2kwkB3rQi6/C89BeORBk/ZI0cJQ=;
	h=To:Subject:From:Date:From;
	b=cfcLoKdkYrxDlRM5GEhfMhFqqbVLASiOTH7KPrcy5xsE9FbzwxiGppOIW5UCXk1Hu
	 ucquf4jhoUvsR8Eqw+wCw3Rpu/js7Z7PzfgmC/vcO2G7LvLUvf9prz2wtMBSD3dHs5
	 MT7HE70LnQe/UE+2Oa12fzOO7bSCMjet7J5lfIcJw6nzdLmP+KLieALPIi159e05NS
	 KOopRU0F0/lIn6JogljBqafnEj3QivGp2sI9yQWzBVp4TaHfXJEg5Mx/OWvy+wDsqU
	 19TPXSU2OksWo6s43+pUcFQF6K64hOes4aNkfynQjkAG0GeAwWgKjdnSfS2IzaPsjC
	 OJrseLJcInmBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC33F45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177586425369.25071.4708395128856283818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f176032bd21987948a5410f491c4da6a74f4b5049b671d038839f25e04eebe8
Date: Fri, 10 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775864253
