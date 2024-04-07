Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09788374D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712500097; cv=none; b=MEfARJaNeCHVRe5IO968EPl/gWZR0l7w+sMMNP9K9n1wnoR/Vbq8TLZfyEzpk3eYUhyWiI3rncmXY/79cQMs9gJuwEKJq8bo/DURwavqzB3nfmZNC67aJXLusCzEHtSFqun9zdSNCuTVq1wGlpA2tLhdPkmNRyxATp8e9fKj7aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712500097; c=relaxed/simple;
	bh=F6ixmdEOkofJzywWE+mbESfKrbTTyL9Qc0uqTxnz+fk=;
	h=To:Subject:From:Message-Id:Date; b=TukwDz5ke0D7tS2N2232HSKGdI/mTGJtJf9RdRoJRrY4Ar3UztOuuSM4iqSITDU7+WEBp9ZGYALT8GxiuWWQEpB6rIxGW5lg1KMiZM+kX5pbwEv4Z312Ztg64HWw9rJ6g1qyQ7u3wMCO4NLurPTfAUIdoO3e7dNk2iZzMHgCjAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsqxFUyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsqxFUyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DE60C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712500096;
	bh=F6ixmdEOkofJzywWE+mbESfKrbTTyL9Qc0uqTxnz+fk=;
	h=To:Subject:From:Date:From;
	b=SsqxFUyqRj+FLqJovZjh15nLbg9JqTty55edFzRAbZidWHr8M1tLVr2nq1yvV8ASS
	 s9N7mBrHUrRV31ucGfotAPotjItljMk65s+bEIxRWAo8Z1EDVnzX2j2infaRa2nt5X
	 XobD9yYK0zrrnWDPKIZZ4nBIlvtHj8N3Oct22w+aG6vfApq6mXp1yvr9/RElZ9uXiH
	 Yl4GG676cLvlxN2HgGYioj+XwRuZVmg6p66R139YYZneGd1NJUHeIAn+WPWYR3pGgZ
	 6lx01CUYBGz6yu79QBtUyqG9EhSWq448Qv4VgFXTFp8Fq2bXJ7XN9UZaqN7WwM9WKS
	 Jdby23AWElNiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65203CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171250009638.5517.8157890815019284811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394d1092ca3910266e2caeae0c5f05383997fdfd9dda0da32bb2193a0f98b177
Date: Sun, 07 Apr 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712500096
