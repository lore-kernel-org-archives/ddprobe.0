Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA9681732
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775976454; cv=none; b=UTc6r0xZNmm5k/YvAR8x3OfzoZONXZpQPEb6KirstV4eB8E0XWp+5vmlBoyMWEJ7VIZStVxvHkCq0RbX+l69VEMC1FDLGPy0BsS2EpGgWptof3S6Vo5hWMpvgMRrdvWJVYcg4/Tp9tn6fCSE7mCO1HIAUw4aCKJbsPRr7pLwNPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775976454; c=relaxed/simple;
	bh=XZxKX9Eqy8x+mCX6HSRMsDEPfwTJcb8wrZyk31FEyUI=;
	h=To:Subject:From:Message-Id:Date; b=qaU9kIk9Srrm/M2ggP3PBL6FeQc7+Dy+56+9Odoqa1fpDVsyJ8I14F1kUxixkwnSCO37svGspMRh1p2e0p0gXEwrrrFg7qWgVDIY9ut9B6TZWsYdcjOrENmZQayYtBtKhMSgKBDhoENhh+AA8T+U0gDuGE9zEzMmNjcdNhTqueI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuNF5Yoi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuNF5Yoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C030EC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775976453;
	bh=XZxKX9Eqy8x+mCX6HSRMsDEPfwTJcb8wrZyk31FEyUI=;
	h=To:Subject:From:Date:From;
	b=cuNF5YoiBaCickksuZaLBZszCy1ruF/JEcLYXPoAMtpr8GiMRh5uZ0dHeCde/8Hzl
	 RtzKUGzcdAAkNSCXr73ME7/n1VEH+kB6m0wlIoIUxjLs7LBfLinoJ8mquZVTcHEVCb
	 Bo9/AMBnMy/S8iMk9XvU+FTyTz4sbrsqqpVE2w9Fpn9B4UF7tT+ZWm4J1S+7mF2+eG
	 VQHyvjKwOoUmZUNxC2tbIhSBaCw5a40kh9TxGGP7I/MNG4ajv+gxkXziytLzSS8c8w
	 o5BYT9hY8ts0ZhcyxH8De2YTByB1Asv6Kl7PK1P5yLHERtC1ep+M/gkvXBEhBpHGko
	 fNPKzbjNug1uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8E8F3ED7B
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597645368.22965.12642960384730317343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5512567b5c3a3c977a3bdb95649b059ea1de0a858f7023ec8a79f56fe477bf
Date: Sun, 12 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775976453
