Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B2B146D5A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782617914; cv=none; b=PotkkccgBBVgetQNb0JxB9XGte4Ukl6M4kM1UVL0NAngviaxniBTQiih01a+Ty6OmQBMldIDceU4sn0gGfZiKm9X7asHK0EsNJ7mFhg3/gfT318+HS9moav5jckFMh9NOyauOluSKpmIkRwjA3zjb/p2d2vFxNDkYB6xhYahRzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782617914; c=relaxed/simple;
	bh=2ub/QHaSB/6hL8ntPhmkV/89xv+D5kNeQ+TUYB+CIL0=;
	h=To:Subject:From:Message-Id:Date; b=MgtzYYxNvnOATJfolqsJ3/TJEL6r4ZeJtJpCydSQob16zRaedIyTEIvkXRYV8TCzuOhQO6nw+CwLibvuVyohuGkTc+lQ+BOVWL2HHJ684WTwprKRuZyebSq7Rys9kqAhoL+M6/82RHCFhaF07fruKX1KHOig8XINX9h8yKGKTPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcJO6MeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcJO6MeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD5EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782617913;
	bh=2ub/QHaSB/6hL8ntPhmkV/89xv+D5kNeQ+TUYB+CIL0=;
	h=To:Subject:From:Date:From;
	b=jcJO6MeBa9u3+1Fp6CmuVBBrAQ+L/BmYNA81jje2Bs+ESsROyM4MmeWt/yjMkULRu
	 hizkHq3fImZ4b7gbxbwf+edB5yw9IHE6NkZhrym7hQY5zbOFQ7r5YB/1GPbPVFwcKG
	 xfITe1PILT0p2fMa9eerNLU8C/xBgF9HlZkwZw3SkMB6NBav66Yrzjd1RpR+WYJcpA
	 jVvz4ANx/0sZhIdqg8iBLlwnlBPhnv0RZH5aYkt0x5HhkLsUzjwrlsi6rk3z8wfzm+
	 msA0SBKj3StJjqAm83XBBGqsx7lJIobKwBTiPpcNvG/R2AaYpDsRTPvu0uaPHeO9AB
	 5tGLpN0BvcZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B884EC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178261791371.30868.14065328706171502630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121a4992af581094365859c1da1e7fcd0213b9eb1aecde87c383ceac9a03e152
Date: Sun, 28 Jun 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782617913
