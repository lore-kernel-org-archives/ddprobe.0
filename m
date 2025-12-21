Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2626426A1AF
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766310234; cv=none; b=bDGeHk0xa4FNy9Dd6k2651FgAZCJ/Z/YdkPRlGwWqcGEI93pF8HPdKLIYbbjcjCf5hS71i1MSS+MfYhiQQ0lchCZyzu3d8Ft3InhU2BMDywb7wD+8V06cqPVDgu8+9iB/I1oBZKwRKXB9KbXa0jt0UJ971A/zM9RSH3Uw4EqPyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766310234; c=relaxed/simple;
	bh=aCblnBZQAmPYPjmNtv9OWEd7xW85mkXFlaMdXyIL43s=;
	h=To:Subject:From:Message-Id:Date; b=N72E7QKkuwpkrU8aFvRZcLmQTOt1IgXbpsZf+n5HVXTGJOjURvw8mm1IUCFbAbTFsKZyRL2SioGrg5EusvMVG4YZG2nRmFoZY8yH3/bxlaZAxejXCx6jCflmzEjZg99sHaRfCT3kOzDCJUuqKFeFrONqLzqTa3XXbtncGZWfmEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUojIEyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUojIEyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A237CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766310233;
	bh=aCblnBZQAmPYPjmNtv9OWEd7xW85mkXFlaMdXyIL43s=;
	h=To:Subject:From:Date:From;
	b=BUojIEyLkXOAtL3c8WUVL5uh9eupCA8ZirP7xnRjPlJ23CoXPdG3+a9gNNQf6E8/C
	 i13igQDo/0u0uYB3A9Rc5zjuDaOxT3COVNjPq8QZrFye7Nqs9zbZBiXSQXMD+ZvnoS
	 h0WldFQsw7EdC6MTTItUSrUHCciGYGMZkOz/6Dvq7zTbIFIMuX7vPSbv13iAMXg7xV
	 xDB6Ou/fOGudEdIQodlZ0hSeKBn7ssTTSjSInXaOpfOkr2FHV9eZOBxh0Xad5ZJNqS
	 BcqxlflZ1r6vYi3uEG0TiotT7ehecp1q2QMa3Ne6jY1JZEXPEq8N4jzlmwANLcKmNe
	 lm14d04CCPeOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238DE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176631023357.6579.14056886931277363267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e7f200794536a2e8b74cd2df6b637bc8d02c663b8ce2b569d14fe02103f98f
Date: Sun, 21 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766310233
