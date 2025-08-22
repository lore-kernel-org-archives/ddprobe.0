Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2323A2E2F19
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755843594; cv=none; b=ToEi67gYe8partRQiWhGYCAlpghBC49bF/acOv3jfrnIQHLFVCLH8D7qkXfXtAtcgAcVUQwhqagOX4cNWU4DK8N+YY18c3wMvwBcc05I3qZll4NgNhXOraJK5MRDkd/0jfyT5/FD4wHR2jboxBydPgeXWivGzoq2FEzIc1fu9sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755843594; c=relaxed/simple;
	bh=+Z0W0LI2hYioOBNzXkYmYjkR4AMCdiPPGyiq8AzwHUQ=;
	h=To:Subject:From:Message-Id:Date; b=TNOp3VD/FiZ/ERdwLpqaU90V52IXM5+1nYtDMu6iIba3qkdbmyoQbS28pREjquszsnBSTdwUXZW7o6U2tR7t4EyHWtf7wfC8+stL04OyyX0l1CO+j2fEMNDmogU1bbgmJoE1lIHNSVCe4oNf8I/3veXS6l5WPQLEj2TWatiD/9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js8rc+xI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js8rc+xI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBECC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755843593;
	bh=+Z0W0LI2hYioOBNzXkYmYjkR4AMCdiPPGyiq8AzwHUQ=;
	h=To:Subject:From:Date:From;
	b=js8rc+xI6sELEElg+fGoqlhp9jBUeQZ2Ggi+j5rRlYFgnIe5qH0koKBJ1mVG5JiQj
	 Cy95spfk1eQJI3ozaF6Y8BDlt4lfIkyYECJaR/F3gsCb7qXjsUeUnJDVGIJ04rNWwr
	 jLHSFopAPA9kxUD5SFVEAIllOA2FwcTWh/EpTAEwbypICU5Dj8ETXGzMg9Bateepas
	 gzguouw5GLubPBpAZrJT6FU8fr0+sbcy92wPS4Nlk70983Ir2498bMRD3puIdSoVLd
	 pnBLSFLr/BypFTLDLuNOYavdtXemr4rjHMfQFKIjYIk/0XFS9Q5K5eQeg3Qi2d7kM6
	 QtoMWjRK62R5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC64CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584359357.15571.18015895329615922583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcbcd89763ad3abeb4c0db82d71f687bbe558d479de78f5dd939cd0bdcb63303
Date: Fri, 22 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755843593
