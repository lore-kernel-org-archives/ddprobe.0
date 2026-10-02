Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455B44C2261
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790952034; cv=none; b=LRFtsYXfp3abxKLlg2yKZ5GC5BQZq2jND+0zLGhGDqQoyPy4T3AQlTgdDn5UuKwjWH10nkrF0MBaZR2vl1Nxdc3VvsyftvqC+9GR0kM1124I62bSv7vHHn6iGbppqzlZu9Soczse6lYuy/mcbUgdnmsIqEa09jv7ao88YSW9JT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790952034; c=relaxed/simple;
	bh=XfGg5NkpOgE1tC/X8wnWmSj2szR2sf52cdApNxfggo4=;
	h=To:Subject:From:Message-Id:Date; b=aWSU6wUls8n6r/yL2baZUcftJ1sGtL5CI0otPCIPdEfw5J85nHfCDBImLaFxvAF4TwvXSFK2Cu+6rbOBKRk3zqEF45f0R4UnhxSIAzHR3KkjjAuGFBFwEkRmv+n9QfDiBDQyVjWtFSucFQNvTQDua8Fhv6RqkNeAl97cG/ILziM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu1l/a0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu1l/a0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4534C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790952033;
	bh=XfGg5NkpOgE1tC/X8wnWmSj2szR2sf52cdApNxfggo4=;
	h=To:Subject:From:Date:From;
	b=Qu1l/a0aeOAU6FvP6C5p/IysTYwXtR+3CxCtTG3br7RKL1UiENng/4UcC6/fw86QW
	 92tdgGpLYMyKDUx+A+iP1k6Y2tVbTRgZvWMPjU3unYVs0Nken6v78KFP114vtHUoVe
	 La+SmhYWSRx8l5YVNzM7qhpCZCWLmzmRRbcSw+FH+J91C5kV9qo5NKafmGjrsjE6Fb
	 66AY6R3E3ntQjhPKuM0QanSIQaS+nt7fZs+HRRe2sO5ngyPUc6EkgrnFOP8ZhTvePB
	 gmb10K1uSnDRC9u6y0ZN6EwvbiLMuwPsdpzmhEFIwpoFdfMCda3aLQ4ssDjQH7lnDr
	 cewQ0oMFvrtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD375CA5FD4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179095203369.25605.1713059355028606537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6294eb68a8c972feadfad06f208757137e332ef260d5ea2e679364d6e0f6911e
Date: Fri, 02 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790952033
