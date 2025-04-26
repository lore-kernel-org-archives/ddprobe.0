Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A211A5BB5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745663394; cv=none; b=FFulRUj1MZJrQYK1nEDIbew3Ns6q/EAIqHT/7KAW+9FxC8vTpldDZP44bvI45xdPNtQpuC/H8w6p0lLd+Pet8uSKWAgu1xgPvOfpaOJxv1tgI/9bnb0J2Ykr16+bEvur6vRSQhzyGILpH9kJxIj1/sfbvWYIqr66rTHWTaVKRAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745663394; c=relaxed/simple;
	bh=dknEZEqXgs7EUKjIaKY5J+mlqt0znP1uBHGNs+ZlltM=;
	h=To:Subject:From:Message-Id:Date; b=B/cdi3tUSNwHSM8+fTGfWbjYeZL6rLm6QiDKjY9iSVQYrCAZNX1aEMqhwa4lmwmFOKjlakJuWBVYw5PSiLm633LzWQHHbuZEBJs5hNFsL1h8UpvmWVsQhBAAEhRBhG42jNTWHrsB7QPRHR9hn5VN6WjzaWQPlJ+EnDDxyzP99yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbpAmA4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbpAmA4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F0FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745663393;
	bh=dknEZEqXgs7EUKjIaKY5J+mlqt0znP1uBHGNs+ZlltM=;
	h=To:Subject:From:Date:From;
	b=rbpAmA4QauEMumTPqYynoQEGMkPcjfeeBE7pTyqRC7auACsgrPUgJQclKX/gPA80X
	 iPSMdde/lVBMR73S0BWlpvYYLYuqc+bYSiMo6OPpitUOev4vnLwbyB0YbonftC35Ru
	 he2UsBQaxkk5TWqOJ3tKkizdmFQM5RE+Ap1/SiWvdG7RqC8Ihz8BoIS58jnEwv0Sk0
	 23ZTL7OzcDnre0muLRSF/dreZs8gJ/KXZ7hTSGWZvzR9vVYbnwx4iEuHRRr4vOHED8
	 Az0ruPMDlK72puYj13DgvdkdLAKwGXNF/FVzjE55e8A9sJcf/lpxCYaIwr/UGEFxW2
	 ZZ0UpUMG+KUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9221DC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566339357.18714.9558535788520270954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624fde001fac170a2f5890b14ffc8c7dd1ffc814a9c5ef11fcdae7e85efe355b
Date: Sat, 26 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745663393
