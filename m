Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37743355F57
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778152054; cv=none; b=ZJO53COW2bw/qVaNPyBa0gwjiL3c2lo5jZW9P0GlsX+rwjDpEb/6vP2Id+w57To4HyfZhZNqhQRu+PypYAvt1hFHO8RO1gN6hpDjpPBncFBaLO8UwRJf6KkwQ3gskg1o3BNkyEB53iaQ4TOOxmKd+Stfvns88IJ7CMaRehRWNRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778152054; c=relaxed/simple;
	bh=fn2EKAY6TfziRa3hTsw1hLso7nXGnYxoJp6snV2eJHU=;
	h=To:Subject:From:Message-Id:Date; b=VlPmPv7HnkXJCBY6NRVPYbuyNDaj1QtTla5BxR3+blWBkNsNYkDk6pen7pYGAWHNGnjFlwDsy4L0f3Oqf1sS/qlNLiOx0w7Ac0+DsuWLFMBytaowJl7UQaf5xlHmy0Y4gN/EypTD1WfUyGU3iVo+FP9JZZUnAI1ivNT7vxluazo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thnXwrnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thnXwrnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE48C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778152053;
	bh=fn2EKAY6TfziRa3hTsw1hLso7nXGnYxoJp6snV2eJHU=;
	h=To:Subject:From:Date:From;
	b=thnXwrnflDAvxGAuJhUjDxW5ssqqyAMYmxJrUBmva6QiBsts6Q2fD8kl1OKTL0VB9
	 Sypv0Uk2z8aCNMyXOAxrRLz6qibeKb+ny56iBtu/vbQyyKjGjnKui/Q/+h4ucJX5eO
	 v7kWOrRax6zFyPtP70f2A8nZQrLxYJnty9wyKTXb5Q8dyEiZNSueMpgKIPf1uhuLKI
	 3SZ4kS9K+N6elAfcLM4XaN5rV+fekmrhFnFBDIayeo5632T16jOYFav+O+CU+VulFb
	 BTyfIutZ0nh9nF4YRP1FU7Rr/L7PVuIDcqk93+phmrV1Fdj+GIIZTJY+oXVA0UzOFm
	 YTJMZxNm2lm5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD456CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815205368.9185.5032359560579509648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308ed1fb06edce61f369d4ca0eee8a436f12ddfae6b5dea9e718ef609a7d2327
Date: Thu, 07 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778152053
