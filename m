Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5724E29C327
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786912834; cv=none; b=lb1icR+Qa14zHRJ0mi241fBE8B72SCH52W0e7nVM816K6aR3JlxlhMa6eoJF7N2RxfcS5bZXFePW67LRNObQKnFMQAZB5hn/dScE+3CbHRZ/2UxpG5iU7+TuU2znbqVU8cDvNs5hhIWYbcS35YYQopN7V95FlQHqO/PDMTN4u4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786912834; c=relaxed/simple;
	bh=juUDTqORHJOkENn+ovgXntl7yeZAxIbUfMCzWsc9uPY=;
	h=To:Subject:From:Message-Id:Date; b=GySl1asaGN+QaM+d7Y1JNKHpn8KIz40lRVEkrZ5uyKU2/lOgh/BR54+bVKj03rUBvet/fvyBCKMhw7DAkbHIjeBFQJO4cGTR5muiuMW1AgMeIJdXiITBv0pLV1Nu/XZxiwjE21QDrHeZuQT1OAy9gaPWqiYfzC8RaCOcayn2yTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7bN+0V4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7bN+0V4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54B9C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786912833;
	bh=juUDTqORHJOkENn+ovgXntl7yeZAxIbUfMCzWsc9uPY=;
	h=To:Subject:From:Date:From;
	b=B7bN+0V4hWMGDQLkFSJ1+Wlj6NqupdaYZloSUpGWnEPtrwKU/Sfcw1FWOkq3HnsDs
	 Gyo9sSXhfIrToyIvbPjkXG/OYFIzuj3lZBwW5MBbrFuXSNM4jGOkXaSLH5NrBg35eu
	 pVAS61r0SrkXcU8PnkpABZ6ce1nUdYvNsHqHkDQadTP0gY7FCejjhGF0rITowItpXh
	 9A18+bj3hi7yLlQLXZ0c12kXKENOSqU7ymgRLmpO2nn53WHDBCrChzny17s2lhMvnh
	 PUa0Jvq5BT/3eRyDRWWEHzLpYLzizqEQgI5jEA0SbTI9ZO495irmfUh6fDvX94o/iU
	 OUIqoxxErLkWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AA8C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691283368.17016.15722046572791642262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cff1949c9dbf6f0dd4fc86167dd3ba8534e8ca7bb66b64a9899c9b376dcb4e4
Date: Sun, 16 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786912833
