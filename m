Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD752E762C
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789685434; cv=none; b=k7mGvlQB5Ypg68n9pkf9b8l03KysaAfcFnBL9ksGtWz/0t7hSrt3TzvITLNlUIOxEUxt1d5P9tvy489inAAaRZ/iG7chJQ0T83FHkjX+lzCUnhoSPZDuAhYcN2qJvYzvrAigC0OXyZzipyxbhNvLZ4BCB8vfugtgQYb3XzKXXQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789685434; c=relaxed/simple;
	bh=DgMcknwS7zpgMwotvckHcGczmqYlvM9jSaDnXcG8Zpo=;
	h=To:Subject:From:Message-Id:Date; b=Yc/9+fCmDns/JY97Tb8Rl00lWPRusgoDTJESqabL3odhGltJwvQ5YZXTRiprUNVZuKTTuq9oe56r0qCLBi/KuFWUi8hml7olpiT23ZlmavGQTRtg/dqtOHCrvg16oTYe3T4fb4SvmIGrz0o5jRuABKfs1UQT6UFcs9vlCW/VC/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1UvigAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1UvigAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3002C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789685433;
	bh=DgMcknwS7zpgMwotvckHcGczmqYlvM9jSaDnXcG8Zpo=;
	h=To:Subject:From:Date:From;
	b=u1UvigAN06vKN+MRenjMSfm0gD99j2c8nJ4HRmjFJsqQ8ycrk56Ilo7btyARzdmW1
	 XqTq7GVEwezEvycAJHvlJygsbB4+UTf/ibKSaSPXSIl8227f7lXKx+GAzZCNw9DCcz
	 O1u84u8sroVNCMZ1u9Lc/XlQKtu4kd0F+tXRBtVOGF/Bh32RDZt4N/X1r3PuEKTVLl
	 /FZ5zNIfuEbgq6S8aqVM5QGcTIv0MSvOVeYjxqRCx6xq3JrDvGZe2Y/VuXVsjNDqSP
	 ySEe8enHucC58w2aHFulvysVSHkWaKVY0wFNEh/2bFMdgKcWB3rjoGLR3xdMb7pgy1
	 OgtagnsFDEWeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF35C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968543370.11576.6902210752760795284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64486b0467bbe39ee944e59eb41d9f78d6b08ae11e3172d2a1de7f2d74fc64a8
Date: Thu, 17 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789685433
