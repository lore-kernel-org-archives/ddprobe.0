Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D305182C8A
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715727143; cv=none; b=LbRlVjZeqtAW2lKMxlEQai42/LBQiEg1afMkcaBu4Xl2Q+r1yyXD6pv5Dd8RKVqFcoK8oFMoENNXLhqeJyL9zKGInCsaR3lae1fmE/MBJLJPSxlpGzDavfdOnmmCfJm0UmMtyGBTKeFQwxfVuVS8XbJw8SPx0+jnCxyIndKSgqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715727143; c=relaxed/simple;
	bh=kWAYyGTMIQz5PJiGKduHGX2MX8UK0LI803Unj4dieq4=;
	h=To:Subject:From:Message-Id:Date; b=jwz4/P0jH769FAee59+l5gCX3TrvUS4g5Ji5ghoXq5rJ68pSX2l/4/sYDMLri67D8y5EuFpbxnI6Qi0PzS73oFAWIvlxEHMWug2CJqur12WRwKIZUkSH9MvRiItx1a0FWaDGZC5HnaXc96F8nxq6+Wb5hMt+yh3ZwaZDXZiES+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pykcSRlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pykcSRlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6B1C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715727142;
	bh=kWAYyGTMIQz5PJiGKduHGX2MX8UK0LI803Unj4dieq4=;
	h=To:Subject:From:Date:From;
	b=pykcSRljb69esIR3ipEQE3peyP2Wzk0ADiAc2FJ8brouZV/c+f3NnDBEcr4nEvt3f
	 bEeO0GhpoDwAUIUCVNi2NdH5s8Mx3yQQyWKnoO+a9jfE4/TB0R33NgXVdbZ+EKYJrZ
	 zimy5Gfnw2zSYJ6rR6Ib1IKwXYbgi1zcVPcDn955J1F+zsa4GaLpYvGHWW+DIPAp/i
	 tHg3MUmTzIWY3LRsiaMqqSjE1AZFeEDR+sTroyhbTlyen8wjyPCN5nSngePpGu3HvQ
	 a2KWejHooJuKrk7ruQq1A2038qzGd4neCZ4nQ47f7rUTCFAU0VAC/zQzCDqd8O+W3b
	 rM7aEhJQuqoOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D23C25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572714278.25597.10079195362461549195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bac4ea5ab7ccdf6917814548724d1c90c159d41b321d2e8c9cfbd0295688756
Date: Tue, 14 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715727142
