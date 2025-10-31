Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F642BDC2A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761885594; cv=none; b=C727Zmc4GJpLKjKT1RrXtC9wnRU4Xq7ZlZg/JCj/WWn/XWBYlgDq3iClD0Q9D04nt/si4kFWfgWsBsCyz/0XKhcQh3PgF8j495RCC8SHphgAzptd5SrljnUBMV8DUrt1YluhRkHqxldxuQNCtk6eHLOvvvcIMbDchpuFyohxdjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761885594; c=relaxed/simple;
	bh=3ZORvSU0PuqQTwWjpoOe+5qxb2xxhQzagO+Q6egsbbE=;
	h=To:Subject:From:Message-Id:Date; b=qOMb/GIcO4431yXcStx8iRp1Qe3jTBS5flBkD0Av1LJwPxqspNQWv0IspHGp5YavmMDhYwBwvFyDZY91ycD1an7AkHMN1YlVyxNUNndR5YuMQ6CuACsXeD6TPTze/4sADmZM5UsClK3nrir/4s1L5Rba08lNRZDR0VINB5+oYsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOMvMbqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOMvMbqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9CC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761885593;
	bh=3ZORvSU0PuqQTwWjpoOe+5qxb2xxhQzagO+Q6egsbbE=;
	h=To:Subject:From:Date:From;
	b=dOMvMbqDykh0eZOQQ7X+/KCOUK1DPQQkptwnkbMVE/3sFzkxTCBXOdcyg2do/Nx8U
	 A3K9Vo+G0ZIUvHPSxBzfFFDxfA48VYwlRHcp7+G/MEFS8o2DM1jd0rUTmTT7gXjE9t
	 qagKHlsDHq2QcVEJGH5vNWD0oBVYUy+k2Wyf8j/WXMFSvE607loxX+ujr0VKpWfP0M
	 Z3apaAA18ypxClNjsLlYx4SGNuY02MqIBWUlUoKpNVaZgoLT0uRniw6SdmHrK4EV3J
	 K4+Hf3xGzH7em2QaLX3kqLldowsWau0tUUOgMwXZNmzF287HzcNMrexF1vkfnVfyd4
	 HjNrD3haVEsSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C52CCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188559359.8733.14081125203238142674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15fa5a1bef5a559717984c68cac213f89ec3bcb7c24a7d1260c43a63d19d7dc
Date: Fri, 31 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761885593
