Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D6F2FD1BF
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771242894; cv=none; b=twF+ascHgY85xWG3OvKC4Q3k7+PNlq3y10V9YRxE1VGKguPVTMuUlE5+sCArG4KOd4uAsp5d8BMrKtZvF6k/BD1xEooEgmqkbB5d337DZpWCXyaBdn3mhVsR+m2f5bT4caG+CG2cS2pSuy/WCMCBTCv9CJl6anALLvAdL7YHxow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771242894; c=relaxed/simple;
	bh=SqPc4e70rzDPSOC6arzQ83rwOsPHUrX0AuVnyjUiMYw=;
	h=To:Subject:From:Message-Id:Date; b=UObiNOA+Px2sZhYyF5LsfdC0V6HEpLGNnHkmov1fQNLHChT5N2gkZXzRh9fCcZFSaKhaezTz0Bqw5d6TtizkWU4sQBS7HcE3JqlvBmaFA6EZJ3ymvtHyLE+UKGw2eJ4ygnpf03XO4VaF/KaE6DAF+104jWz7EWzd1rmniLm4sNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqJp/qMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqJp/qMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7594C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771242893;
	bh=SqPc4e70rzDPSOC6arzQ83rwOsPHUrX0AuVnyjUiMYw=;
	h=To:Subject:From:Date:From;
	b=PqJp/qMeSr5aNkSanK+tiRTp7V2TI6DLH9riz52ugamYhouwQO8ufmvLQs/geSFYs
	 asGWrt0gPXyY8TcOgHmmDgF9rWCmrJrtcNdvpQosPlrjRpdC/0CXuy4CmBqcPTX1GE
	 4JLrX/SZaPrW/Bju/Swk+vQKz13qETvinv/h0vSHTZ5Zni/aH42e8W+2EkThbliWF+
	 T7nQEw25Wz79oT2cCfbpP6GKz8AbYYsgpfZwIi62WhVbxV12j5ITjgpOJxr9NC996f
	 6ktSWaEEJyFsnHAjumOkon0MKMHiI/kOHWdzALYCqNHT4bAF83U7gqJQF5s5koV0BA
	 Osb9/0sU5aEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959F6E7BDA1
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177124289360.2270.3059032622155670419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6376e304220045ccd8e4ef45537768cbdff44385b64679e7cc19372522f83f
Date: Mon, 16 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771242893
