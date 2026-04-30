Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21760287503
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777579654; cv=none; b=rSwGDrsmblOyThirdg3JPq58fKYFDCF7tCXWkUDXfKoXXxW1zdhz1Zcz418IZ7xxppLGhQFI/kz5N5AJbcA+o9YNLL81jhBBHQtMOx4Hz6RTYZBNhJ+fOXJcjGm4CrMBuDZN/k4UHqtFEOiapHoFp+4Jeis09FRu39Ykwcc2GrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777579654; c=relaxed/simple;
	bh=tSh+Dq18t21tHliYkpJa9JcP0sUOE0d4LKiKTwHB448=;
	h=To:Subject:From:Message-Id:Date; b=WNsRYylrQ9UjTnvC/p3M6tI/pHCkmXIJaTMjm6SLhU1Bj6Tgomj9yh6ai2DoCrfazZjsS367HZbb4dk34DsjO0M0fDasx6mCSwAixdsxHhBzFeCnic9uDzIWUS9vSmwqpSt12GKpF+MRRED2xwcyIcmxSOQbKfcJGiPsXRtiels=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sa3RQG4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sa3RQG4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF68C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777579653;
	bh=tSh+Dq18t21tHliYkpJa9JcP0sUOE0d4LKiKTwHB448=;
	h=To:Subject:From:Date:From;
	b=sa3RQG4miiRlk9Es/MoGDhVP1wgseqCyCV72paEpsCQTOJZVTzwLE2xt9jcBFwc+m
	 1fVLzLPdrdH479oNTTaduwuughyWWOjVg8Fg1uAt2AJUTp8ESHZID97pkgcoQ0JEuZ
	 mMyfbGppmeqsYwaj1oLCYMS/I5LSInm3y/98a9NqLDE9A3h8uVscR0n1cbO4XzMj4c
	 ZCuCt3rOeGobvLiLxDLSjFD6EfdMgdYUZyYxnpZEn23wdjUO+ZQYC6L4SDBecS1jGg
	 2Il2J2sYY45Mgc9nBijf6KDsoP+gcDYm5xHWFXVXiTPIxyLjhT715ieCC81KpI+dSk
	 WRrFrDUDs7jYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914CCD13DA
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757965368.3578.15343965442013285966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efec5794cfdaf734725b85e50b5a85869bda153ccd37a5c8450b640ef979dcac
Date: Thu, 30 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777579653
