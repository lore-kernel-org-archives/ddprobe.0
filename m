Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EF822156B
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757454594; cv=none; b=KXxEk77wG+hESse/vKmerjCEmJxc8l2Y9tqwUfYJkwRCy67r00pinidZ2b2M1QEK4svkhHS4ZNUSOf8LpWBNKa2oAd/N3s4BzrLKJ/vcpiRx52994Pr7kPgr0TBrpqsXHbylqejyl0MiK5uodP8ChZGa69tjuf0oMOHSJzCEaLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757454594; c=relaxed/simple;
	bh=MBa+YCvA0kG9/4RAGWiPXywm9fta8CFcy00Qs/uCM/c=;
	h=To:Subject:From:Message-Id:Date; b=aqPtfiIbWenhUD7+tMWUg23lcgTZYDwd74Vd9Tepijx+PXexwzf/QSGoXAOPA1wV0BwG9hCZdNlf436e4Fr5NQLgefDu4dThA91xhzSlhtOBn+wKQ2y0IU5pJzEbf6QlXKGE1MsYGCr+85Dfn2DfOD3V60pl87lQaXpKKy6OG3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URaHjvFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URaHjvFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E7C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757454593;
	bh=MBa+YCvA0kG9/4RAGWiPXywm9fta8CFcy00Qs/uCM/c=;
	h=To:Subject:From:Date:From;
	b=URaHjvFmCGds00dC09LlFLh7fBfkXtjjxExsUm9f+EVLWTli4THos5SZHcU7HtWZL
	 Jo5dIRmvn6mszz90+tqQc4crxacPR2aIMl8NzCpxOSK931e2SWR+6q/JBjHUdK0dE5
	 /J34OS0fJ+ij6dCHmGNacIAu4t4XgpGWDjZM19Qjj+s8IDCsOCAl8B3lSJpw/IG1f6
	 TfdjUpy71BkcJceOUSfFRLvSMdmJq1qrrQ9U32uKK+FQu2akNjSbCnAEPjksL9vrMR
	 cuOvKs+B3FqiHnId9G+Cb/8DQs9trnV3tmrg15tpCOb/XkDPuZ1xmfRm6yCHgBkuN1
	 eHmhjDOwcPgZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93361CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745459359.816.6927445169248188807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ef4533e26d631b6dcad207a9b462bed38e4d629eba5e13a6b8a7d123826a91
Date: Tue, 09 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757454593
