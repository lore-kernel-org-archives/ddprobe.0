Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7AD22339
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775694334; cv=none; b=dMfw9BOOdZ5EJPk0/GmFWm1XBPtrpoa8PEVhzodl4wtG6Dh5B160Lv4iHEnr/xsoFqmcQfNvaiGTZVBd1oR/q1ctWDB06lE0RmjwsRxC+04wzIZ9rn0oWln+4Vse4//hXe/nTuaJXQ4TDWoGQHMviBSYme6SByc8g0y0j2NY58g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775694334; c=relaxed/simple;
	bh=dCufgG+h0joousTPcvBEr1khzlI5E7xmN5Fa2SJ/BkM=;
	h=To:Subject:From:Message-Id:Date; b=N2NyKkMnDnwoBi9rfLvdEf4HpUe4u046kGSQHauK+LrYPfSa/+2jxw1vJfZk0NhkIrmPbQO2pJRPtH0Wv1I0pHkGxdwc70Li3XYbqIaTHQm1W7fHHgvIxUp2v8+BtRmy/6VLyEmAOet66uExU+okyz3KPpchQd516Ariw2W4RKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLpZiHKY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLpZiHKY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D28C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775694333;
	bh=dCufgG+h0joousTPcvBEr1khzlI5E7xmN5Fa2SJ/BkM=;
	h=To:Subject:From:Date:From;
	b=HLpZiHKY6wYVKTwDbTFzgWEWE+0/0WV1nLcujLmbfMRyol5Vttlx/b5aRJ48SUZxx
	 AIx0jYWffR/O/Up33iPg4mnp2CwjpbkrppCG5hX0PgyNtnbhlxPRmOBEJKjN0fWqHD
	 xNC26S1zgo9QVAqJH4vNtaUN5WX3g0LwcBkw56ivXnavTs6upqJxz9sprwafex020k
	 UtI3dWwDvC98yCcYm0bqYNs4WKg53k13sm7Gx4ywBLZ/GNK72f2rz2UnHp4IQtjqZ9
	 bE+Q3yzhK6kV9fMO9PkfNz2U+030GV/ilHQ/lxdknvim27Fv4I7BsMmgqYh/i2rl71
	 zrOkbz1GO5f/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD410FC45F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569433369.10343.5356160642770869140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5be36600bef850024141ade8421c0a06b01e4832a0bba28d30ed83b9b7c6dd
Date: Thu, 09 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775694333
