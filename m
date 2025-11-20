Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA5B30F93A
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763633514; cv=none; b=jA+KXVjQZynI4j69AEMCyBitOlWLS5gx/az+0r9BbjEgp0cI5Ve1qQLgEL+BFcYj3IZtCnqJE4GFCAhl7rtlZyMkQJDvAN5DsjG1zaTlsZGeH+FRufG9tApLxRu7z8cM7kds3QRsFVdWbkjSFnEVJ5o+fnPV5GkcekB29a0qyyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763633514; c=relaxed/simple;
	bh=Xme5FoXu89z/jkWJY4Ssp3fSnI+/R1v6emXEqzyeWIc=;
	h=To:Subject:From:Message-Id:Date; b=incq3x9l1wnZI20GYT+A3M3lgwaxkwPM8aXNoSCVsXkB06jH1IPlWdoN6KoOiS+vPvPK7euvWlglCJwqtooZOZH5DhN3W8wLQM1hY5jSsubHSAf39L3FTFYHZ+KW5Qz7Ch+cHNXTTXo/Nj5AJv6NsUMtgs8IIzmAw2F4KNAs/8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suMIfx1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suMIfx1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4FFC16AAE
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763633513;
	bh=Xme5FoXu89z/jkWJY4Ssp3fSnI+/R1v6emXEqzyeWIc=;
	h=To:Subject:From:Date:From;
	b=suMIfx1qEngYVj0UfOCVo+c+c1vkEWf9mXpzfMXV+si8C/yn1je9O92+Zxf6TNhk1
	 4pZfnBqai3Hinyx4sreuXMgZ5xA5pKxIm7p4svUkRHsoUoncSKUY2vvEJkUBJFxei0
	 03lHxPIaarD20oZHhIR/xiFq28xZ5dtO0SFQM6S0R567ue8rIeO/PsBn0o8WbO9BGr
	 VO2DPL+E218p62CqSJvz5NNjzsd+EkGBTwp3AXV+6lBc/BKoZR9p2GZDsEwDqTcd9W
	 qJbwMyPck0eMxdlqo2aRBeTOpoOYDCqWAnL7mTiDplDX9xK88xcXxyA0gvXmQBk6NV
	 25P5BRII6AGjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A268CF857B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363351362.12745.11022936497770529287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797f49015558bdb070c0e2326efe0a428b44b6f6e0ee4a4733dfa8cc353065c4
Date: Thu, 20 Nov 2025 10:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763633513
