Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9A81D555
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755955194; cv=none; b=ob2Nq/19JSAFA4QQtwU8SEs9VqvbgQzvoW/khBdw/m9UrJQ2WTw53EFPQ0/YyIVNXWLQ52hXIRUuvnAiRz2lFoZSmvVEQVprAZ63hObQAUgQWA+PpsNFGL/ryykOIFjZQon0/NxQvm8XDdnZoFcbvh8maQKjWsNEUJpFVoYsNUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755955194; c=relaxed/simple;
	bh=SPdP6dn20ZFEtMWaB7t3fxqVdPkliHRKN+MUkzLLIx0=;
	h=To:Subject:From:Message-Id:Date; b=Ksx5vypkfQpppqnrUjPmuPAjr1Vob4XJ9e8J0mMu2l4mQ0S0g+aFff6ZI2tDwM0fzCaJ/u447oGLFvTygq4RO+XjBHQy+9+UJdNDrTYIF9WdvCEgFQ70xWJCgvJ8UjLB9/oJDyw0LkLhyFbPPx3uraiYGRCbZAD4NrVZfivgPoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFkWoPzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFkWoPzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48F4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755955193;
	bh=SPdP6dn20ZFEtMWaB7t3fxqVdPkliHRKN+MUkzLLIx0=;
	h=To:Subject:From:Date:From;
	b=LFkWoPzmKIDZwDPKM8G1BV7LxLeHb4Dn7WOn1ZPWnQUosjPCV0nsFiA54ib4OR934
	 XTa2fnNF9cWRUJY6KA7ViEMakl7vBcCLJx8yc+BCYc1SAlO0H3NUoPVic27giDoo9j
	 bYl4SILUbB6d1RXbBVuFsNOyLgFCDPswucX94DmHNFBBzldYlMuEswUu7xZ5v0MlE5
	 J+X0qTL9pLHP6Mv1wEvm7gW//g1eaEYWjEQGHmzVvcY98Op1H3Tgx/UEdg99h4jchJ
	 75/8oX0ioCFxH8kKWp21sAUweox7YxRjOrWMxJRSa0V41wCcYTREyZDOJd5oLGC452
	 7BzQ8Vltt3Yzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93247CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595519357.5687.13601313213017458013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97461485a09a8f82089edaa02d54e661036072369f9531ac018dd11fc535ee7
Date: Sat, 23 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755955193
