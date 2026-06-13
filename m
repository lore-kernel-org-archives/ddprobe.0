Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6A53A9014
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781393794; cv=none; b=new28nbcPOPU+40wteIyXpZxfdmwfPfga4I/McqnQR9MEthz8iU+1s5/fSGo7NBWWgi3dQ0TWrFHOSnXJyuJDZUQEg1zydqYsJxvVQAIzBgB9F0RI+xK1up3Kx5Sb1KW4mcCG8UcnGm76jiPy63unW7rFRxrQ85zOVip8kPWgiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781393794; c=relaxed/simple;
	bh=jiomqcQ42OZ/mMrnXjZLsslJzDSBrOY+2GHJ7rfUTQI=;
	h=To:Subject:From:Message-Id:Date; b=p6upGVgYzcRYjCiHI8FQtCPFXW/EkXKLtEYBidhoh2w5UU0egTedLtw2ghcfM25L1tFVzkZknBmw9NZ7PgKCLh79vjrVM2xna3xnMejboRAHVPQQDpda7dPyTvM+sLZtnzav0qYLU/ELW1vXSQT+JlasmSYxIlN3dKzADKeywkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+koJk09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+koJk09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8FDC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781393793;
	bh=jiomqcQ42OZ/mMrnXjZLsslJzDSBrOY+2GHJ7rfUTQI=;
	h=To:Subject:From:Date:From;
	b=M+koJk09VIEtfuTLY90SBsvpuqIPnA6Pj7Rl26BwqEBofhM0Yq+pqP4MRGc7P4CBL
	 SwgJZFs7BPMGpIrHy1NH0p1oSAJPigxy/rQFjft9dX7WqJqVWuBprgbxTDHT2/G+KT
	 is4rp0XFTYP2nx3OQGpbN8Lb8to52aSF81WlPU7LTn7KtWTmrAwdxSRuGpeZU/Utld
	 B76YOEWKZBHsGuQ7K2nPeQ8vDZ0iM3r7yHK5pryvlMFLjxL3F/adXzl+cGaVE+cF/N
	 AQOel6ROisv3d7QqCiIJwQiZwShImnHz4uCsphbFhcxfMpWtke2vUfGj50612QryAQ
	 IbivCmI0WK8aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19B3CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139379369.20907.8902375644173121503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde6618ecc0ed879b27b15f86b08a3b2602294ddd1e49f71e1e83c3476fe2798
Date: Sat, 13 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781393793
