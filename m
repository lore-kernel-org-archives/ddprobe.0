Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594C2539A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720745843; cv=none; b=ckS9My5P8bnpxSq15a1LclsKA14jDSiPvwVN4MstBxDbjgT90P4yfpxJtamwssVxwty5nGT0TfIQ3gbLH6gD5bkGFVSK+Caiufbxoul2irezfwmXIPZqTM2tfp0ReKJDY+8eLG8BucTl+mmaX/DVKzrVIlVXxKqXqtArcE75nMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720745843; c=relaxed/simple;
	bh=a6oR5LVNSGDWmq3mcW7BW+1j9wlYPzRFFIaoi4Xqs7M=;
	h=To:Subject:From:Message-Id:Date; b=YnCZPBaPTmCldtp3ityl+8pqMeMJnAQHnXWIj7DSBu8deC/CDj1+SIdR05TWrp4pw2w11CW70BqMMLQyqi3jKcy6C9Cr2xp/W/eBhbCNSQsgqu86+owzNu7LaowF/ArqkB9HrZzYEoS+c/9ifxFflvCNV6tiozlN3dE1dBGRamI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9lPWYdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9lPWYdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F00C4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720745842;
	bh=a6oR5LVNSGDWmq3mcW7BW+1j9wlYPzRFFIaoi4Xqs7M=;
	h=To:Subject:From:Date:From;
	b=t9lPWYdpn9N0Ja+VNr7sparT6SY1p1qJPkuDEP1E9NjlcnwJmChcv+nk1FRgR2a5j
	 qjPNrekl9wNTAIfzwTh404DiBSScswggSq/dtx2H94cm1G2qvWZD79fGvzJBGaKw0o
	 1dMZnOta0Dc3gws3RMDTGLf6Pgu2jnn5yBkrFjShW+mlp4MPRwti3DfOXZ/ZUsS+gZ
	 GBWz477z+S7+ECWQirRs0aOqF9ZmKm5YSGZ5WCsYqjDbPw4wLZrjizu5WrtbCWWcnY
	 sOq2qCtPSVsPQEJ9TY3h+a4un1gyAEmF2TRp3n3WfztZTxgzLMd+pZjtb41xoZoDvk
	 K5SNaeVML4aNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F2FC3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 00:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074584281.7555.17868079025218765541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a865e9bf01ac21e466a1a0a471555a7a2b0003435b39e68569c9b78a6c16b82
Date: Fri, 12 Jul 2024 00:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720745842
