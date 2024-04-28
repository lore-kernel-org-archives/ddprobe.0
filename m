Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A181876
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714276343; cv=none; b=grBVP+sEz1p2jt8B1+YAmvyGgS6svGO4AygWbhp2fh2LdssmfmwwlUUvlOX5vMTjGjYEi3iYZiov2fKalAhFNt0qsUQRWDkyIjVFh1p5pWD00xPLBKLNkLaZXRNm/3L0inST21MEhMrsalc/FbRUs9BcOGeKKvh+v2GJthHiba0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714276343; c=relaxed/simple;
	bh=dJxydtTRwBELTzDzDAXOVVpvUzwErIzgl/5NcmpHOTI=;
	h=To:Subject:From:Message-Id:Date; b=GYoDuIjZlhNztEdcLou1tR7vRr19GXJSpdN7UiiMJfaOTxbSneyZmMrW+5Jjrorced2D4JmzvR3o5KihiDyetyOcGRT6GNZGn2deseDA2/NW/PIDt9TTuhSmOBXme9kLyy7QOqEbcyu9PXKkS/j6xga/XU93I6ztRT76rF/XowA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWBVtEoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWBVtEoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ABBC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714276342;
	bh=dJxydtTRwBELTzDzDAXOVVpvUzwErIzgl/5NcmpHOTI=;
	h=To:Subject:From:Date:From;
	b=aWBVtEocaOLKCDzFNoKbC/aK1h4V3Ji6yzuBqwHtBg6tSfArh58DVJUKnVxCyk3zb
	 k2QdDXVpdEWCyE7a5Dxqb32gqMKp9VdiclrudrHF36MwTE4JuwI5/WBSfud229E3zC
	 4rlHrNywNs8ga3+Mq/vxYOxjbZwjGiUQl21o8lwVlSshzS+q+gWDZcaXxQ1BqYicG0
	 qPvFxsq1RVMlGGeHk7GFttpaYPeRGwOYRx8usCqgO09fa4Y9/hVB9A0WDpVs63IFvF
	 apinizbYYVsKpNcUB6KiKXiMGaTC0DrR/OvJVQUeskse/k2yhGRF8HSNUZLuzI7Zmg
	 wQcF0OrBYMkTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3530C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171427634276.10589.5786981102717200661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e460afe3331e49af5708741da6bc8172acf1e590be4f7f7c68a7a652a61bd2
Date: Sun, 28 Apr 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714276342
