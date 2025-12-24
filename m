Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261061EBA19
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766548434; cv=none; b=SsTuWyUgXIEPdWMH5IkMmSb8Bx6UvRATHbMY4shvfOfXPvXM8EqNdzZ5LZWozKLyoRmZCQwFzHaC4RHp/IxB+sDQ/faduqmqGCQscrVMFEZjs1iHQrHa3USByHlRUEr4kkIZ6+uFTJuoX1wQf1tOOm1iVPLY1WEk4ObKJV3PtdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766548434; c=relaxed/simple;
	bh=BoiZYMvEULwU2GMB5GHEJOk4moZuHCeeSFeGpYkAMrE=;
	h=To:Subject:From:Message-Id:Date; b=OXWJygUJHuPZVjyA3JW/koDhHItK5Y9EtNIl9idCdYTiPOBBcnU4tUYFbk+/d1RzU5pPNmvAO0pWL0eQsXtIx9C+fLG73vr3a9GWcQxhofc6CGHZ3Ypt1UbHegaRh+/EbkQ7qX65dWF+yTmnfIyA0/cW2uLmvoDuZhHaX7QRSzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM5Tjz0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM5Tjz0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8938C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766548433;
	bh=BoiZYMvEULwU2GMB5GHEJOk4moZuHCeeSFeGpYkAMrE=;
	h=To:Subject:From:Date:From;
	b=nM5Tjz0UyXbX+JUMFROjxItAtfxdg2EYn0v589dc1+EnIDvlZ8ACgfuNWSERZ7pk0
	 xCz/TW4YXEuYh7O9Wmy7i/qv7kJMrwFJAXDpB19z+xCqQq7AhPG6nKpZhTG24itBgh
	 WsrhaMMgBNMf5/3rYtt8t3ijs+kDYghBqKsYqLfgfSoyQnVnTWKaTtRynY3imq3Ykb
	 g1PRSYjIB4CzCkHmbZs4UQnQkojqcSfoIkolw9rn+7Pae/7MHUhz+o5C35ORE1mRwO
	 aCbMM8AimuS3DYws6r0ZXC6G8HhqYLmbX1SJ8dRrdEVE6OlP4Jb6bCfL1LLOTujrcb
	 nkUfkHVNjMeTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BCCE6B270
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654843359.31655.3806435427325752191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802131fe60ef0d00180c4d292a2a80799ed31982472a816a3376949351c4b576
Date: Wed, 24 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766548433
