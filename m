Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A49B3672A1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780343674; cv=none; b=PlGi2sphF2tDBYZMIb6OpJqL7posh0bnu6Xs1le17ZhcBGAQXWO87jPnvnCZn47jXjRWRnqWq+7AQ9WUdR3+V01rICAc21PP10zvmEy22bdiEPwcn7hfx2yegPYWj17vx2Af+sdR5pXAnHdfBsAXHz5rUPfbZzXBViWySV1GzVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780343674; c=relaxed/simple;
	bh=cMIB28odUTyFlgRkyb4tQGYgF8yq+LsmIVpWrp4qQjw=;
	h=To:Subject:From:Message-Id:Date; b=Ivy+EeHvJQqbDNuM8pL3/a5E2F+ROXEmge/B8p91MFwaFyozxDqFq4K2exX9M/fbDnqUWNJxnI2o7CkXY2aXdnn+EeOxUjO7xt3HpXoAPiT4E30DYcUJqLycTizMCFBNpNvazu0SxOab+t4hvEQPzr6r/K9Ii94+yfWZph/FK0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJLOgpoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJLOgpoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE3EC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780343673;
	bh=cMIB28odUTyFlgRkyb4tQGYgF8yq+LsmIVpWrp4qQjw=;
	h=To:Subject:From:Date:From;
	b=PJLOgpoG7/Ffa60IY5UjGEYi5RWC1C+LN5JLYHO+1ToxYs4sPo2g6zxKjtgDavGsh
	 rPVXTS0+A6yizfE+KW128+12dCOs+G6qxF2/NK+WW/rwUP4VF2Dsoc+wf9MyFG9Pj3
	 UjYzTEnXFx517nJVGGDAwHAQtpXw2c3aA/mRTC2uJKInqu68YMjqnZKGgHsAC+48cj
	 1/mpoy73YuhmbPOdAsLf2qGtc0et2Fd+jXnJUL3Tyrm6Q5w+wH0E8eU1AMfhekhg3z
	 K5v7mYHIK4MuDyX6wOWKV5OBT/n2HLkJT2pu5lHbFz8O9+WA2y2wMDuHKl4NDHtSYe
	 jc9G1PRq/tjDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CEACD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034367371.32691.2345007651903695730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a8f533c0a95ff46907e652ff59c3b9ad1e6bdc9eedebde6b1a3f0081ebfaf4
Date: Mon, 01 Jun 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780343673
