Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D902421EFB
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779892954; cv=none; b=mgGOxgflEV3mTa5yjbcLisqUCRCZiUirjpFRenux9fySTrgxzQSS0zyKdbN4WCd39h+SuztEbuX+kAIfZKTg63FqWiATT9CkBG1kadaTa56HC4le1sS7X7QGiWsHIfrkoyd+cCMDw9aCG6WgZV/cZlc8Uq5IM7ft7UIQ/qKKlYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779892954; c=relaxed/simple;
	bh=SnFw+BIicii0nCDSZMr+2O8JBH0FnJf1cMy9lnUw+Fo=;
	h=To:Subject:From:Message-Id:Date; b=TAMZziYbZauMwFl/Qfz7mze7OlA8LueBE4ysODEPcCza+ct1lSJrTmvn/trothq2xpY6HRBzncIrDWy2EupWkc3bzyS2Ue4HIdoXPwED0pJ7t0h0H+qOc9H1GS4OGYmSixHF6dPo3vXRN0Uj/y2gokphsRtMII7zYYqEqKvBUGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0xSqcCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0xSqcCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CC3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779892953;
	bh=SnFw+BIicii0nCDSZMr+2O8JBH0FnJf1cMy9lnUw+Fo=;
	h=To:Subject:From:Date:From;
	b=l0xSqcCE1gicsmMptGn7+DA1/OM0nqqkJP0UD46isyavYpfT6Yglgu1jGi4O/7dSq
	 RLvKdKz/jDGbPODrlHxeID1Ij8IMjYHtTF2FKWSmV71EvnnEVPGurkabhg8nFIrwiF
	 +QELpIuwiLZ8FEbaGYpoYWNBJBnBARs1jaw2DFKAAKoFDvYG9wyM+9CmlKmfLVMfyt
	 Ene/fVGTC5drrlTqiTLGXLnfegx4ggiocvYrCojTY4UihTWqD+dRmB5FVfY87gSfAQ
	 e6ozCtjK4vVdrhz9BfngN+3Syw1Qbw0u0mrAU6B/f7dS0873UN26CAvJeN7MhqBhuQ
	 LomnEKWrop9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA86ECD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177989295368.8056.14978659741143940624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6b3d93ce19ff7aad4d337c0e341bfcafe3e51806fe46d3c6b22eee853aa927
Date: Wed, 27 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779892953
