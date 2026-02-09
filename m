Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355DB309DDD
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770671034; cv=none; b=RNGScLsAMWSjAtAx7Gjp6VMDkihHqco3qJGfvsvW4WwTjX8t8/zOtCC4Bc8vtdLkBzKugsQmKFolGAT3PhXp/l7Kl8GnB4L7UJLgTwF1WeAPvICKq5NxPFqaWDrNZwmWEvvruZWSl7zmf0JE7HcHeEzr7Xu7CgV6SRAwbit0HFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770671034; c=relaxed/simple;
	bh=2Lkp3MRm+wiXCTrYpNbVTAW6LMW5hWLTrcsW6RK5kHE=;
	h=To:Subject:From:Message-Id:Date; b=UPmv/GxMOywJFkZy5xwUUaUuw+UD0T4BlXJTLOb09blQnX74h5CLDuI6n4jvQrBgY1IqyxsDgk0/aLUqQjAOyBVLkqcXoTfuvziQj3CKCAE3N+7HxVwybFxRA/pZfBG7ObbJxIslJKw0RlduUQAYB1HKPyGMbdX9glWKKsRLocA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7O6p4xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7O6p4xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A7BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770671033;
	bh=2Lkp3MRm+wiXCTrYpNbVTAW6LMW5hWLTrcsW6RK5kHE=;
	h=To:Subject:From:Date:From;
	b=b7O6p4xbweDoU5bfqad/BrR6MvT9FqkLlFxqSqt3JC0Pt5hAT7S5+JP9Rk7J3bbUk
	 Q3nqFSs+ZrhciSA0APH2BmIhF2CYUla/uZJ7jvmn+okVujKXABIXWJgL+qV7fUKvR6
	 bjVAoG6fYz0maFGpHkr5Z84CoJBS2gayI3+fW6lFuDbRuV6jyKD+S71TLkXOcY49y5
	 6CVlNXXsJOpVbOgFzwftBg74cCahE3eEy2pJQxYmNQDKwcn4EzAAnivSVl4e5kz1sP
	 +O71Z6lo/Tr74I239DFoHxef4qARPnwAZXJXx4GscGb3fXhYr28Pzzh72UHepWiEPk
	 XUsNJLR4QcisA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCBFE94603
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067103366.14223.14898187179650978920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d111d669fe77c0d811dc266bb87cd730322582eb6f863ccf22565472b93677
Date: Mon, 09 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770671033
