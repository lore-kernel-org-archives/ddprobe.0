Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D333590B6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770985494; cv=none; b=LVAnRxSeU/y1wFa/Hy0pBFteaH0X9vuf+yIxIq9Rwtw5YVWVpZd4A8ueByU4J3XXvwGadhXofLCendjsE6D0xs491qRrWE5SOAIyJBBJ0N2T++20qrvnZmYAH937mJH2rTuIPDFnXJjMDQV7cv5lpZoJBenMWWDIXRojqWuThoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770985494; c=relaxed/simple;
	bh=hEntCWZhTHz9lxi6uD0gXu3EJzuTq7jOKTdHTrKInw0=;
	h=To:Subject:From:Message-Id:Date; b=SZwplkeiR7qSsT2DgMWDVqkzHLyOorxhngXERLqHTGiioea1BS+Qs954dVH34IETbRwbOZPGw2ZDlsqgLDNkwuxq9KWZmIBiWObQd9HuaGKnvyf03dIiLFCIhgazeDA1C2tuOk8dTSWkBRjAFEEGaUofbSDOb+HQGemV4PrpWUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpjVF71m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpjVF71m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770985493;
	bh=hEntCWZhTHz9lxi6uD0gXu3EJzuTq7jOKTdHTrKInw0=;
	h=To:Subject:From:Date:From;
	b=YpjVF71mTgJpiorhHMOUioVgm/tEJonwP4OqCsxjrqK9PXA8mrsNJWa5NlIsRkOJA
	 dHcwumdqzTd+UgAG/ia7pETRwxoOWczygoPPUxeuJcXDEKmOLOH6c47DGgtElGZsdx
	 edkXEfbWsXV/XanhaIdkqJtUsTeGtF2/U8ZFRcNatMpCO2xscuQlbqWIsvZJ+8sKtI
	 l0Z4AaNSnsDjsoODw4xBzv3tM3XdmP/hpJgPGeJmweyA6P1xlnXzfKcf7OXrq6q2om
	 QpENxitjcxYRBVPdNeH8MB9CVlC98L5VKZBZc6EO2qM4D2JGlN2Nll8exQCXNO5fNX
	 hLoMrMh2dy4QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A71CEDF154
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098549359.27471.4571673449683242495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa5f69d33f5e3b6cce483213b758b3f2aa8cd032800e129f01d9a93161cad28
Date: Fri, 13 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770985493
