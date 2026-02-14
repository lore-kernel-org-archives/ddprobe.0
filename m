Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED6C30F812
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771086294; cv=none; b=jn5ZNfRsbtsK0XZNY+bW0+tfb4X0tBz9c81O3/KyEhNkHBs4uMmv6yHycX6AM/8cgUUBmo+eqk0OLxD7xe3uaKqhyD4bRZVkjUiargoM1mQaSnqCpyGtmVUPSPNpW9FBDj497CMZ9PDncGdmHu8gQMbMNXrMWLavq00PRLhN2Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771086294; c=relaxed/simple;
	bh=CNT645nVXQuaNb36fO23HUQiGZtp1vd1+oduClNpITQ=;
	h=To:Subject:From:Message-Id:Date; b=lM2+lZ2mDePvZJRQ/6pjhL2t/8Wc9Uq+16DZgQSBdXlrE4paVGyygL2BoFXZW6wfy1gd9Xoxjh3musSIUGjtbGnyypNC0G1CfD3ZNpNC0miRoAhu1e6gD1Go6B1ikOyjSi17mlyqVe1DmKeWbtDfocRWWa7qpAcDm0XIoU1NJ1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US3J75kM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US3J75kM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF310C19422
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771086293;
	bh=CNT645nVXQuaNb36fO23HUQiGZtp1vd1+oduClNpITQ=;
	h=To:Subject:From:Date:From;
	b=US3J75kM7gIr6S18koXjBdWt/SUVOMaLT/p1r+Q9wF5qkO0QjCVqmRe0Mp+KISYDs
	 h+9EVK91taivc6WZr30sJ9Jr+zMaYOABFeMwEKi19DBTVLnJH9FR1jgJIxl5f3DBZY
	 KYSh8eWN+xanJRHcXyx5pA+/TooLMKTe4CzLAbb9UGO+INy4le/Mbcoxtm80U7n2sc
	 8lMyiDI5eXR7hhDmRK/WPla5MU4svPgfg4hoBriAH8h7LllKIdi6e8VrjWHN+SNQav
	 vtnRfOH97eflv2CR3tfZUftVeGl4jgmzKrtj4aT6cTZCJiQ873DrSp4ITIiDN9WSgW
	 JTJJ4JdgVVEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FCEF5849
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108629363.27388.9950121826894911397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e06e4e27243fd8c5b6290004edf223aca5f470d10ebc4ed01d97839912a54254
Date: Sat, 14 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771086293
