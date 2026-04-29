Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D680F329E49
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777459653; cv=none; b=ChwAXPQXOPe6tRAoouo/UhaxWkgWB++4MSX9kz8BbGLN1iJbkfrURnoak/XeSiEJC+eJtjIGONszHhFYbEic4+QiyItP2efvfH6ad2CwYc2mD3J5RRWlNFwkV04e30dH65hToWPjJY8C3Zpdx2RpSgLbfwv9oGOH/DdnehhtlcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777459653; c=relaxed/simple;
	bh=Z0N/JMC1cBqvlmFF68jgnXUhb0zRwIERjyqBS/Bb30s=;
	h=To:Subject:From:Message-Id:Date; b=c0qwtSeepODS7SYvUq1QwsjrhUvQHdi7Vxf+7yA5leLGzArVsynQZ9skRl8vnCaiBwpYw4XRSW8rdh+CYjJzWhoNtJKS2mXMOjwtbQDxChCLSmUFUKjJA3YFTyIlgAEyq6CkXHrEYCulCElPoW1s4oy+JJ2wemRMIv8WXFHiYCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsR1p4K6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsR1p4K6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC00FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777459653;
	bh=Z0N/JMC1cBqvlmFF68jgnXUhb0zRwIERjyqBS/Bb30s=;
	h=To:Subject:From:Date:From;
	b=RsR1p4K6a2Mj16Gl91iGMPRtC2Ps3Pwa34Ser9hlbWXxh4IqhJHhIoO+vwL2iKEtM
	 MtOvZJmTn1wKpAwchUqYI8OKjiU4dtwrjPQREhUGf9g6JnTnLip91iQjyGp+p0xH4K
	 g/MhmoReqYXAiYj1e5reknIRTuHJkcLonXXlLL40zaLiHoUNdn+IyFuCby4S/3Y3C6
	 wS4G2uYh8qcZhXuJziaZHT/XHHl1RjEd86KQrOAkOHhfk3b1qefe86KKpdP0s12liZ
	 1yehfewfy9V22N3nhWfZUp392+lAOzurReOiPtJfWKdzXYxg3Cr2Lyq9ylvF49q1w2
	 n7f7zbBrsQgFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BABFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745965368.19914.3681397047986054002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfaca1c90381cb6a186777570f2793926eccc72c30337e6ad1faba3da964a77
Date: Wed, 29 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777459653
