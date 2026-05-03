Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1FA370D6D
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777846054; cv=none; b=ttRQcbCcvZNtUANnuXqgzmhEJV2Pw2FgJ1TLmGjlmw7Xtfl6Wb97zaCfMaj3vWwdkgJthGcqd0RbcI7CAN0ijGib3RdNqvWKzDh1fUhfw7wRRaoU24hs1QDEs7o8E/aLLaA3Fr8mdA/bWArexyyHQ5xLPstihY+Rc/SbKA4bbXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777846054; c=relaxed/simple;
	bh=f8yXJv4CdrEQ6upD/yJNPFVjBxBmo2Hn+C2aNteiEB4=;
	h=To:Subject:From:Message-Id:Date; b=p/0gwO4SNb7BBbxsjPRcIkWvgc8uSMEob2WxJetqUq5nT47CI+0aYlMCPR4S1N8Aw1UFgv34MILC+/u0HAemVMtXP1ZXbIbo/F2DuU6LfXjOgjHOU2JQdzY2yniw77qWgPnhfu073Qg0ro6unqA66Pcc8oc1lqj2J7e4kdQeJl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiavJKT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiavJKT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF8ABC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777846053;
	bh=f8yXJv4CdrEQ6upD/yJNPFVjBxBmo2Hn+C2aNteiEB4=;
	h=To:Subject:From:Date:From;
	b=jiavJKT6zge8afWh56WrpXSpZrcWY8MsW6K2j7k5V4aMr3r4AoL1yNMy7Yo+uu5H2
	 qEhIg+3rYUPeJEWPNCVlx4bUvUilO6nuHBiqVrPAsjZWUARaTp684LOw05dUbds/Ii
	 vMXj6NjADLWqoNqkDK/YQZxEcESWF8ttwqwayjMVvmmdqWWJAlXAFqALwH0YLIfD2n
	 UUfIROqXB3lG/4q5hODhDWHcmVWNlAPIk5eBdeutWqjFGr2PtVxFfBVOrj21MzNwdp
	 6WfGgIJxOXEzieqCS5vRGxeabFTYj7YguGAQbAoO59WF0OiQrp9zLh3HUflcYCy3RP
	 8pZpLi5dqEH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE637FF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784605368.26603.3486090838263967552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc47fe28f06582e9a0694667394d629a70a69690ab8d0b8ba1dd3060a41413b
Date: Sun, 03 May 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777846053
