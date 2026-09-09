Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A751492E38
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788933034; cv=none; b=Qs0cRX/RMvlseFV3hLtwpPw5LP4v7AwNFSGGH1FS/ZbfOdpGOFb6H3jOvr8xHdBJ1NEPPIpg43cQiDbUteql6OGQkQ1BcSlC2NcivHjv4Mcswv9d4oRxR2FdVQxJTc6FEE4vaL3phSND2r9+9YK3kYECS9lVHBZO7P9qWKww3KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788933034; c=relaxed/simple;
	bh=MV3TwQTI/jqCnYlwDQ2hjCKMY9km9tkf2zfE6wP4fSk=;
	h=To:Subject:From:Message-Id:Date; b=ccas4iVrq2iVDhZIQ9vFAdmkqA6/QaH6YiH4cjwtZzc2l4YbxfnszPfdSjPhLfTtvFiOk1jSxSk0/KU5iGPG8pgBdGoF1T/+k5HLT4ijZY21wYSHiywsL9LwhgZoU66rLPRfSB9GP+Car9ZonTWpTdtjsTnzF+ffTmjAi4JNkRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ura7WX5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ura7WX5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D594DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788933033;
	bh=MV3TwQTI/jqCnYlwDQ2hjCKMY9km9tkf2zfE6wP4fSk=;
	h=To:Subject:From:Date:From;
	b=Ura7WX5Ox7JnnPiVi+yXXD/yZdqsVakaeLtO/fo+0mHrpPrpsBXq3UJghVvVKqQ3J
	 GVqbxX6NXcKE/X8YnK7cJw++N6HZuUKjdrhnFZUulKUYEfhaxNgjzUtvIkdT08JaL0
	 wK5tu4YZDG1c4OK/p0RFOt1DqmO+FdXng9sP7NR98wiyDGrkyufsO9qrleyvcVv2uL
	 Wo/78WL3FioDlFo0dpZCGp1I0V1RHETs0IBStXETrm78Qm8OcsYeTH3shLf3snX8tM
	 cbRWptAaRA4cuOcLKk7mGHelZSgtqYDLo3LuyE5fntmEqxAISuqir1OKX1ooK1LNx5
	 yhJwwm1DB/YFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF266C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178893303368.11724.5301776901525722048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84239fad6826c59c50e67b46d3d9d4f58945cbc52b7327b7c5492091b3e99372
Date: Wed, 09 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788933033
