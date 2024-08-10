Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B916415
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723266954; cv=none; b=lmMoiON75p5ARGphxmZH/OL40rQDEna3vqHzCWsDvXvAtcQb76pWQHk91z90ZqBjLCtECNz+VpJHtHCt3lFTJQD+t+LOYsDiwpy7p0sZnn7aAJ+W3zbManJ6NwFxSxMpE7QJeCXOXi6VHoYnQ68KnR4eDP/3/sfCWcVVBJK1tF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723266954; c=relaxed/simple;
	bh=DKgUzClXNrH7KcYEOVSxQ8WoJM3rONVwOgJYAIHfPiA=;
	h=To:Subject:From:Message-Id:Date; b=cf5xpsBb/uOi/W0kw6emnXrr2y2IKLy7E00a/nrkDuJaKity5rANpXHPRjTPrF/Des613q6BG7seBAtRSoXoPnwog9XWgTmYCVu9PntWJ72pGGRBV7m1rj5Rk5279T+9xnv4SCTxHxy4c5wfqbFlDQKWaUMTimVVzmkbosyFJVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1EudmCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1EudmCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE476C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723266953;
	bh=DKgUzClXNrH7KcYEOVSxQ8WoJM3rONVwOgJYAIHfPiA=;
	h=To:Subject:From:Date:From;
	b=p1EudmCCQ5b6Kxs0Jvxa5lZnK2O0ZasBZYMJJoKcAQ/wuBcPwVXtoGMgDvL4bTvRu
	 p2b/lsHJFAuToQsmH5un4gDF8k4/p+QId0f+2Ko5VAbNJqLbsKwE5vMGerUTjpUbDs
	 q8qiwEN8+gyR2vKSRHxLpjxbqcWwtJR+evBBxEUjuxO4NheckKuiKHq065DanKpkmt
	 ie+xJWGclxYX33mTyBkDZDczAexa4HC+zQaAfFIrSHYofpmUw+DovoYjc7zLqV0flB
	 ekyULU+BKaTNmoUFspuhs7PcyVTTE7m0QwaFpyIYNH67nxhUJRMJzSNhBBvuoobgD6
	 p+T6dml7UIwjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982F7C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172326695359.31619.9482816070056145028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1b3a4f93eef49ddb1c8df41e89dd0cd126b3f4296d52702dac1e2f74dd65ac
Date: Sat, 10 Aug 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723266953
