Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A823FD4
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711489097; cv=none; b=Ze0/2YyJPcK7fN6cDup7vF+s4vUljf7ODVbFgx+h7A9qy1Aw/ZVh+gfm6U8yZI2L+en6DWqN88Ci8ACHdvZvf0x89Ur2iXxsejNTfl92yb+G22OJgLPtOiUuZK9JR2G3wKnfHvpUghJViCLhD2TTFEoT4jrDVz7JSqchDamQfy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711489097; c=relaxed/simple;
	bh=9hMhyrAlKqJ/xcg3xsr9FYOW75cxk20i41m+8BQts60=;
	h=To:Subject:From:Message-Id:Date; b=oGClgqOOv5y5PN24Rq1t68EBT1F5Xekb8y1/QCVltpInkMaWewfe5/arJyYRRcJYvaFarrBAPYqwIcmGI9AQlTiozYmVBMfZaVR+AJPmt++EQseGA80HiuCQhQ7Oih9bx0+lJWK9JgMRO+USxZ2lfRtQW/GmqNOuBm+Ka7DpiTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e68edUTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e68edUTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805B7C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711489096;
	bh=9hMhyrAlKqJ/xcg3xsr9FYOW75cxk20i41m+8BQts60=;
	h=To:Subject:From:Date:From;
	b=e68edUTi1rG8Fn02SM4Cei1bMVGB+wXZTMi9WkTA1A2Y364K9HNw3QO/fjwT/jXDf
	 YazxqwkAbspnP6IqumUGl+CILc4bRb4yiMZ+CvcKdsVmYJ9CJT5+Jmz/XmNz11C83r
	 ooj8t5JjcZlbOD+nZpFKE8TjSHj4hihJ62HErpt4LXGUZAlUfCOTMILT6eLXnQCkFo
	 Fpp7O1mVij2VMj07wetlLWkOAM6vea2V7KkwwJZe/SdFnhkMr4uvMOVihP0saac3zc
	 NpPZmYTLRS3nFYVSvSGSR3kcymD3615Yukqrmov6KPr/vYU0txSvMHvYvwjU6ZZXap
	 SXNV/H72LBuwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF29C54E67
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171148909645.8809.15493827905484776825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964cc1e2b6fec1c52f921eeb1576270737d61501c38280cc56a6e786846193a0
Date: Tue, 26 Mar 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711489096
