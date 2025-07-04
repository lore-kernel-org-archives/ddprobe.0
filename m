Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB0918DF80
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751593195; cv=none; b=R7yu1O0FUpXpNCO8TmXM0ukfvb4zvTwbPnhtP+fHKaTrO5gYSheCXSfrWa1e6cSP3uSz7nFrvpllSommTq5FpXFMb5ztgAC36eLevmuXIPHC4xAkq/4NtbffUmf2HBWLYuj6I3t8CNvKV+h98fmlJBtiL2wVRtrkE5NGTdPnpsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751593195; c=relaxed/simple;
	bh=6wZWBMMKmD7OyuYq8yGzv0skcaNDbUykRMl4CJhYjjI=;
	h=To:Subject:From:Message-Id:Date; b=lIB606tAe+FIByvI84zs/vidADxStTNau1pxwVz7NnQDQmpV4i+5JVCxUlbz3L0GWt6JPAuPt/ESxLIUbD5tSyUQmMEWCoL0UigxGUPODOTsvP2vILiLbFq0JlFQl4UwmjeTbhKY385WYz9+bN18D6bHz8ixonw99YnFJccH6lE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+GZorc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+GZorc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C67C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751593193;
	bh=6wZWBMMKmD7OyuYq8yGzv0skcaNDbUykRMl4CJhYjjI=;
	h=To:Subject:From:Date:From;
	b=u+GZorc0ytJa0oJSKKkZeBEiMefa3pqPCzAg3sPaDV3yBM22b9dRNXX2/wGP6J4Kn
	 OQn+wgKM+oOTvrXbv6UPQLctCd28DQgu1/rpPhXS9sA+j3hUsGG7aY2wr2+fe1zRU5
	 jnFZkrjo1wqDNZY/zeyGNtrAKvgI4fWaP3Jb5HP6s8M3U7vF9HbtGtCSkkROBOnU7J
	 xytXXrBbccjZvlnd3x/6xxWleaXu+YZAZgQB+xxqfTvCkmPsFR5JPXwQqsGq/BaVMp
	 fCPh8BWIf0FzkLLwZns3ux2j5TBmx6W2YIgW9vNc5OuUR8QY738h+yg27iPt3SBBoZ
	 opQIyxMs+8H4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91733C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159319357.30854.2086734334076724286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde1b2536c492529f7e0aa08ad9eb67444566fe3be57170c31b8a23ad0e28499
Date: Fri, 04 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751593193
