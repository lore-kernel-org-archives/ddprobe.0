Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0858623741
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753858794; cv=none; b=luDXdk9HcMESr7OC/obvvoQl1A5wVcQoV8s97UGCePvc2QQHqFnOZSRpqS05Cx2TP13mjGyxMaB2pKr/M+1aIkH/midIbtYAQ3JBi43mJ9+ZBgZmhYFK+r0H5CtF85t7xNrS+Y2QtvCV1u4VtVAgTwHLutONFNTiTg2vWtt0Flg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753858794; c=relaxed/simple;
	bh=IeBGW3lGOmorLpWDB/ZK7321dKgoAGjqJt5+lgQj8wM=;
	h=To:Subject:From:Message-Id:Date; b=nKNS93Mjar2b3QLpAqlR8hOqCJa3Xr+B4qETpa96wB5v4du+zMErSwKkBLljAiSXx3JFENeF0ff+F6Dr3gHcmKuHACTdO4A1sgZfBVowcWowEqEV1NIPlwgxXhleQh09E6Ib6yJJw0yP38zBxSufiRoZNUZqqF9ZWtxczo+arnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQsJ/FKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQsJ/FKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D546C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753858793;
	bh=IeBGW3lGOmorLpWDB/ZK7321dKgoAGjqJt5+lgQj8wM=;
	h=To:Subject:From:Date:From;
	b=OQsJ/FKcn8fbEzYQPgcJnEJCcpnyqg7KjWqukNgyM4G1r8n0+rLzMpFiDqRTL2zvN
	 qjcisWBeAbNtUIIpOQNmTOYNFwr+V7FszTyTvPFJKfjsSWEkdGmjhTYpwrEAfjSeNl
	 tOVk1miMr36JowuyFcZvIdfomlpgpYesguJ6t02z4EJ2h/7UvzTVa243nvqAjWg4TL
	 QxIrcEiNoU8ieRhagnWb4pySa69cwwVggEo/eofGImDgRTweUqkRlt5gQQG4/MoUlj
	 1dFwHVRyc1qdWf4wai76cLlHZcs/Z8oOsi5VelwgDz0QOtXShIgkSCznjLBQDsbteR
	 1+nPvsf8Odqng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE02C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385879357.3746.1111707381673189839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e868398f5f1fbe096b765579549871ecb24b1b4f2406459d10b25e0a31ccd1c
Date: Wed, 30 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753858793
