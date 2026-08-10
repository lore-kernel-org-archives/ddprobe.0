Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE853B9927
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786357234; cv=none; b=BK/dXzluIvdHpuPgGM6K84J+/PJp2v3Me/3h8baPKWcup/++byVG4vM4pwTikiCWTk8F5nv1bLlWxeQzceHd4CteW53qn1DUGvxxWVV7HWRtRLXM+ItWFZKYcoZRHwvR51jL0jb9J987lva5+bu8MpXoV2yL3NhqxcjdKx8kVq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786357234; c=relaxed/simple;
	bh=GKnlUpWUdaCy8458h4UmarH5IInKN6Cz+qgJpMRdIS4=;
	h=To:Subject:From:Message-Id:Date; b=rdExL1RMXXklVwUFGHGth2+9g2bUaDng+kgtt7YC0QxE2kQ10i2aYMlF/INTA9RgEO/kExOA5psDwPdPbzX9JPaSQMb5XNKSAXjINyiU4gBIeijLxBpqTjr3MNDxXl42kkjciYUUmqxHf+28KkHRZU7kl1RNCfmZOIDfdnrdeN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOZWIjV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOZWIjV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CE5C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786357233;
	bh=GKnlUpWUdaCy8458h4UmarH5IInKN6Cz+qgJpMRdIS4=;
	h=To:Subject:From:Date:From;
	b=BOZWIjV13D+3oodsThMc7fkST3yyZTFTxC2cVQlg4z+0KrNSfq0c5Teyscmw3819u
	 VZB9PHxc3+P6pe0rBOSxOicZwLa5PXjtwZKmpo/wYLgFUJqyco+iwYLN71T9GAEh5b
	 CUZR2qQe6TSlnoXdYFX5bEFmxSjK8vx7V6PVeGBHjQ5IeaUVxXxiATDg0AsZXG+mu/
	 xKkWtml7XWEjQtaW6j1PwWIVPcvzVUcoEKwRdpnAg8AAcHkbNVtT+tsw5gexw0ww6F
	 cby95W0s/5jn9nJ7sOw2FNkODSkYSZ3YSeJLtSJUo/mCPb6wWtEdpO9He8YMqfqKeT
	 otPvOsS5DmPXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1215C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635723371.30711.452729240554841286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4eff1caa043e3733f19bf5bfb5bc21b6ab7cfba769c4b7067add537ef05c50
Date: Mon, 10 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786357233
