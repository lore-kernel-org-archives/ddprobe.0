Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417161CAA65
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747492794; cv=none; b=BNih/liB8VVkVTeOfvYkE1MIoKt3/jKpippNqFPohSVrtmz0RGEDbk+JVwiapZ8dri5Myrc+91/akQe4tyuGvEwDDLaxx8EmrLsy+VvmGjJeQx9VRQlYhFis86LG+OhhHVMToP3QD3I9OnGpsukkNTpqCBIlb4dcXKQbx7t+JLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747492794; c=relaxed/simple;
	bh=s6up/Ox3ejR6mn0z10/75Z4694y8xIseG00VFOkddpA=;
	h=To:Subject:From:Message-Id:Date; b=EpuN+g2gpHQQ410WvVXEGScIWNLZUBcv3SAdChtA+hto7kn0yj7aEnHSr0MHsJET3uo2lukvX7+ysIytU9qZWUK4Nnv+obfEhAjqDa/kY5qHLYQryozwXoL29M1n+CVNhlDV95w1k24Zr7QTlb4YJtb0+abhWepzywc+cIZAPBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXn1/kDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXn1/kDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AE7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747492793;
	bh=s6up/Ox3ejR6mn0z10/75Z4694y8xIseG00VFOkddpA=;
	h=To:Subject:From:Date:From;
	b=QXn1/kDs3sQtFSEX8oJbS74e6gbOBMR09FN3XnZtfgYtz/0CwIdbxJtYLTWcP0rpl
	 XgycN+mNBk63Oo+aWavk27oV6QDF+GR9xF/MYAKpAripLsagkxGtcRA1Ne7v2h2B++
	 kmVz9d1U0CCHLq0blyVLr0xUAVZkDrbYCE/NEkP02xLr3AbajaUbjffqK1dRu4kQZx
	 kIfuAmTWX6JMD7y/5FKIhFiLSArBMTRSxGPB7d/dr109PM0xsJXh27eL49tPt7QMji
	 v0rceaTMYcudTGHMundgmJi0k5hSaEF8GTOUDxHo04bu7Lrm7OLFBSq52mKvAE05Rc
	 wZe058tg4aDlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96415C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749279358.12967.14947586911245007051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befe58351c2d271a269d4101a981492f0485aa93e71106a1481cb1943d13b2e4
Date: Sat, 17 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747492793
