Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102DA77111
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758124794; cv=none; b=JxJfvm3PVQPAs6+nPCvvZFlhWuWzTejcVAKy2fiHLtF7YLMwVGA0JDg7ASYM90LQFev2wvBtudH9Cw4QT/zmB8z9OolyL9F5/iSEa4lH8f+xHsSbw2BZwyhmoKPiZPWLXyEvLmGS44m3KtBBAzDgD7gQihCwvQqHQ5BpTgPyf1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758124794; c=relaxed/simple;
	bh=n1cMgSL7EWPcxVjc66wzoDJ/sAN/x/dBkBBclkUwBzk=;
	h=To:Subject:From:Message-Id:Date; b=jmqnA7RA5ujSk9bHIzuDMeOjnsC+7GvKrEo4lvp+qXOaOMPJ7WVZALcJXH9XTGN1/PgLnKaUIih07J9g7DgoyUqk+q8NHsLQmq4tZykBBb6xGHAlOQNYLJNUac4WMSPiwoJoYUydkb4Eyuxouv0yZMr5B5620MwCsRHHhdbDPu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jaf5KH+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jaf5KH+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3D5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758124793;
	bh=n1cMgSL7EWPcxVjc66wzoDJ/sAN/x/dBkBBclkUwBzk=;
	h=To:Subject:From:Date:From;
	b=Jaf5KH+f/FIOaeBZmehFyFPTan43sZujnaay/NyDXW1+riZRnrh+4zwjE+DZaE2Gg
	 JtQbv971DYSCQ8glD4Q1SrZR1exRxNqDFgfeQLwRgdicj1cORHGH3Kr8Y6dPn8Jbg4
	 UyrL/WfHiWXM/bcffBERWTQ640Js9rvp1/Pq9PhSuo0GBXqcDeV3KBt4hAL6h8OaRF
	 NIirFAqXBcVdlHjhksTJTRC2Oc02kLrPZzZMlAKdLydN5kkJCQuH5mnWpDaWgDQYB8
	 42HDYf/5d4yGrBFce2NL8JL+RZlhxFS4qMhGmtJA5RWKAfU1zPeG9zH+nQVcDDrGDF
	 XKTZbpjzej4nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C3CAC5A0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812479358.28707.14997542885973743094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfaf7a5e09f351a020cadfd54b3f4c732e9345df9b2e6e8d972a867aaed27141
Date: Wed, 17 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758124793
