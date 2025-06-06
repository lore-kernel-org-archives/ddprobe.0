Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3751DDC33
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749178794; cv=none; b=YJIe+Fw0C2eCdFbu48Y3sGmt2EhOYGO47BT4O8X+kgKDJLkXThscnkSn5OkGYz0EEs9cDJOKOcr0w0sbRTbPFi2/a2puLy99mMOzP7CaoYwgh6Frk2wl43y1uf41ZyzjaKXZ0BsDnPZzAbs+hI+F0dQbuI1G5Lca2Z7kXrWbEOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749178794; c=relaxed/simple;
	bh=7zqF7a10Jy5JKl4kJmr8SSlqoompolr75qu2PvT6rzk=;
	h=To:Subject:From:Message-Id:Date; b=lziDkN+DCKwQGzxwMpnE5pI8OowL4wd3pBMryOAI9snznYP6tfvPbhALjETQOlm+ivhgABFBDM7a6/WpuFFuYum5V5BR/erYTwM7bjeh38Q/LfnNR4f/woiWSz7TlV9QetbT1wl1UrKkvRdmBGlT5xmZK33eYzdwI3NDKqa6FNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxnGkn9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxnGkn9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ACFC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749178793;
	bh=7zqF7a10Jy5JKl4kJmr8SSlqoompolr75qu2PvT6rzk=;
	h=To:Subject:From:Date:From;
	b=DxnGkn9WUIZ2k+0ufPf2kS01Q8NqUkNAujLY7FcpeMYe+NvFD0rlH1aqpDMZt/E3T
	 UGT1rgG47NXCDdjHV4msxySB9bMiUo9EhDWnqHg0I0QwQH1oBOzKXlYVziI8VdBl3a
	 Wv0r4mTnDjG/neuk73yLRPo8CIqQUlbCYX8UCnm0zckvgfKPoSBflIujZAlsBfzWe5
	 Yup7/+xabSlt8kGpTqAZjm2kDVbjx5dIAktOOaocYMVKKtCbKxQWKM0+IkZovHmwXL
	 jxwf2FPtflxGtBqknVVDmwIoXQuM4SdCDbrEtjC1J/nwBtu9xJpvBYjAmfYPGIKlkV
	 D56kQsrtQJHJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D1C5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917879358.17564.5021597016309140388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c02fc4ce4b9e05c9f0ce85d86ff49cb507e6070d2231db60b3dd945bda8ca3
Date: Fri, 06 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749178793
