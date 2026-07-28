Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABA53BA222
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785260434; cv=none; b=aEpsajsF2EDvKLy0paGphL/0ADbALLA+CXGgQc6lNtq6jhlhs4pVllDAJnNu03OR64fULEGUdK+YvC+Z+YSdLrjf54vDv+dTraZme3rxVAP1lOULaA/sLFuwiuZFS0iSHPJoJmSR4EI/94T8DNszO0Losx0+fA9HcxnIgC+vfZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785260434; c=relaxed/simple;
	bh=LmbGr6w5tyVlhdX9SJQVJqDZCWYPI/0/XQ1ShGvEO9A=;
	h=To:Subject:From:Message-Id:Date; b=iIilIiyHDT3YGrxvr8I+i7/syorjp9UAGGEAk7P5iPtuC6ECAx2HU5fifBfEAZEtxc5HlgrIJEwhQeNG6dGxPtUIVv1jVthiz6PeA+cn/1ajzF0aw9bkl3H91+g7QL8pVKOOaTPMtcvYA+uTSbFjXDCDWKjFEi7wzQc7Dc1HmWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SN5lGtMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SN5lGtMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD55FC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785260433;
	bh=LmbGr6w5tyVlhdX9SJQVJqDZCWYPI/0/XQ1ShGvEO9A=;
	h=To:Subject:From:Date:From;
	b=SN5lGtMOQZrC6KUvNbcDlKytjuyjgoMB5PEQWxdztzsoQm+dBiEoHBv5xldfTKdOs
	 9iHLmuRprrSjWjzr2sChRVLfCnZ+ms68N3qpA5jqC2XW7V76UwuP2FYpU/1IGlOLna
	 Lixmaan/gsTjEMGAtpLdybCtHmyQGVm98rJZvpoTIkpADa7D0H/P+Umom/f4KDvaEb
	 WiSpuvf1DoK1q87HkQ7epoPrzHtnXmd2pyMgUK+6CrqQWiaf7kzEW2j9ryYCCxURkx
	 OgEKsOT/1NzmWeJtfpmMA0s5TrLn6qf0PwnBvhF1Qk9oufa6xhF2gMp35KM1qDr8jd
	 gbvHPf64XbZSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A981DC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526043368.27443.17091554490342097513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3de3f598689763dd1e0db06de7872ca1a41727565a19084d33016290fc612c
Date: Tue, 28 Jul 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785260433
