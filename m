Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FBB358363
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786713634; cv=none; b=Fjz9cb2RkPLTQYGzK9InVVSe3LzxXoq3odM0SLIAaeMiFgE28T+jIgGE3s3/r+KUjbcJt5wEF84vs6vgdkiJCyjXA1u+Nl/CMmztr/evl5E8pgTnQ+pIUqgw836QMITREJhg9fkmf2r9iqy0Qg4fdvM/TLSTx8gIlwNey8NmADA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786713634; c=relaxed/simple;
	bh=c/R+Ul0Sy/81egspHkR7NtoMKjWGWO3nn8Twfra0rYk=;
	h=To:Subject:From:Message-Id:Date; b=qy+GH0BK0vzlh7pFDZINgCcZTHAjGDa8rHZIlGxyG/AnBqQ8ysBbphAnAOmfOZYmqEKmfopGZa+51s2YUqayf5fhOM23yQK8ey/yy0IgPtA67rXDLNQoCW50fLMpTU+ep+4RdYqRpjMAC9+kCYOqQROYhq/QqiMPONoeUUs0rtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmDMiDv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmDMiDv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB453C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786713633;
	bh=c/R+Ul0Sy/81egspHkR7NtoMKjWGWO3nn8Twfra0rYk=;
	h=To:Subject:From:Date:From;
	b=QmDMiDv5+JEcHAL2e+bdG9ejCKlZ1FBifoxzEMx/CMbD3d7WiYQDttwgFG7z0v2x0
	 nSDVj0qPHaiPUPmA+yJ0/S8dn6hoWyl6WaoJXnpRlWogxvJoGBbmAF6fS/iRrf6MrN
	 tmpKxRDe/CAYC/w3iYaEtvUj15YPxe4JETQIQzoksJAHpIo4JgWqssEk+Yl9iFkCGt
	 arAQxE5WykNTkqXcYkp+pzQvRENw0YhmMLEsmJemSPbKxwhRCGwpWrQ7jyy6S8nLnI
	 T4b/VbjGD251j5jSSAajGGI7nn9QRw4GbbP6ECyJMm2G2wVcsvTnFkkcbrvXCagJie
	 By+nS7tNS1B4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85CBC5DF69
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671363368.30134.8393210977539724453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5213eb1f6cdd10d87740728a8b1fdc82a0dbc382edd679c7b57927a657d6f48e
Date: Fri, 14 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786713633
