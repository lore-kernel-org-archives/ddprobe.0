Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC2A2DE6ED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751518795; cv=none; b=ktkBUSqdFE7O50W0ZeMsBQa++yMtVnf+w85sjd844hACXAYbpwtsL7L62BATJ9TNGqT3OS0Uvl4wfY8JCoyj/ThEO8hnK3XMTH8PfUad3F5UNQ/eVsXc0JGsB/rJW/xNhbzUtwjioc4QjDFBRXlAIIoi8TkLqzHMgqsTMunClqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751518795; c=relaxed/simple;
	bh=4HP2ZuZ8k9tF7e/kA2Nn4wwOgYI8YEb1DVaj4jsPXEk=;
	h=To:Subject:From:Message-Id:Date; b=kkZBAKrIH3o8/5Geq3ae4RCF2xtepDB9aPkiXqPYG7ii2s0Lz63m6YW/L558+K5sNz9g+Zrf7yFN6a14FGIT0YqhpL1zeK/J7p+EkG5S3FqaGUF19a3SVQ8mDIw7xaUp2XSu3YknuM73q2szMNWaE2eLgtOstSrbV2aq5SuljFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLBqK69r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLBqK69r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BBFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751518793;
	bh=4HP2ZuZ8k9tF7e/kA2Nn4wwOgYI8YEb1DVaj4jsPXEk=;
	h=To:Subject:From:Date:From;
	b=bLBqK69rmitPqOBv3g2xsq2vBBZvkgKtXb9QCPxmCFpJtctcV2NBkRUd7SHl1XnEw
	 IKzDm5e7k+WMTiuZYReWlzTLhpZL9a50c0NU0yzf/8HVd6kb/wyj00/Xt6dqiE0HhB
	 W+77HUtNhjGI88yUBy8md3Zpl5rjx54/ZQMHmPGxAvuDBinyEa9EeJaVoW28bJY7vz
	 vHjnAbhIUbmJ9nIMXibnvuDweG5ojfBfFzS+iNSpNzDiuO3w9M6wwvc7UU2hva6VpV
	 DHGVcaiLX+1sXok67rFjUJukB+FvQlgRVQLpKT5bfYAsSkw4bjwFn0f/AVhMLGqBR0
	 jip93EVpXpolQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED74C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151879357.3352.14073638188839989643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b477dc4ce4ce4b71b6a88c9ffdbce486cbe5b83da6ec33eb6b3f474c955f3b07
Date: Thu, 03 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751518793
