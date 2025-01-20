Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459311B3936
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737367554; cv=none; b=R8XkpIIyFuYzOqHFymlnoiqOvZa60RoeLg83F9/lNLjnJKkEmXwBRuxcPolgwC9r/CdzyLEVa1TpraqB4OKdqcwkWbNJgid4P3JXn7ZuSmxx/9z3hiUvkvT1js3LnmICQ9LSZX06Ze6HNXJ4vDbfQMFkI3ctMMMUG9Qlb6QY3dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737367554; c=relaxed/simple;
	bh=HPjRCQFthcfEfXummBFjqkMPkvTGQDbAPJngxdQWel4=;
	h=To:Subject:From:Message-Id:Date; b=CRCAgRjnhtRSjxSP1vXUbanDt2e5un0NwpMGAkurmfOGZURSQf0iyUQDNj+/pU19iJgx/knPe49CVjMe1NvSAuB+ZGwIPUnS85xiM0SHagBWUhmIl1XpbD3UsTnT58JwMmF0CK34nVQGFa2k0UgEdLMwOb/69Oc2txvdL4D3SCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYPfHuba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYPfHuba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55D9C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737367553;
	bh=HPjRCQFthcfEfXummBFjqkMPkvTGQDbAPJngxdQWel4=;
	h=To:Subject:From:Date:From;
	b=DYPfHubaumhInxqZIj9f9Td+z4AtjnrUIXpCfruOwiYNrejay0BCwbkqGFbBHQ3FE
	 WfexFpt2tBKqd3YQ/mFurCNfGMicHvPy0um2+6RXeTXPfM2W6cdVrp+509LpYI0u15
	 NdbiVsizXg0mV0ocMcXTwpfivNmeq+YZCbqDahzA3APwnGU1ttnk1yl0eaaLHBMSjl
	 MAmBlaTSl2ai+/P+vzbEhMP5+N2mLtABImHZkjJSXFLBkmaESEIh92N3bKYVLjBYe4
	 krxjTf5NqhG0VrMK8s61SgBGDeMYpaz//2LbhTFKkPiOqaE7rAYerqe/lCB0xy4L00
	 +AruiZxdw8Y+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A33C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736755359.23900.1110407580119636393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188c0af3ad0a05326ed1cf189c6e3fde3370c7a32fd65185b825af30679bd240
Date: Mon, 20 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737367553
