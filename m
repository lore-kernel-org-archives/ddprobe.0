Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402B2322C73
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770767634; cv=none; b=KKBtgaKmZEy+md5iTi/mWLWyfI8PHmIH5g1Wp60kN9bwxaIMbG9LWw09ilCJ2HfXO6BwEZRs0PlDuVwouXysCvQsp+OFaIY799wSSlma3PYEfCmf0EhyZWYTLrTVlP158b8DevRdG18kZ9ilyl0pDg05xD/ShXVChNHLxKiwqpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770767634; c=relaxed/simple;
	bh=D3udROxq2ABzdaML58dKF+mawgXPtetN5DiraU/uCLA=;
	h=To:Subject:From:Message-Id:Date; b=f3qKaXCYS0xwWCLEp/PFd9+MfZJjkHoXFlSxOYrYUvTwgIevaDooIalNc15pTMKPOAZOzdPl6e4qUP8CznHwv3EoBiARA8SXwPGyxFJyChj9q+Mfb9HQY1t8kvbPnAm7b8zp9+REB2hJD/EnPSVLq6pPhVPU9gP16aM1/uwURk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VdyLJite; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VdyLJite"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6F3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770767633;
	bh=D3udROxq2ABzdaML58dKF+mawgXPtetN5DiraU/uCLA=;
	h=To:Subject:From:Date:From;
	b=VdyLJiteDz/SOmHXi8wZ9rnLElHDUZPRRhGOSIqPF0TMWN3dcN+JOid1PWWu4ag74
	 u4DNEqlkupCn0WbtS9I6YtEE5metUedIPDklXQOJ+IiscInR0AQ2RVtsP9zRfX501L
	 WX7tdL+E2AbVsTVFa9ZcZjEmIbBCHaymnejrV8XQZJTwg/hOVrJ2kU6UCX5RdKna66
	 EPXzdGI1MEoffOfV/BUWSHgY+GIIN7r4nEEiyxnc8t1MMqFrXQdVDxYeNb/1+xR61A
	 RDypcH42yj+NMbL7HNiJLkBiELXnMt/DCqOptwgO8rnrjTi0vx6+kau20bx4eRy3GO
	 jTUIeOGKicEfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FD3EB5944
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076763363.12751.13027911605012817708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4ebaf28f82393ad7e4534c3e9efe9864aafcad0138a843a841dff97ea16069
Date: Tue, 10 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770767633
