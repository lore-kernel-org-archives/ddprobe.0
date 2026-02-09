Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B66576026
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770644034; cv=none; b=VMTet1zlLgUpbDrUWiYtaKWSpJVO1whOKB1exk/gvqIsG1LQNYnGf+GYygG6lEzc//XjbS2YKauzSjGJdLae/Lojqywli1sIDn0D/5TvH2aYu7TSFMBuKjWIx65quU8rOVAe/YUry3m4UEGC2y2+/mTWPQr7XCnKug1MyIvqIts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770644034; c=relaxed/simple;
	bh=umppj0p7P6xsQw57wAecMgTNy4JzusTBhlBSyEnZkPg=;
	h=To:Subject:From:Message-Id:Date; b=emuhFcW9ZWHh7rC2xGb8IKJeso0QVs+CM9CcBuhsGKbtuf6Lch5D/bLkWIu3kcOs8oZdGOJa0uN5rMF3FOZVzrbNBE3+zgfUXHv1K0SspVsTxlioprXtP2C2J67uV7ZUHheUs/+PX19yh2dxEfHWSy/fFDuOgwrmVKLmy7nqlZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFWZ8OUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFWZ8OUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C312BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770644033;
	bh=umppj0p7P6xsQw57wAecMgTNy4JzusTBhlBSyEnZkPg=;
	h=To:Subject:From:Date:From;
	b=sFWZ8OUILCV3aDaWRgLnwUnz79+DfBRncf8lUkKpuCfMtRvAE6W3qkrX9xTeNlfKu
	 SqrWpIlZoUwLv1tFLcGJICXSuYuTYslW/eU1pmBzrHdNbnFsknQz5uHex+7VM9+d/R
	 Ndm9qjddL+x7ys8vcNPWpEgBKNCytfsW4T9IKJdxA/lbhBgNOId0kjUwPauOGVP5GX
	 LniA5jv6p26dahb0Pnfo5Ccb9pWaTJHSfq4VyzLx1X3baW62x9JlckII5lKsExtKEX
	 pkmeXvUpZO/cMWpO9eAWOOX657/3uqEzZqGERYQReujW4sHTncSObAVBgCadpG342D
	 2pkHHsE4NmYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D71E81BC1
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064403366.12119.13681413378137492343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abe714ffc33e81365a2a6f704ade54e6afd83cb61e5bfd6ecff164d42355f5f
Date: Mon, 09 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770644033
