Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573772DFA39
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755751794; cv=none; b=OaKQtdf1Rraokads4L4G2g3GidpGMBjUdpFsAJM64Jm8cKDkiKb0gPcjGXLRI7SlxlBveS/lNz00dM6nVs2TW/ghRUPlNiCJKBIZOApllq9JMlaXI3jm6V9+nj+1oHve3NjGbH7WLm4v1SpZmIYYKMQO4IrynhRcH4jUJSlCy54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755751794; c=relaxed/simple;
	bh=g1zphzF/lXHyBlUATLQ52f7a4W56DzVSgNssvz2HGq0=;
	h=To:Subject:From:Message-Id:Date; b=d0xiAVQzkfmLTeyzV7PRLB6/bggjeM9AH70g29DDKQCnQlisyE2Q4UCwskKwsokIi86zj6Mx2+Rqb0MFEKrxoacqKmUapMOVmTkvCtL39eu3MPvj2Kb3pg9MWdIjXimF1PBzKggwzugixzdPV/1/B7dCCJOCK83MHoQAP5wYwCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIIilFnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIIilFnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19CBC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755751793;
	bh=g1zphzF/lXHyBlUATLQ52f7a4W56DzVSgNssvz2HGq0=;
	h=To:Subject:From:Date:From;
	b=MIIilFnlbYGOzwF41tdUdfXoBkbSC8I9pBgxJtjhY0N6+aqy5/QXIRoC6IHnzCav6
	 UYnqwPVat4IRA6pEbOzkEphfIwCCFLJe4r/Wv0OZJzvDg5ZhJfAXA7Vefvtn1O/kfs
	 KBAKnf4y4ULNlyb4Vs9HYCOVy5L5IM6G/Js4f3XVWsR4HgdufCK45pZk5Bf0LKo7eY
	 Om3jndc0AL90t0UKUO22cM+kC/DKg9Hcwz/cDV589vw1ISAXp2mIgBh+xixi1cCBQO
	 y+x7cQviYo15o1Igfibm0Qwc5OxBbTXGbb+OonJsTOzbrGKk9pFd2P840U6bFJ9tHz
	 KDUtaVdbrPe3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE01CA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575179357.21077.10794321423170653571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328be0fb3a20414390e5bbb9764b79552557019eb7e642199c997247d17bee93
Date: Thu, 21 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755751793
