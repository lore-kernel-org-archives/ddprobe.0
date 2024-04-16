Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE843A1AC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713243563; cv=none; b=WVY8kB/40X9pxSZJqaV/6JvRXVumNBVQwZ6NXTV/uVbkeh1wabfwh257OspjaSJRE1sVfGbo/Dyxjwu5Uo8T3nhkyvSFm32W8XrjKJznkh/rZRZka1uWof9As1uWSdST2n9z9DI2AYa1yR84s5BPrYIcHFDKe+CBGjYgUt639LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713243563; c=relaxed/simple;
	bh=6jl6bBGk7OSshhP8YfS9npED+ytdWGkROVJotDqhCLE=;
	h=To:Subject:From:Message-Id:Date; b=s+m+hTmi463tEuoV6KKrh5hOVBBS0TXyl/i3ioG+QWVoJFhD0AN6HPv3D3TMWsV/EiuUGA1gKXt+ZFKOWRblt+KnR+qrh6GIHUYLsRgIhVBfoFXXDUfWXE1auFsFDiYauBPbtihMcWhz+JFrGDWBBhJ0f610bfarYrP4VQ3yRaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWLG/tas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWLG/tas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AB1C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713243562;
	bh=6jl6bBGk7OSshhP8YfS9npED+ytdWGkROVJotDqhCLE=;
	h=To:Subject:From:Date:From;
	b=LWLG/tas8Wnhqds3V1a68mqSenmRHHoivFsXbHl4CbUyXiyIPSeBKNkex9xcdMRoi
	 QQPvHUYCP4+d70voEUyJxki3kP5lMhC0u0uPjKQzn8+9t6VqdJjKqPpdxsmj6BmHb/
	 q7ibPELBcJrzlVLPwNYbbZVbVeGXYUQPgxf0oyVc3uJ/uDWnW2Bs3n1JeA/D8QLtp1
	 SCTJa03+q/LVYmp6G6BDSPhZeMDjgn+Inj/kFEiIUZfwHZfZ6vIMBGKJAXs/ThlQtx
	 ymv1yiyeDwAStY6i0d5+QBGYWgpPbDMaN959peZOA0KUepM189Fn6U1dM65STpZqL3
	 /TYZlYE7X3wUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE743C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171324356277.19735.5536142503358708973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45825394470e467fd0f0db02619e22e59aee8317c57cb30c2f1e436dd4eb1499
Date: Tue, 16 Apr 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713243562
