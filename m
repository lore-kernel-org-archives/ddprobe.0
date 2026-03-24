Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5D03DBD73
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774368294; cv=none; b=UvJSXaEHe6lFdCTIME9oiAXHXhfn13NcKBgWFkrl1uAAQmFuFjsnDCET7NlxV6NhXzzQElGhfenA4YhvR7VsQ1znV09g0i1zZzDxd9qFZL52DaKdevzl6IC3Fi21JCs463pMBNxplkq/1pSJ0s10zHw/bEz6oFOVhaEfAlYpIRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774368294; c=relaxed/simple;
	bh=9aS1dYLrO8xp7DNvgjAyo4eLrebcL5kNbUNdvOKjfmI=;
	h=To:Subject:From:Message-Id:Date; b=NP8qoIMESOY0tZc6zcnb7rVO6P7NWuPJbwDraV73C6zlvamPZQSz5DEnbrGqj+TyfKuzaRvHNLSkBVld9X26uJ7Nm35tLtDuK4Npcn9PQOXXaRAY4LLHm7/17A+bxaSqYMkotUjVNCSByX/AavGbgRdt1Y+cicldk8cvm9a+BH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyyuY7IF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyyuY7IF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF346C2BC87
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774368293;
	bh=9aS1dYLrO8xp7DNvgjAyo4eLrebcL5kNbUNdvOKjfmI=;
	h=To:Subject:From:Date:From;
	b=cyyuY7IFhXVPKDQcJvHMfPkrA06Ms2i5GTjcunJAY0vhxN7BVjCNdTBjPMR3wHrKm
	 N0B3VSXwCNGhngO2vEzYwXoG7AgYxMor/N/hYnznLDeYFlAVY/rnCmxvluEm2+QiIY
	 mLIXeSX3eddca8PkKyUgKUWme/yCyyuIu0qFpvrtaWjG3T0wJ46quOSCGbPA6WVUeJ
	 MJk0F4oKU5tuUejHKi12C/A9SY1kSgMqI/H1dHElGRA3iILmQQ+4QqqnLQhMaO8M93
	 ctyQTZA2oHwm8KRYJYRvEgb9P9pulcLKtPK+Ite6qksqbLvz6RmzRLp288m/SVAcFg
	 +o/WYtjwKStnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7822F54AD0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177436829366.7826.733650715872502861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b1182e145b2da7dfcae0ec6bd5f40d7547db3a6457774b5ea6c35eb4643c16
Date: Tue, 24 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774368293
