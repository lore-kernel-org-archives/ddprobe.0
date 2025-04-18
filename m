Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44620267AF2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744942794; cv=none; b=e3qfM7hRkrRSc/omjzU+CVr66Io5lPq9ewvFMxejuWx6s+SqSmJAdUDrHxbBPLWksL8nF8lfg9ITNQoideBCeN6GHYdka7ZcXrEDhkwyi71rDzBroTdxFs0lHBnm0eTWchXs+9zii4Lm8akAvEbABHWiZg0DeSXgEhEzPPX5M8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744942794; c=relaxed/simple;
	bh=/Cjlm0Zrt1AZ6tpZp7ILkKxZDYtkFK709/Gq/Rg56yA=;
	h=To:Subject:From:Message-Id:Date; b=QFF++KXcYoPxIgDFxtnc46Dj98G8wJ521oDYb1LkFNRejQKrZF3v0G/dVco20Cm/8SE2sGTF9Kt4vRiOvpq/uWXQxSFQPuXYDOvTdVO5zF3Cpvtrm4R0mLI+xCR+asJ8sbHwwn11WswXvrsk44ZbOzg1ZsJvsFYedRE52dKSH0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kheSsmPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kheSsmPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E78C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744942793;
	bh=/Cjlm0Zrt1AZ6tpZp7ILkKxZDYtkFK709/Gq/Rg56yA=;
	h=To:Subject:From:Date:From;
	b=kheSsmPPxI8EohgEWmf73At7isdQi/A0PuL6ImmvufeAdGnQuakDehjPlNgJEf+Ux
	 EFd6MXmQvGoH3+FHJGyVKtGP7fBUxOzOLgawIKISB38qBfFL1kqh0cMTg3gIxKoCZb
	 oIhbWWXzg5WkGUvrAB8QUnLrgnw8rZfhQd71oQiGM60h3hFmuEq+uEO5s+ts9sFz6d
	 JePehPJc9JEqq3mgAuX6QJvbaH/5lbbmPR/UHmeGuKJSaG+I76VdoXt7xJCH1oYNzU
	 PjIXsCfe/x9w/5MkJ1hEl7OtAxbuZIbWE/5hugG+r845cCNWn3hvCwzj09OjQ4+OJA
	 Lh9x1mXBh6UIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB16EC369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494279365.7752.17335530365951742848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b37d03a8e9286aae98c683071a3b2bf31b9b6d2d46de9358f2041b760d347c
Date: Fri, 18 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744942793
