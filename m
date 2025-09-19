Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2C42C15AF
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758269395; cv=none; b=dmIyWd7UYYBbrlYpZYhho3ImEbhddGCAuWZTEjc9Yw/xDEf42uryK9bkXsJzaRq1Aqnv/Bb8eY99lMoT15VudYSOs7Pc7e75LqiPFqhrtTIyUSHqYDypWVR0F+ylugf7/p2F6nCcmR/uHLNhsPrkdDALMrgR+OwHUplmVHlUOb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758269395; c=relaxed/simple;
	bh=DZ7LPRt3LNFymkTmTeyUXkThuwciOobxgr/Zs+6Y5HI=;
	h=To:Subject:From:Message-Id:Date; b=T/RhMTIJvQeIL/4IVU+lCpg3QUWjuch0A1NaL6PlUJP98kTosa2bfditrMw0KwAG8k4IAql2a+ebFr1kkMtzdbN1BLo68B0qBE97aBpZNJq0pdnL1Op/iw3M5DI4SkjXda84O7LzBKncLQ+BuxPiM5WGP/HG5tFU8ZfzKXd/8Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oF7HUsnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oF7HUsnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A354AC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758269393;
	bh=DZ7LPRt3LNFymkTmTeyUXkThuwciOobxgr/Zs+6Y5HI=;
	h=To:Subject:From:Date:From;
	b=oF7HUsnKY6zccf6ZPYh7KF4wcAi/swGlV3IU77jobOjo38CtorLErUPCroX+yagKy
	 pf7Bg2aou+Xfm21lBvXikvHlAWaBrh1jDbpefff0KedpYFnrc2v7A6zCh4T5e4Sj8+
	 w82UBnIJ5DEu3v9mn2Xa65z/4WL8W6PrEt3TXVqraBVyQO8TaHSCWWdX/JznVMmuXZ
	 M1Y+PoEPBSz5cViBiryR7fCQjzp8ga344lVTFM4OrCkUXgE97fF72KBsV2Zu/lv+4h
	 6H2ewVmO9+k06Ui8eUKuK0D217XBWdozkY+x97VLZb0AWNSoyWG8DW1r9QNR2ghZc/
	 b0TnRLfSh4MXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F3CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826939359.6681.1813113022081408981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa48fa1640ab3c68c340192e492af13d5596c47c202e634e3fbaf064ee87615
Date: Fri, 19 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758269393
