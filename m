Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A81524B253
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736582754; cv=none; b=DQyAQidLM+CfbUoSjm9WIoNdyPpXYxYB+SF3gxpfy4qVsrv3zDoCIbsY3ml4YKKiFH/Cd+27UMx9v1Uts422kf2e8T3S+4rfLb+9YxVQt9iJ1ODWtf201//XUL9uro8IyUfFPlFXz6ewp35iWqUgU41iQnv+GkFMgIesQCRKTKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736582754; c=relaxed/simple;
	bh=LesdH1RsosICk3HQkPjA6aE6UOKXm5wb2h8NRXJNVfs=;
	h=To:Subject:From:Message-Id:Date; b=ZYiEC+Tb2rTVfNlnW7z+tD8wjMOLKW1xrV1OJxoUow32Koeo9cia5LskDYGYlw1UZoxe+GWwtTzA3O2ERWcdgscWkmetPYRnt7NeVmK/py4NrPN9nKtAzqCwB9oPAkxnL2rHz9ABVv66stu3oWuYikFTy518pO0jkFTfgeRQtDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwP8Vg+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwP8Vg+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B093AC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736582753;
	bh=LesdH1RsosICk3HQkPjA6aE6UOKXm5wb2h8NRXJNVfs=;
	h=To:Subject:From:Date:From;
	b=BwP8Vg+NHfruBDJTegfbQ4EQZuugoC8nsomb8qA/CrHCHN+Jz3EoefgmolCPXO6p8
	 6Tm4iyjQy32AzS9L1sw3sjnBMCgfbjOcrBzaxqTTuBdyJVfXW4LVAonKxvnKYhsODD
	 Dj2uq3FEDPffV7GCKwOw4yyt0PfddpKTzJkS6XLHQBt0ta0dRO9QdrOodZ5e7KJ+Aq
	 dzAFfy2WNBgHqIlGsDT2BUblWhMt0D9d/95zA2crqoXl09W7KnZC2lbwqimtrhNdXU
	 5g59JCjSsZCuJ7Bgzij3w/Rn19v0crUBVUq/kbLOTw2EhwOPo1x+eQJgJltFSgE/bU
	 KN3D5M+LgxXzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F26E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658275359.24601.6016191646742784263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d0a875570c4698331c579a09c11ab9f53be8fdcad49c11b28f966b298c6302
Date: Sat, 11 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736582753
