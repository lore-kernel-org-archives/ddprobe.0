Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5331F03D4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747776594; cv=none; b=haZaqW1x6YJCTnbiiAAVmrsvRvvpMeL1MJnDrs7wEHK+/TREF0dxLnx03+SB13FpZ4Vvvah/VICQno/1w9rK8PsEdnkKAGZSAind84+IAfpuOwFcmh77RMniPuQ+PjMNCHLE5QxFP3BU8cKS2cNSSxzMOZ3h0/fMTGig0wUZCRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747776594; c=relaxed/simple;
	bh=KYlPscK2lcwyP4eotFd3FipQmZArZnqGSI07/4Lh16M=;
	h=To:Subject:From:Message-Id:Date; b=f1q4V3nESY0M6Yao42Fmd5pqa4/xVZU/wZXebnWGfIw24XUulOhw0Zbu5pSVizu9E+lZpv6draPw4OIv6dav7MMxblVKiIJ+/FIeNFfDlYZtVxcEcmrGLVo4wYVlp1BNMASa7HOfHut+1sc/6Tiz+sO6YfdOxtSjbQV6kwB5Bvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMwo6dJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMwo6dJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747776593;
	bh=KYlPscK2lcwyP4eotFd3FipQmZArZnqGSI07/4Lh16M=;
	h=To:Subject:From:Date:From;
	b=fMwo6dJs9irRlgjJyNq42d8p2sn23BHFGPHdA/CgdUE6XtP0cOxDz1Pl+XfVfKPDm
	 8dGIm4YxwaNDyC30grXxCMCss3jALsOMsfwapNCRr591O6g0zt5EOXoedEL3/IKALb
	 ysCSgxrwRyS1+6pWmdOcXQnZqYiUAe+do2+IgiZgKdEE308Av61U7zVL0hQ07CdFsd
	 syi0BdzbuxHGCjs4IzkTNYWF9T9wowb8ntBYExk9VM7/+BFtyfoBmIhi2+fgE4zIhM
	 hbdHigU61kyvACqdChv9VoeBYH5c4/yF9m2wvYOKiv4kSNqmD0p49JI6wy3/JpetI9
	 IvDcgYvJ6jjvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E313C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777659357.18068.4007627124600157481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd3cf7217ea064319d1b5415381a6d8a7f5a9036d80e72c44bf4e8f61dfe5c8
Date: Tue, 20 May 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747776593
