Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E0F3A0E93
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782119194; cv=none; b=rN97vd202nQtkr8RqC8kijtat6PKe7cS9pGedqN1XFed7ogaAr43id6MpVFLAx4cr6RkifC/Z8SCyucrHEjaMVsx3ya7ZnX05RcRdB1V1+RYzvGRBusAxPW8zBAKLDU2ibaOEIkirU16/k61UyRHb8DWxTq6jwfE969WRTblEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782119194; c=relaxed/simple;
	bh=wfMLPy3IzcjFoIkI6+LE+iqnA7ZmHMDPQ2fjf6l1Z/o=;
	h=To:Subject:From:Message-Id:Date; b=EHE2UyOX2WoES90M0uqTxU9uCwT+Lp297tjaLZvD8NCuUW8sMimor6AP4oZWJvwv7cm1SisMi/zNGZ7yN1KDL1M6USVzHUiNk/Ll/3dT34AZku2RRwqqvVWyZtc5siuU3KT3/Ts3WDDHIMUAPvRqHmI07pVfjRXDPUnxkiQ738s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YufF/uiP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YufF/uiP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E90C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782119193;
	bh=wfMLPy3IzcjFoIkI6+LE+iqnA7ZmHMDPQ2fjf6l1Z/o=;
	h=To:Subject:From:Date:From;
	b=YufF/uiPELU/FAg/GBUX2uoUzCpYumPw6g3H89BRpUurkfj5bRLJXTcwTZLIXbJ/4
	 HwHNo/dqXqv+PXEJJAIC/mTrw5cVIt8IYS4JJGAOEnR9DfTCZK79/uQtMrpvUrr0Fd
	 0h2DDzXE5t01GnHsSd2cRVny+q39JGr3Ym7QqOBK9zRM/qWGauSIP+hFkrGj2AAGnF
	 ccQ05IDsfzIxGHwtxavDgH0tH0FwHl3c0WWI7Wl9bx3+ZVNNFtsW5uMKidiOD8iRzw
	 7bcv3NNuTnDrEO5ckZ8uWyUsUeg8nXpooF5YwqgQwZrUIrTEX0eeWB8jpPlVRd7rhM
	 9VnUfoTgcZ+qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0C9CDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211919375.17725.8977744334034223777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd027f6aaf0f413191ad970bd3ab28b1897c1f4d6bd34d0d3bf0e673bcc905cf
Date: Mon, 22 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782119193
