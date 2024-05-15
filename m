Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E81374C3
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715743943; cv=none; b=YtzUjGHAT4snue3LjUpGijDmI+wXcecH1qi73ZHFhx6U7905I/olxwAPZn0DttdItlZ1RcbDBToyaVjYoCVgHjTcnj2p2Wkw9ih2ciaieSNneY26nMAr/2n4jkXPCmXhHywwORd3pRZME1w5Q2/D89Dkk7GQi2vFnNDQnsMKLzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715743943; c=relaxed/simple;
	bh=+JBnxoOfBxYla5n8QIWGnur9qeqEjOeBs8F3OQfx0Vg=;
	h=To:Subject:From:Message-Id:Date; b=fbIa9qGls1SouUSUNW2OOXTxTH7xlfd9RyjSRnGLqlIinxXRbMPKrZMwqd4QyIUJQgWJPEUzNLlEVSpgLo2gQqfdFasb8jjMMPVuYjLHjX+uvrESx4tJiJ2tY0L9p9OJYmh8QK4n23i3BBdXIY1b1JhaQoCbZ1sf1hYuudXVM+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK0iBh6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK0iBh6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB92C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715743942;
	bh=+JBnxoOfBxYla5n8QIWGnur9qeqEjOeBs8F3OQfx0Vg=;
	h=To:Subject:From:Date:From;
	b=WK0iBh6xtDlel6OtqnSwrtlyO9sh2H3Ai6dxtMqaAALDhhjesjtE04g8A0uZRdZK9
	 6fkgwaQoXnYcpGQXXtov1JH8FNCprUmEWYptidPnEOWSADFPv2LOfx+oQ50FPhkdub
	 Gxyx1JuTxAgtaoFNKdMMoRMD/ZjoJ8Z5IEaHNM+x50KfgvwHi3WMAFV8r6nv5eRVWu
	 SyfzAQj000G9rr8ElvdJnfcoZqwvfVoczJ/h+wGSntr53n28pAZ4o0BjPNb6RZY1TJ
	 53i/6Sa4rSR9LOrQ4Z50eVhXVVEnj4HBhy1mwu6Ec09r1RXgrTwfXRKwShkXq+f06q
	 YfEiAUGhIntgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7942C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574394277.31039.12093632267645967946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7ce8358b652688c133ab6e07ce8ebdb0ce63d8020d25661bbf672d9938c134
Date: Wed, 15 May 2024 03:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715743942
