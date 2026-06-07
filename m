Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360FD1DA23
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780839274; cv=none; b=UexkFII3JB2quZ5bQ3VvMYljSGrJSIJp63kbssUnDmwUCrzgJAqjH48ZngJevopiTftlzOcd7+V0dFGTlH8WQbjbjvcfulzzuzzI7hxqFBTWGZ4XW4VMXSwjEsh+Kp6BQq8lg3zQJlPLnr8ikkE/OEv8dZ/Oih7U+DxjzqVfXsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780839274; c=relaxed/simple;
	bh=2hbP0JmBHQnUY6Rqrk655dlayEIwFLV7jCYf4sw3WsI=;
	h=To:Subject:From:Message-Id:Date; b=KsHyAGNudnItZZbgI0Y/UktRNQ7+AsBD85QCuoixtSatAxfb/5YMSDH6U3PtJwmzlxeRLp6YRM6l0zTw9+//D9pSiht29XkASzZpgVPxuJGUXVL4DpYYIPWX9gOPdE8MmyjaSfMVoLrvlonu940WAl93i1WFniGu/chx5VcDnvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQcrM1ZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQcrM1ZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B60C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780839273;
	bh=2hbP0JmBHQnUY6Rqrk655dlayEIwFLV7jCYf4sw3WsI=;
	h=To:Subject:From:Date:From;
	b=dQcrM1ZMbPg0+sfoUW0GV0W43Rz5s/ry2ZOz1eF7eGlTIEuteSdCLVuhvbsDPx6x3
	 MystZBiVrbfoqlmvLSmHFxbzIg3q2pZnMC6e27dq0FkhWBwGZ77GeqSpnSRjfOgIBQ
	 4Gd8olZJtI5NcYE2t/tq1sxtnscIiYPXY8/j/4dliLeVw1Gn1dHG6i6xRKKii3C8/o
	 Hs2A753jvJeF2QNJrUWUxdK1ml/vPDV8LpqEPevO7tTSopjoc9PV4qpk3N39ok0rsw
	 l+wE4y79Ukrwk/NItetRRYNXWUO4HW6+ExCeRCvMPKYbchOpkDZDE+jD4JqV9qX73F
	 bUx0goDn+ItBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF25CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 13:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083927368.29625.15806964716185938377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 161400a0815c3b848bda99df345800d3cd259a5542b7a32f4002f532cad01193
Date: Sun, 07 Jun 2026 13:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780839273
