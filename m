Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300227405A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745845796; cv=none; b=ZfLsAaUz5I1sia53woS+sGIinrD7KvInxjHjQ/njALKzn7hIQfXfg0wZq6NMLS0KONaQCBzMAJ9Zhnds0heGT+f/cyvMzAhV0kYSHuhAtg1hCpjfa3g24QXJJPchC73UWISdNXPt4IXSj43lVX7xK+tkurCO+OAEwcLrryklbgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745845796; c=relaxed/simple;
	bh=iYg5Qn+jK5gCMrAUEHGETSrJkKUM9Pj5/Y2+m+6r9Rs=;
	h=To:Subject:From:Message-Id:Date; b=W2vXg7FXyQL2sRBVgtk4eVcJPeAipGg3LceC4gYn+joeG1vMCNzbtmgCV6E3SznN/5G6Zxx6Yi8yDsc5YLOnCFQSP4yRnaoqfk7+rdpBuNRkIOkMOb/225Vf+GaZmJx4ahyoVG1Bykq58kmeiccF8dClUrHHyNIi7tPYhMnChSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTexzi2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTexzi2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745845793;
	bh=iYg5Qn+jK5gCMrAUEHGETSrJkKUM9Pj5/Y2+m+6r9Rs=;
	h=To:Subject:From:Date:From;
	b=PTexzi2fho4unx5RzHPp4Gm0kHbPhnamCnC3B1vQE1/Ahos49fJ7gE4s6vX12gVix
	 PrfaXMdr60nqPO4cEnP2BOoo2pqkbMk7C/LLw2imIuv1ATEYG2pebeUiZblCZ2t20+
	 lrIPwW2283vw3O9TTe8FzY3CY4J+CJHoMEgS5tIgcoqYXkJx+34ONuAcainOVZyePU
	 7tg5u3ou7iA3eykDXk+h++cy9vHoZicvBwR8Fr+DRTyEV/iIiFuzVe4THho8zBcqV8
	 SsnLP0V8GqK84IcKl3zrfG9JfZ4hHwvP0YraoJC4JK8Bx13EaEJIGsglR9INoFktx4
	 Ig3ZGixBf454A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BEC369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584579357.2099.5880850295844804129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2789b6c26cb6ffa2419ad1d49254e1d7c470a041a0fdba706c23f7be9af288
Date: Mon, 28 Apr 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745845793
