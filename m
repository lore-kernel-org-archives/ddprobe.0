Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CFA5680
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727619354; cv=none; b=MDbxJOoOMXE0l3biPfY1aPj9Ai8Ffs9B3IDKgV9Ob/3R42D34/X9AALMBMqOayLU3iFJ23jRop9F5l2QUc8dpRzkBJOboaHKCCja44mQJEPFBE9hBtAZ5GNFzVSo3a2Um0fB3PqJ7XOfGQSnurtCNwpSpKvjZriQtlA4kpUxQgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727619354; c=relaxed/simple;
	bh=EQ7FuPBG9+DKDmO4fr2rEkxuFRMSI9lgK9O/uacszsU=;
	h=To:Subject:From:Message-Id:Date; b=I4095pmjjkbPMyj3B3cLuroBXTCWUnZUGrlaKiY/KzZqClf+0ZuoFIqSOjzPiSMU9y4E5rVM0QKh0n39F/c6Jmefu/NrsftuJnkUO7LVv5cr+w7yNI+frCER+w4r+8hmrOIkBS1h3hGf353g1JKrhQybOQPlLh9CoPyjivUoOks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diGG/eb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diGG/eb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46BDC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727619353;
	bh=EQ7FuPBG9+DKDmO4fr2rEkxuFRMSI9lgK9O/uacszsU=;
	h=To:Subject:From:Date:From;
	b=diGG/eb4N7L2Rh2markv/owNwRnrXFiEDjVOsB7cO8LjLkE8bDROboxVD4GwRI37g
	 SKBGfszXrwNWiu8A0IhLsyRGkMvvJjVBvnkRw7k8gwNbudck5XCNMwYze4GC5twDl/
	 AWCdTzlVwdgsnt0Uc0oh8KYGEVhg8Qyjp8q3oWOhRU2JSYCxpLR7YP2GsQWj02QfsW
	 sWT2gseCab/98Sd9ypEafvzET0u96/UBIcjikKuZ6y1jM9hiv8WHs5vuK1ml7wI8w0
	 /gLwJcopKvEmwKtpDk9qnSebpzRYwGIYuhyBYUBV9STQ+56cSQE0YK1K8xEtSlROC3
	 uu4qTtNn3xNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E585CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172761935361.26407.14321136434885648816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285ff3b620ce540d0bc6cfd8fcb77afd46293a74ccd4cadab504fb8350a9a558
Date: Sun, 29 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727619353
