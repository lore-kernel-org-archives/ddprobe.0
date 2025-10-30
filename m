Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F2A33B969
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761865194; cv=none; b=rJMnWlGRouUCmq6o7gCg6P3c9sRKfpNsKQNNVk4YcLsyAOf1Gwh0VOflbbZnujlwFnL6Z7wnP/GU/+xhSKNL9unAmOe7jlMQbu6b2OepRUHKsrCDyEa9sZWAacKAmUQioEhnogl8IkSvNKRR4emvKyqA0jDg9k5V0IxF43060f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761865194; c=relaxed/simple;
	bh=frFDR0v+3Uw9TCIcOui5BaqFxx200Ub9LD1j21wa910=;
	h=To:Subject:From:Message-Id:Date; b=Rj9yokkhcjJAS43GTlqNcA6NIMuuGwgxoD8oCmoFbifN2fzZVhdrq4hHteaps26uRDrvTRwfIvFLsO8vIX32WRwe1HaA7FClMdUMLmyubml9tM3DML1/W8XxOeEEWRkfBab369TS6DF+Ov/1+YovNQi2sQV6El/r7QoIxYxX/AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDre2vYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDre2vYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F007C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761865193;
	bh=frFDR0v+3Uw9TCIcOui5BaqFxx200Ub9LD1j21wa910=;
	h=To:Subject:From:Date:From;
	b=kDre2vYr2a/irUubwF5oOv6f7iN3X6AUYpcVTwgjrIdp0bjjX3/3imtaFrHNnYZof
	 cBqFnCofrIqVz+yZCTdkzUKLJfVXERVWnM6Ebs+Ka/pAcb8S6dOe46uKFx8FM9fIxa
	 y7AnE2wLYiMWgdNl4F8uFM7XaAB02G+YYO7qEGrJTz93zbhrARnUqAM1KjqxS0BEVS
	 2O0BoOKie5S9s906Lf+KzAtnRpWl4X4Ufj7g64xpZgJ/U1gAAf2xjDwq5mz3FFCsrj
	 0G77zy0l0R9bTVArfzBnXFHjlnuAbVgjWSU8mrw4E3/qdBL79K1ZsxtcjNxhqoZlJE
	 Z5Jb+bHPGJsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90690CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186519358.18010.8503450577479023848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374082fa518898b45d193e65aa00d242d5711fca4188073bf4246cc2f95b1551
Date: Thu, 30 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761865193
