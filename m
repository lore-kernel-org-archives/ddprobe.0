Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E511A9F9B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769474633; cv=none; b=KRSZ5Zk+PojEW4EDZ50m9/8rcY/MD1lmrUvMYz3TqT547qnHY3NBSpOVBQzJhQFDxLJlEWMRuEGZ1OvUroe30wxdL0n4J53jTgQAvH6dCqZVZQBIVFIx+QYZEPoPffNi9rJZiV0YTOgiDVG5j/LLPpRznDnUdoOfxEEbQM4ImQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769474633; c=relaxed/simple;
	bh=d3XEgGC7/+OBavxZopNjzZRPEy8IbLTYtSaq7krsv/U=;
	h=To:Subject:From:Message-Id:Date; b=m+vKjoJ3cjZ+zxYseQWD6ToO0dk+k68Xd1DSRUxMRwiLN14L/BEu5XVeIQNxGi77+uIqXxQeryL05zzwrbxU3KdihLQvCG7+JXu+9b6IYCax5AzKhWzyxz+HI54nMjo/u7/GkjQdA9mZCPFLAd5SpIrxRwV0VoFoDaIHODllsgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht8cJqjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht8cJqjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769474633;
	bh=d3XEgGC7/+OBavxZopNjzZRPEy8IbLTYtSaq7krsv/U=;
	h=To:Subject:From:Date:From;
	b=ht8cJqjEbC3GItKX7xBOEnt0fZGWYZkehz3zuns4cWIJu4KLxwnx5NTZfDXnlkVWX
	 AxzZHgRlLGzSjmEWN/z1G9jbwFldnM1Yi69QGR6FHyd1xdFA2dItgxq5neboJUX8eI
	 DcRVpX2WVrZdL9Lu5R6Ip0p01yYh6aY8IDigDRCgMirYTmfj7Abvyl25N6Ql6fXT5l
	 P499FarKIn2BNAi8jYwi6PNmH/XjJm2CEpHkDHAfwAzOk242mXZB7mVabSaAtJOaeK
	 glxC+2tg+mUB+isLRX7P4Tl5dkIvEKVdMng7lOmpWwwm53jLwBVuBBnveQ+VY9F8Iz
	 C1lIo9Cc1zv0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2CD19512
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947463358.5907.2927792202818731683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e745ffa648e19163196a7a1bef4862cab18657ccc38a635fc0d6ee6d3f35e29
Date: Tue, 27 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769474633
