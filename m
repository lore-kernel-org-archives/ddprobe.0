Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142973C2775
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778490034; cv=none; b=U8nLpvY72Y1PtAM6ydX5rQKOdysKhPQEawvC7LeSzrB12zXKRy64I0G1rU42IPOi+UsxriTLsA0NQZ18EBOvpZODTI6EHbGLC4pXv2Hl5igzZSebwnxoY1x1m01MH/6QKIKkJDp/CojSSBRCZ1EbaMle73ZAjMf7zgMnEAer8ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778490034; c=relaxed/simple;
	bh=fVba+zEMjtmwvoDZLPiWQ5m3GoG4L/KX5MUMSAkRG9Y=;
	h=To:Subject:From:Message-Id:Date; b=FH6DZoYYgkazt+SA1UQIfNSvtq7h/mSy/6xoagkIzc8PJvT1wXmOa7T5xW70H8bJOxspEMDPjQ1RtK/Byex1wvSpVuFuTXejIJrUFt290wdtP/+8aJwiQDYvPOBfhzMkaaH0zs+EpjT6uRW+xm9WSRWwuNbD5W3wSZKCVWnewRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5JU2A9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5JU2A9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F96C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778490033;
	bh=fVba+zEMjtmwvoDZLPiWQ5m3GoG4L/KX5MUMSAkRG9Y=;
	h=To:Subject:From:Date:From;
	b=q5JU2A9HCd9Xh7q9HsHgWmpC1lBkylgk6bQRldBbtTgjv3HjS03xKutx6p0XSn7l3
	 VELmxsqQqT9Z2rABje5ZTDx2iNUMZDEjXhEVfuITMglF8Yx3lnU/Hz0kjRedMUVyvz
	 tdoCCofDp8/BmgIrnHk6fxHGTECk/PsoWi2ISDI4CA0+n0z0oRcihDaFwoRXbBb5eb
	 6fEmZYXjm+9+yIz/1AZ+WL2YBVfhtq1+4qWYuzE1fxgkPvAUzTMcqlbq6+KAzA0+8G
	 Zu26Z+SjAB5aCNWPzpdK7/IR8YqXrTH4HbDDuA310xUDWtWdzMSariK4C22vtEiLIB
	 cIqzBRPOyb8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0947CD37B5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849003371.27528.7116447406928524660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7d130989e01f81c51386b486c435db8c483ec1cd4b61debf6ae6b05e0cb485b
Date: Mon, 11 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778490033
