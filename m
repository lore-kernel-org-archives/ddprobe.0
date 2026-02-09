Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB892836B1
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672834; cv=none; b=fJRYXPRQzngm8qlj3OeSn5QudQSRrd/7K8zMbXYb26CXxZHjyCkFLmqMH66Murxu3aq5lH9K7p59mk/r/FNhBQ4QLSqDBAq7d8kyn7eCM6PjYksaawfTHRo1O5HH7fDTFCbBLBBl7r/fDQEgQzEFp8CsPyOzycZt8ElaPsUPOlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672834; c=relaxed/simple;
	bh=UbWFVJG+atR8B+mQ0Ku+nBd0nnTevDlCD/MwkffbQ0g=;
	h=To:Subject:From:Message-Id:Date; b=Yx22+1SxioYTTB2wsxl3S4Ue5ZIkRXohqNm59Mx40l2J86IfEmOIF/M57u8yizMEayAejEDxEMN1VZPIIWpGLwtGXzjG0O/4m1OuyBOQTt5j/bpyr0PcavmxOf+6INUBDuEbewJZn7zcMIXLyi+SGq9GeW9N3CKJmN9tTAMLykQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRCPLHQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRCPLHQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FF5C19422
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770672833;
	bh=UbWFVJG+atR8B+mQ0Ku+nBd0nnTevDlCD/MwkffbQ0g=;
	h=To:Subject:From:Date:From;
	b=cRCPLHQgrvxL03Qi0q7RdVCmWnL0AzgwIaP3oflh9ukIKcZgO0TeQYUEPYbF1FM/R
	 tADE6tBabs9QSfU3rkjA2OKC697n4bPysSR1JoFwJcl7trqh1aslHoINvCxI/3btfM
	 iL+ANf6i6cqtwL9o//N/BvHOOP4MtQmX34/CrkJmIu4fL4bv6Hnhhwo3EVQPp8eLtI
	 J4ysD+L+xzO/j1yL6jJAvDc+Wp05kRwbIjZWfPwp6DuwKRqsDrec1QjcZXt77TTe5T
	 zp2te4jz81hCkRXSt5guTJTm10TZ30IFDOkKM90XZK9vN9KsDxripdZEZxTy4MXOD9
	 1rRMSSw6rpFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B77E0E94603
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067283361.20365.14466544990214199894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3ca3f854e6f3d3defdecc7370db314465cdd728812f0e01b943461b8a5f631
Date: Mon, 09 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770672833
