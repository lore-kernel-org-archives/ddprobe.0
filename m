Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E16A255E26
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745407194; cv=none; b=hh0thDypZ21p3CB7Um9OozikpC6Gf6G3lxVBE6Y1FVUY51YGkNbTd9T9cbI/wSKBJ7qp+1y6GSXj3r29lGBLld2em0P+jMDntbahwrjvHVkYayJCvfwfCpPaiH0wFeHivLe8zMfLiGkitZqcROBRcM3v6HG8t7T3TxSPPbae0iI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745407194; c=relaxed/simple;
	bh=PJXspGk+KkRx+8fN6TDzsNCTGE8bCNaxl5HHuixaXg8=;
	h=To:Subject:From:Message-Id:Date; b=GwHqLrp13bo0FhYeAT7k7+BN/XnyRtA/zossomm03mX5xnX6SNYKMN/mg8SHeak1iRgsdlSvCOOLeQCSLgh3bpJ/dBLOGW/y3Dpvf6pVh/BvtVS78au3UPqOXfZdrkp+ashlnC+oh7h7LXga/PK5k1tc+cZEoDvowBuEkSm82Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9tlLaYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9tlLaYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A373EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745407193;
	bh=PJXspGk+KkRx+8fN6TDzsNCTGE8bCNaxl5HHuixaXg8=;
	h=To:Subject:From:Date:From;
	b=a9tlLaYok3Ai67uIrueQ6P9KMINk/ODZ7lQZfmsFkF0HzcBdlS2J6COShytQFZBbT
	 NmuwuRhufIvRPDtOkVC1gtI3DjUdnhQ/6Psp+5cw5eb5VW4czNSPhqpC2q26LPmna0
	 ctlSCwzdsuBZP2m6tOdDsZFkzZkvGqK1q8KOFjtNAEEylp3VfqmonjGdEqKCM4BUSM
	 QfJqNj+SYBe5SVkzNyOYa62NFfAa1JOkBAnsHwu84YyhA5r0erbYtC1HYkWRTyXDrL
	 HUnSon4Adv2mJGOfFJIzZnLuqeb/12wHiQgE5RU+tdqZbaCm/9Fx53V4Y4aB1aGqFg
	 ojEqWj0QXeY+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A8C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540719358.19071.7058812319922254198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec197de71a92b618764f7f50f625e1c930347d323d24ac9beb725ff999e480db
Date: Wed, 23 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745407193
