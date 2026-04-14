Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBCE3B2FD1
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776182254; cv=none; b=lQ4RkmaIgnbdErJkM2V5zCYFQp2eAudYuF8dc9/UZhGHR2HTHoLpJ8LR/OpPrMQ/yE7kJKo/usiCSCOdI6bxrShbNnKAZxWE1l2Cxzj2eljYUKYkUbs9OO3SL2yBLNNumT20ZkWKR0IcSY5TCbsSh7kR0DJNhbVav9WNBV9VXJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776182254; c=relaxed/simple;
	bh=oSba4C1CeVzr6BWmlmVU0olPpK3eA7EseISfxiY0Pn0=;
	h=To:Subject:From:Message-Id:Date; b=p2TS0eCrED0+XYGmLKBEj+xpVhCpbLmf3OvSFS9azRW1vcG5j4KGAOgOTu/nz+BYJ3LPp+WaZkOPcPzS3UM3ZYLwfswBcAPB4ylGKHlUF0rvVi7Ia+slOY/u4e4hBWgrZRfd7zUO2R/T2jbbt0Dq3GVIQHG1ucuZpGcUBbVp4Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HC/2tVoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HC/2tVoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D8BC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776182253;
	bh=oSba4C1CeVzr6BWmlmVU0olPpK3eA7EseISfxiY0Pn0=;
	h=To:Subject:From:Date:From;
	b=HC/2tVoHGKLNiQIbw6FSkf41JCsHRPeGwzzlsV+UOrAhs6HTygA84MTftkARK4R4m
	 sYxTLmSRjM23bfWPZSFsRlVMVR3WoaOgaBmYdg/ce3BxfyzivASi2yynYxPCJ0Lwra
	 1K9jzQ5X7TOhHmEbktLZsK26iUtySpDeH/q9BKKiLxbXlTCejlAjBfX83Q/HWsr80w
	 9uTS7H4425jn6gDulZrii1UwLYr9YB8ybgofvli450uQkV9KUtaejlXprveUyiJ5tV
	 HrmYLzJKNNAyw2JF6TqwUu88eJPta0sBxTXwLcl1fQtxg5+K2p7bgm9B/FvNqiUUBG
	 bFc+vt4vrRojw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA370F9D0DA
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177618225368.3756.789191185905008974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0677a1ca82a778de8136f5bb9d6cc9f3839f7b7e6dfa89c09b18648be2f78eff
Date: Tue, 14 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776182253
