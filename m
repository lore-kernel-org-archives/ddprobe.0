Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D775343890
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779673954; cv=none; b=MRgOJ9yRuYhUYW8WkWV5lO6uOVNr0wOSGeswZZRqu1Dcrl/ZIkEGMAbvI6oEN2hcPCSFBOInYs8iiFZGSSyaKlVR2i2OQlqnQdnFGkC01UAIIHg479a95+bWFQerNW7CDW9hVxFwo/WSpYi6VeFL7zXJGX536o49Eygze2Xean8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779673954; c=relaxed/simple;
	bh=uNXt9NfIBMr1U/dVJsTYL7j1cQawIrlA8nHMD/Cb+uE=;
	h=To:Subject:From:Message-Id:Date; b=HRR+2B98yx+DS2ZKdvGo89BQx6fdCCDKTmRyedctrD2dyiYNzoIeMpIpCV4sCz1OJ8KmUh10Uhfe6ShmAk8dAu/M3AneM5LRf4m8LxoVAcESxArT8HcHZVfRl4gby3J4b70+SQA0FHkLHBSIUAKqJPsnsQIqiiDQYPDyacAADrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYg4LfG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYg4LfG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37C2C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779673953;
	bh=uNXt9NfIBMr1U/dVJsTYL7j1cQawIrlA8nHMD/Cb+uE=;
	h=To:Subject:From:Date:From;
	b=gYg4LfG3Tzj5Owlrj9IzCV0rHXxjHiTQJM6PW73FDHUWpkpPbOrBIS/zeO+hLBMoo
	 PhaJP4g7o2AskR0SYSguf6tCjweqDG5I57NhzvDTxtzeXK232iKmt+gzJYDmVgIiur
	 Akcp6EMbvBmVugztjjK4+SfjXZEl+M8soxzduskflRorJ2qHXuGxBukVDHayvFddQF
	 z/RAiaRcxg/4qq6VfEwRas/uCeAZnqr34cw8o+oFv10gH3ektEj6fZav1ctyKyXJ95
	 bDxqA+h1SlzzNdFYJtc8kRYYKUS/WKGHysO39iKH8xO3kpQ2YhN5cPQZfus6fQ24Ic
	 9vM95ghedl+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6DBCD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967395368.3148.6276939708329726412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4499cf0bbadd8429ec180146172b15f94bd796ba8e18323b7971c6f63b8d467e
Date: Mon, 25 May 2026 01:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779673953
