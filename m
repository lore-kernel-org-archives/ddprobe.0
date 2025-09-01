Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADA91482F2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756693195; cv=none; b=hLO3ISCBtP9V8ffcTe/sCtnsTquJQjtKclKYYwd+CJQtxbd3Vz1/AcqDWN0lncGCD5J4HluF5GTSEjsPSt9YY3UQBOybAMezYfPykxLVHpAXbTPDHyNHbhzzpZk52qXsSxq8FOQxWyA6zT6GHwVGJeV4yto9Y4H/NGGlVC1PraA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756693195; c=relaxed/simple;
	bh=M30gCODOnlZPQUjbjGv88bs1UMzLwC768gkr31hKROk=;
	h=To:Subject:From:Message-Id:Date; b=dQ8Hn5WN7YOC1ehLso10IAZOUlTVdtCQefAeJ5uZD4vB2abUnIQG3w3kH1zJleEdE6MuYfICm9+OnnvJNpUDGR1twBKRCIqz488cFMkn2ofU8fIdqPM99A2ifX2kAsgr+4fhdVusUkpGIu4o3G2Yc/weM7T6YQcHVtHmZj1brxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxBt7Sl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxBt7Sl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC593C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756693193;
	bh=M30gCODOnlZPQUjbjGv88bs1UMzLwC768gkr31hKROk=;
	h=To:Subject:From:Date:From;
	b=rxBt7Sl80URXBIqy/ZfApH2jgjI+GtXprbVuuA60bUQnLK6b36xQZhzsSADCDFfh0
	 iEK6XVbK9oaIE+u5b5ysnXPDCEFyTTXDLaUD6ts2UVT966CHHl/WoCUU9Jo1JSln1F
	 NNFi3Dl4eqCN9bTeCihiPddH4g6ZkiLZaQxNlL8sWpPNjEIwZEF9sZ/eTG9M86oJ6q
	 nbUOLMLEwCXC3Oln5kFoS7S02cKfyCBOqwge1+CJ+hghiuP2SC/NwoqnBKSm4kJtLV
	 tKT+8YEMRhYWXjPOQGQtjcjtVpnfrLWyd8OfOkWB9RmrAEiHmE4mk84KXNmLjCdfrA
	 IjnxztT9eVxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6BCA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669319359.32231.8042960573929805544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e9b752c21f116d1e0eecec7f6946eed89bee2a0b956da81704b6e96a902261
Date: Mon, 01 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756693193
