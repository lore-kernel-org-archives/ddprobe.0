Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443481F30A9
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787333434; cv=none; b=H0jKbU92v4StZKCsGFCJ3ziKujV1M6sskOvQNJLpo4LyTJYI11SlPwSgsaR8yOk/F8jdtee2zqoyNt0lWvZzNwTdQQkJ1UYAx0+XeJx4BcnxsuRBLCbJhcxLonLANCpXKD21bMcExXQKs7IoK+bEuzBPokdLllmcaZuBIFYz1T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787333434; c=relaxed/simple;
	bh=ftgqtsi66T8szNLD1swcyGT57aWQCNXLy/iN+so1S4Y=;
	h=To:Subject:From:Message-Id:Date; b=B8xb4lccG0/jwJrlQm32mSUyqQq015wOTA9kB/HZ5W3lH7xY2lIHGszMDPQWO8vIbaUwcFXh+OZ0UEhWH7UIkvFoJX81zeOQESYGSSTjS1zGERDMPKWa/DbX3Jq8fAfnwkgBVkbSLGirtJV3GT+jYSdrx8MIffWUTl4Er4ehKhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGygXEm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGygXEm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55CCC19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787333433;
	bh=ftgqtsi66T8szNLD1swcyGT57aWQCNXLy/iN+so1S4Y=;
	h=To:Subject:From:Date:From;
	b=VGygXEm8JdbO1cGkJOazHNw2a2/BKgQCppIyu0E/DJYupqz1TiOtn5lON+o1ajTvU
	 MNHHZKYZ4XhO26ukCu665VfPtjR9Hp+9UbDtm2nCJ9Q0Jd91z+gSFUHqn6OmBBk+eg
	 5VxrdGaaX+RosJyxq/j3/ucR3hpoH/uIh0FiRn3eTtVeEeU+c84dqrkxiNwJArJHBT
	 ksHWXKoRA1hxngimXYvbtv4o3AgJVkow3t5XF6Latq8mtIsfsUCAHps2yifj1ULA1G
	 qUS5dwG2LC6wOb+CXuS+5rVRjIw2w7G5fGgRcUqoZMHxgIZgSyQo1VXneCAsRrUGWw
	 OtsnpUO3uWHcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCD1C5DF8C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178733343371.17946.5129270780070193900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c1c088030ec7f9788d1c052ece0d7c9f6563886e8a2856c06d27a8dca7a751
Date: Fri, 21 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787333433
