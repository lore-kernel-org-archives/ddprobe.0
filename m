Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2DA1FBEB0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770556434; cv=none; b=F4jP0p91tbuwyx0vPQqeFiQWxnKpuGUmWGVZ2F8gaZSSUlDum51gIHVvPJ/v3wyblIgTqgzaYZJDOP25LHTcVbj5lDMzdNpKZA98HE1fWDC3T9ctN1J3inEaa98hhVGLcx4gJGMjpQN9drK/rlfQvAMO4vJ+awYNMalSraVFhYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770556434; c=relaxed/simple;
	bh=2x2+mTLz5Z9gsmuxSd37SYxnc+zHaXnszIT12nnuhUM=;
	h=To:Subject:From:Message-Id:Date; b=eKRbyht7j9/a7plndo7lR9gZubc6ebzuh+u/IByf3xz6dppq1J6qzqh+4sQCx8LXzilWbj+fd6tv+7cR1dRP3q8e3EAYXInwHx5C4bdPAXTB18TF1kC8mCISdiFv0GTmYHpTzfXPzkQ8zrXgY948eFnvsCMb8ArurlSPeGa/fzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X63rE0/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X63rE0/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770556433;
	bh=2x2+mTLz5Z9gsmuxSd37SYxnc+zHaXnszIT12nnuhUM=;
	h=To:Subject:From:Date:From;
	b=X63rE0/pVYESb7H1joW7yzgN99h46SaN9kl4h7NV3VxzMoZFUhlizQzgUbH6AlGQv
	 HW2XBh+zgFo0lN20M5AVSsHnEHnqianpk/VX/Vjzrtt2u7/U09OZJhkNA0SzL7vZsc
	 a0FaWuG64nUCmAyOq01FOU7VB8FSmFg3ErUPxY5SSBiXz4pkkECUE2y6uxMTaSPI0r
	 DDLp1iFU8fa72cflniMYEIV68NAcaOepZLLkHQqqxRV9a8BOTUgZXXC4EJWXpbDS0C
	 ig5qTQsWE3hYRIMLR+g7wvHalq+7/bbgnb95qQhpBV1Ng0gKRTSVVeqsG5D/RpPmUT
	 ex4Ma0K2zCmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7AFEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055643361.1619.1834406443532729992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6367d55b79b9d3eb2986c673323b8daba21a8049ba07d4c96dcb208dc8bbc4ca
Date: Sun, 08 Feb 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770556433
