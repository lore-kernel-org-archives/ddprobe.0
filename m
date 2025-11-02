Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240B28460
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762049994; cv=none; b=QPKGGDKn4QYB7/2nbWanXqdypoksHb9Z2hY8C2veIqDV7tAKJrUxW30ngz0RQwFxICO1GEjnLuYTfaoV4iy+cIUrimELIYJFxG+KFE2IzibI48CxbWQ5M+Ptwzht0hA3CB+DLCLyU8k2btIOj7gnw6LpXfPrj0BZEx4xhfEn8xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762049994; c=relaxed/simple;
	bh=AdJDaJKVQsSxXaT9OkqCUSdSuSiXzOrxzPc9zzOmLM8=;
	h=To:Subject:From:Message-Id:Date; b=Z3g1+5AEq/GbydXX3QXO7BdmmOCb1fN1BPIzJBYTDIGRm3yTddMfwzsUvi/QB9guPt7ykOEOc7X4DsDzhNBgbByYMMftUejkYoczRGrCxBM/ak3gaZwzS6ego/Dgut3SLq38vVyyK/mBa/RjIq01RjFEpvU3xyTMkYfCw70zik4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lrkabaml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lrkabaml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7ECC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762049993;
	bh=AdJDaJKVQsSxXaT9OkqCUSdSuSiXzOrxzPc9zzOmLM8=;
	h=To:Subject:From:Date:From;
	b=LrkabamlRCt0J6j4ZjnMxkfPnPhPvz6lwgTrSeCE7yU3bRIrAvTXSvfmzM+IwbgkA
	 7lDEDhQw3kU6GRLQ+CYNcPBfTlBR8ZMt7dwe248FIMtFITzE9kl9Fi89ykAz/vvdCS
	 N8fV5DQY1Ylsg1/gQp9yM184KQgrpZVsG3PS7Hr7u8FlYb1DgP87EFWPtyiRPh2KyR
	 lZoEFqaC3QTrL6cb1g5MJ9F4g5KpMJfDSsinTsXc6EfJ7ORf4jLy4az576eoCThMrZ
	 UrcrVFKnii1RI3pvitDN9FlpeqkOIhBGt+YvckHl/jjoJ9WlTjzoFiDcs+lhsDY3i8
	 zYxzKKT0KLzIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97860CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204999360.9962.16161307606766493027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be282439879944f03dedddf39b41cce2b0dd99d24cc340a32d5903f7a67bc7b9
Date: Sun, 02 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762049993
