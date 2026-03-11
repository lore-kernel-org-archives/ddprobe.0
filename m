Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B8931B10B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773249894; cv=none; b=WDfO+Y/kdQm9SGChh2nxbhjfg5zcAtscOl0MlYJL/jv8zehsRrBZwRR/F4QzeR5flx80fCfF4jjjwJxAULIVbR63Hbarbbd2rAzxyMrBhCn7eQNbow9opzb85/H/mdKQT2XIMd/Mideg5LCOY4oeJqST9RC9hsdOW6iDNKCLyXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773249894; c=relaxed/simple;
	bh=k0mxzt0ChOSLe3WclYUB9qy4mOPbyQxl4hbaBtWNUpo=;
	h=To:Subject:From:Message-Id:Date; b=laJ0hpuRl+DfIzjBnMOTSkCS2UG+sroIYehaAGXeEFzitpkWAo+53H2NdL6enkLXqxQFCmMfGIFS7FXgtVJK0InUWYVqVzj9RAvdpj479NLrehY/tXYlE4XoC0RQJ56ny8FA5ctF4jtErGM3MRWrwMCXi//j2pTFCnCVuF4Np1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0lYIpU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0lYIpU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773249893;
	bh=k0mxzt0ChOSLe3WclYUB9qy4mOPbyQxl4hbaBtWNUpo=;
	h=To:Subject:From:Date:From;
	b=Z0lYIpU3TiZGh2J3/Wgc5mS/3vBkyGU8vaPeINGB7nZL2XMQSXUy9seaI572IyqDC
	 tqZ2oY7gtTqKclBx+lwctReW0jubKHOjS9+OUb2MS6VQPhRHWYaoEk9StkD8KhDFLQ
	 jUI9Spse7TqDBgdmG01YXLFt6eWH7i4JUuWoA7/sNjaHkvdeg+P9oftuXoj39S5bjI
	 jr+F9hh+XyJnJf+TYxqQY2qQLsGP3lpKVvKqPDwoP9aJ+lxDFdqGJwcrBdrSz5/6g9
	 VkEsSenTOfYpf91b37skZGvbwFmwq5Sx5/ajIZiNkp89rCSKBjn3FYZSY8YsV4bqaA
	 EGH6ZuK4wcAcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C11125857
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324989358.8437.17290022907025716955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca8f1cf66a9e4925532162afc0ff7c7e3bef94014f597aecf56e87129b94724
Date: Wed, 11 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773249893
