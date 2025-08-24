Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218C61DC198
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756011594; cv=none; b=i5hfia4cGVOcnWVmEUGACXDZ94Z3IAqtDZhUF0bVJ0AMSXa2zbZ9AHn2O9U0eF89liH4O070miHnfyjGbypWhvEay0oMINaWi2yRqrTEmz8Z5Amz8iVbJegyWbgdS3EFSlzFsJcBYFpaj/E78ci6ZbGifPn7vJVed/KC69De/HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756011594; c=relaxed/simple;
	bh=zPGCsEQ9GZJEpBH//w1ShB0R8QDAM+7bZTU7RD6GvSU=;
	h=To:Subject:From:Message-Id:Date; b=oistjeJLef76NGO09MAMjmmzb4b6YgZQ9EPxNElxs+Kxt2fw1rRWxVSpevrQtiSChqzScdFum4yeoP2z/gFwzS7eWKRZc3gZsLPCbmz90p5iR6c2ZAZyttE27+93mNPCHHAU4p7d2MQ4kO4PuWleAdfLGrJPMP6zfziLEigfH84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=om93bCtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="om93bCtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6161C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756011593;
	bh=zPGCsEQ9GZJEpBH//w1ShB0R8QDAM+7bZTU7RD6GvSU=;
	h=To:Subject:From:Date:From;
	b=om93bCtK9fekIirNOz/28aF6rdTbMHwQF3B8k9lP/Ybmd4mCGcH002aNRQytaVsoi
	 Tlt2GTmmE6g3A7dsWfbs7Vf3nJ1Q53eixQMXhXSU19DB9hpZUfIS55zrR8Io6Ljv6w
	 bF/4Wrz5WR/aEExYI2d9ZOmUDLb/C070aLXcgr5jS9jOuNHh+5mA3XWjQHw2f0AJ3A
	 Sj1SXFamq8y9W6w30eRIPu8uF9I4LxAwGNRR9rXrfhpJulHQff1g83QKMeebNTGC42
	 Pve8zpeqOupc2XaN+nCmUUZ/S/VLyhb0pw/j7o20FZz5Nhn1N3IE9kuBwdVZP7C7+e
	 w8MQxQDrU5Ygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED0CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601159358.19614.2437637557255838402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3fcce6afa5a85c8cc539e17a483fe31b314223346138cc6abf2e4fb9c72572
Date: Sun, 24 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756011593
