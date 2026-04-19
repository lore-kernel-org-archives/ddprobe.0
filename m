Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB7933CEA7
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776577054; cv=none; b=XP2uTHKJHOLxOGHZDcL3Xn7n9yW/FjfiEJoBeEZH1ZTVhSYG033MDkhIP/BPD/yN4aG6ONShzNj496VTZuYo6nPhXyidsIWlYjmvxUUuFy1ZmM/oepgXp7aXltruR5r5R7gttgXj4E5p6NkE8cCBfUCYTJZB01Ma0tUKK7u+rco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776577054; c=relaxed/simple;
	bh=3EXpnLqDZSOcXEEZNDQydNPMXZFpAFgCoVry/dwNzAY=;
	h=To:Subject:From:Message-Id:Date; b=bVNmQ3rGKBSJtGpxxLP4E5ttPwPAx+klVxowOFdl7PmE2mY/U2YU2Ww+Ke10IvYbuBBKQJy0811NEbI2scXNxAq9XERdpm4TloXWTk8wvyW5Sd8PPXTS60j/pIbWHORhv6//0gPRs21vWMGsnS0dR1Uxoo0smkcmO4dPmc8Upr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpFmtf1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpFmtf1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF816C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776577053;
	bh=3EXpnLqDZSOcXEEZNDQydNPMXZFpAFgCoVry/dwNzAY=;
	h=To:Subject:From:Date:From;
	b=hpFmtf1N1T8s83Q2LA2sq8MBarUTBUsxUE4xju25Y/kv+kSMogofvrba3nSksJINu
	 A3SeFekGLIQq6ngqfvCehu7AcvtIqME4/Zx/N10+Qs9TnIvXoy7P1FXsKuWUkdm6RM
	 kAmjhiQdrs74cx8ls2/dc+25zLhBSRV1S24z4DsBIsolr0xuKFiozRa7YU6UYuP30I
	 MtFeEOcwRhRfOzM/p+CnRbiMJQrkl5zdvrYT5ehGaGZtb/CNLiNjLfa89lolqvA2QP
	 NRdmJ2hl1ROdr2pVgd7cDG26j7fjiYki68RcayG0SSQOxRZgLr9XSH+vFR6nqfIPob
	 nhFuS2o+eA3Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A8EA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657705368.8349.5659869575477775012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21fe724598dfd95024d677aa2323f5ca233c6085b30a6b4bfee899dc732e25b
Date: Sun, 19 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776577053
