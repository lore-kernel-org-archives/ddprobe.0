Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B1218FDB6
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718407104; cv=none; b=g7mbusrfa8zVCy9cjASbnnLH8bdsagjCbLZw8iehnt/bKbStGD3QezVf3bt2h0MxjuRzJTLMWg+hfUC+PTLCY4BhkPyyU0TZYf+AmsKRokjZTzW6gRL0pTqeASFjGV6WI0xp6ZjcRDlhnxhxf/1lKowjAfROfSXQdOmJwnWQerA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718407104; c=relaxed/simple;
	bh=4sCLsGUW6wRnIZAqMwcYkQH0z3H7uiaq0zZiGTbY/gw=;
	h=To:Subject:From:Message-Id:Date; b=bbmhPzLkZo9a9WSRfCfMkZxb2Ik1X84LWVmgwGxmywpR4hpKDbE2a+pDZ34nCYDWavqQ+YrFleRzbz6aqLvyyu9r0B+sszPbFMV6Wzmwcz9UNF6CCeLa8iJau7yOwdqr4c8G9evIVAT3HPDb0qx+9iMDQQ4+AYe23981UDcgivc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq3wjaGN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq3wjaGN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4D64EC4AF54
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718407103;
	bh=4sCLsGUW6wRnIZAqMwcYkQH0z3H7uiaq0zZiGTbY/gw=;
	h=To:Subject:From:Date:From;
	b=Gq3wjaGNWeWTQz4bvAVAiETZ0/ovbid4b+gl/7YmN4e7xq0hs5HPV/rDolNLpxmBS
	 N/iSG5mjAd/OhR3e+UNcGwCC4HI35h/NeyfuJPT9v9dieIWz3yxM9sZUf4zFMwAVxt
	 8WbI/HQpUhNMELzgQ8xLt3sElBJNJ1q+ghjYgxBmQP8HpZRSGLhDtycxztE64unmYF
	 /KQ+yp7gcL5OzGnI5wFCMrvDG9rpjnl55aKTDgghG3ySOv+m+mWHoSYauqpTBMJ994
	 ejubSbfZFVEFAfsovFuGPI9m1ELfKov2gHYVlx+/AjbPoz3Ske8DMogRPTHkpUYYoJ
	 mJPv3xX1RWmig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C561FC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 23:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840710278.11083.11641381274096618103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18dcb2110f3b9d5ee6f2a15536cc03135e4ec87702895e02d86ead7f0a4db985
Date: Fri, 14 Jun 2024 23:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718407102
