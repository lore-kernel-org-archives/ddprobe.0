Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E4C1BF37
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746952194; cv=none; b=Y5q0Wx1La8yP8FbQdZHRpg9Jx6SQMa5XiiQMhjXP6ADlQv3Hy8h21uUa/fWiaG9K+97qPwC+TsVhDq8ewKcmX/uNte6BxW6taTMVnKP8936u4nO57v1PEBATwh0txaNXYwi0EouFdvOdRFtOWasEsjc+cCx88osU5/xZiln9+xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746952194; c=relaxed/simple;
	bh=+J7VAIePqlurCtg9EqU2EaaqoKpNkchhOxuibqIzvvg=;
	h=To:Subject:From:Message-Id:Date; b=XZBDgC3DDD8/+0H0vNbeuLRdfi2DGMIfQa1XfFIvNFPwteRk+oSkS9EtfdkhnWEvVMyJH2F4EVAVT6WTJicFIwslGSWHUIg4b2Jvj7BuGbsKPNQE/xvqvLx+5jVFaVoszMAc4eMUZisVG3oKFiZVd9PBMdcDkNXHElhgerJcnkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwAoWprm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwAoWprm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0D9C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746952193;
	bh=+J7VAIePqlurCtg9EqU2EaaqoKpNkchhOxuibqIzvvg=;
	h=To:Subject:From:Date:From;
	b=qwAoWprm/9Hknr4kupI7gDe+OSPYPHioue5V01EJpxQcgAyFdhWn2RAM6NGcRJ/fk
	 MYt5nlVa7RrtyN8GyLBAfwcEVGpp6LCMgM3jcrDsi7ddQDq/u/8SgvORVxYrOtXgqM
	 jbipyVHegJsuQz7wVb3AsbOXV+FV4nuxvpS1hunHMJcdLCFrQdarP6yrc+LnlT3ocs
	 tA7omrq4nt2i27wDngeQw+q/uGh6ktV7s3eipjfRrqNOj6K09rrXJlr7By4R7kfhnp
	 iDyc+IKpi1MHGCsamUm8oFAGgjdhjim0kgjv1av1si2dL4UTbCBvTNKLazX/1r7sbN
	 bO0iWf0fo9MWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F032C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174695219357.19642.11950886713185858041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee1f6a78851a632d6f369e6462a52f39ebec8cfb246445f29269e79d6a30fcf
Date: Sun, 11 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746952193
