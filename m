Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1145E2F90C5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763107194; cv=none; b=UN1hRTvkyRQL5QNXXEXjdxdEDvJMtORbFALZWRGdcXPK0ZnSxlLg/QpimISVJKCcUVU2s4Mbv4ERxVtvJC05nvFjdXAwY1J0USLMXtjOhYMxYLDUx58VioEs7BsCcXGXYs8I/CMK7H0z77qM4u6gYAhEm9tQ56MPSsfAr6fXexA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763107194; c=relaxed/simple;
	bh=kjISaaxQ957Y7o2cgyz5VlgzH74H3yQE59RdOp9zszg=;
	h=To:Subject:From:Message-Id:Date; b=Uj0S28IObJxUJiMTojXQ6KWZ8wBL5bVkqx/S26nE3LPxplaAbJJgCC9/G4yNlUzU676kvXU+nmpiosk8ziTQwa9OrzLuYzuYUY1D+suYYVDXLv1yUh/vjxUb5eCTMiETfVfUEEWFXsVdLlQrga+8C6D+felooAtEDBBSoy/L8Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apo/pShx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apo/pShx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF36C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763107193;
	bh=kjISaaxQ957Y7o2cgyz5VlgzH74H3yQE59RdOp9zszg=;
	h=To:Subject:From:Date:From;
	b=apo/pShx7dy+5WVjvcLM3ufT66Orl20JWgoTihO9URNvGCj9wIW5pHREvoR3hayof
	 XYWmYFaR+qJRGdOjvypsUeDdYBtivmNiURk594zIGCuAejS9oBFHrWd50vzt1HQtgu
	 XvLYeAXv3BAtAZrkeEiTdQAlXbeU5U040Uk/zps2uqi7dm0DJzHY5TPweDQeSTAWee
	 EkVHjLeSnbbQWu1hGH9HyPjSDumof71mpw552qTTwSSj7tM7Xie1YhF6RXhQuHOlIF
	 AYC0yWZrgc+8GeXd8nDaWdP2dJw1jVRPFjIZ6W8El26k1zOuCfGs5kwudgVwQglXuw
	 onewmx4vTmgjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABBCD98C3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310719358.6553.16786397753944832445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4c2412e691f9532650ad6a8091856ac2f2a359018f7aa374053a2bd471d161
Date: Fri, 14 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763107193
