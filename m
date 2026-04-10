Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC533E1D15
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775842054; cv=none; b=i/TylQWqAE1+Rtn9uk1FJOizY1mSv8gPHluekOcoAvrSvePtknWCucx0b8mDDff5QN1IwNvCQ5VKME0vwJsCho0i5HuhnTUIujx6VnKFGIbm0i7zsUYHyCOwmsePPSg69RmAEh7ue6YV3nbVttcR9YJUlULA2/6L7cKcQcxmDaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775842054; c=relaxed/simple;
	bh=WSImieQ+n6dyAiV/mWQX0YWeWL3aXZEWmzQfpIuCg/Y=;
	h=To:Subject:From:Message-Id:Date; b=PylgKuarAF5vmViGogAPhvkdh0P+5TBNNHZNx0fp2RezyGeqdO/p59GVzzrnKQP8vrMY/Cb4FYVgvieZ9Ox4fu/FO8jaQPqOr3JGoJc+TPGV6rB0cUKPixVc1Sj9KtrMHAdxE/0TarVsCNu07EAfz+jzY8sgC4p+zWsuw5gbQBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNdwq/GM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNdwq/GM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48C7C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775842053;
	bh=WSImieQ+n6dyAiV/mWQX0YWeWL3aXZEWmzQfpIuCg/Y=;
	h=To:Subject:From:Date:From;
	b=hNdwq/GMlumF70L+lj1n+BI8GoHp58RCXK0nu/hzVYFsZ6ZUGHlanBZCNedBQCn8r
	 cxp6xlLTbqEz/IYLT5831aK+0gzJpTW9OGMPENXq2tdG9k3B5jL0er3BKigjibOORy
	 mJDSCsk0O/cGh7I3Q9OzOEJo7OMBvT8Ltu8SLQJH+5X4NCBogrqXN/64VfVkwI5o0s
	 3STBtwd5BiA2FQzlyDCV9++GqxI66cf6bePutojRwcm/7Bc4y6CGkMa9LM+XgkaYfC
	 yWoG0Jq3iZS0RKVhUfG60u3TMeG2MRUF/uHqi7vRkFOs91BcLgJPdc7i1esGnOLzqB
	 c+4b0xKXhIZGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B084FF459F7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584205368.32138.16977966366455511900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aefa302c3cf94bd85e2c9b6a66cf59188f21e29edad7348358a05bb8b5b71ab
Date: Fri, 10 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775842053
