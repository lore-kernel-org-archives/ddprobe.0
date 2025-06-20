Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A7F30E826
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750394993; cv=none; b=sHRRVhUt8NW6u8YtWU+OrsPV4/Cn8GCmqtv84HrfMTI/fZHTgG6uqEerx1Ma3dzXNKHdj5CuMy166Xltl2s5qX9pfYvruAGRo3/vobm+kRqPOqr12XLIvLemSuJKhPumpDN+CaBAO4dtzFF8pBbH6vp6lgg5pQaWe8645rOyhzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750394993; c=relaxed/simple;
	bh=cAtlm6nC++Y7ADZnpoh9zt946RYpxSPk1WD4wgfVZgg=;
	h=To:Subject:From:Message-Id:Date; b=LDP/BlGLsezoYDCAlTPTVcfM1IKXmAe9asC+22maqne3nUdIjtLJnKeaJtN/r39j7AnyrFQuzfm7VuCV7vWgKS2w/P+ANcCf49EdEZT3XBymillbF4bPOapRHLNbRVq+rJchEtV4gPHeWCLK7bvwSnoSxDZ1SYiQNsV8xS+PudU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jueI4ur6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jueI4ur6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC9C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750394993;
	bh=cAtlm6nC++Y7ADZnpoh9zt946RYpxSPk1WD4wgfVZgg=;
	h=To:Subject:From:Date:From;
	b=jueI4ur68wWHKUYAfy5PWVamqcg07MwojDA9GiaNdcx2ziWL9gZR83jq2HbHWu1+t
	 JjSN0qiKRa+eLmtkJfe7C10k2M4nLOxOBGlV90X1c/qm+ZCLBcBvCUGkCmkQDVKsqr
	 +iAHusaYz8jsxh5Gpcn+Pn86KTUYRDWB+1rLxBqN0AoyMsVE8WBls/LSM+fo1mIIFG
	 7bl9j9drm2dy77DLqkBHd9HJbxgNxSSQOOiUpZD41dJDzhABSF5fVCFIXtrgbe6XsF
	 1gkAyEhmP1Zz4X1drIY3CKYWLu5NIEJZIssBfk/DDf/lTt9OHSR1tDiUzfSdyV0NBT
	 dJlMy3eZhhxXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F58C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175039499357.22790.1894358742656123370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26d1f35327520160c5fa57ea7e56216614f16d72855d6f4d456aa1e3445fa8d
Date: Fri, 20 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750394993
