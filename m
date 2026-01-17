Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D2F19AD5C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768652634; cv=none; b=TqXE9yYqFSLQFdaoQ9Xnnek1GDutA4BNWouo1Rhz/YzKTo2U1PZmwgXrjibevabAcWNOYn2VNE3XaFTRhXXJzguh4ecpEIY9hc6UdqVkQ3/svBmqrj4ZKlZyvTOWRoLtEjkm3wrVN/urQQ0Cw1kyos34FyJPRsq0DS3fPUjaP6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768652634; c=relaxed/simple;
	bh=pmSs06t5U/U9MOOLi5VRyqQ8l5L4gnoFREn3nRiRSGg=;
	h=To:Subject:From:Message-Id:Date; b=OFBtyBz+GObL2SYepmtgEqtW9JDi8aJioTwYQB21oFfnu6tJYtlXuqnAU5oCZAxZ6d9qKRF/QinVfbJoThBbb5YreW2ATZKhUmr4gR+TdFcLGuyxRi59sMCtLW/fluZqU0+6IWCVkcIGbiTe1GbRESAZW9/AnExbMmGKRAQSIqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Azq0Tde7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Azq0Tde7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A6CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768652633;
	bh=pmSs06t5U/U9MOOLi5VRyqQ8l5L4gnoFREn3nRiRSGg=;
	h=To:Subject:From:Date:From;
	b=Azq0Tde7XKtWcsNyZuqNfiYtQfOPGsHeA3o0g1px3lDuGNK57MPwQETf8Uih4GOJ5
	 pGTj6VcHO7tT3m7xfh+X96aG/kgBoatS8YrXzAHUD9A5nyeAfUpf4IfD3eRv267v2W
	 jgW+Hou+Nlr3uHhcMhNjoa0sKckovO9dGRD/bpW3/dwvxlqmnRhn//iGaUj03Pl94N
	 635hEE41uCkZE5IL5m0jRHSyFMCnu37quhGy74zFC4kLfrdRSBm7R9QimZ1lmcbXL5
	 xHu2s0Qq0Nye7wgnFHOQYp6AtcaPXVt8lng2C5a3L7++LXYA3yAyFsKq03OyIXXHvv
	 41XxXHvBarU9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961CCC98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865263358.8623.7122429982453959839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a0aebb4ae5b2197c870b290448e0fe13a2b71afa0d7c44545a5096fbf53f85
Date: Sat, 17 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768652633
