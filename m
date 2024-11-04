Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D28D6FD5
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730706354; cv=none; b=MuwiHZwpt4GjMpJhtzB4vRdQS9zt0pCOa9yNzIlMTLJ27UUju3cl20o6M8pdwnzHHtyJJOGm/pQ9M/Nb9IgVf43xYzFA93Br878YRsArw2eMOBw2khHHM/iazA3Exg1bcdeg+7UhvDa7jK1L8kuN+aW5UrlLpd0eRUAdzw6us1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730706354; c=relaxed/simple;
	bh=dLrHGKQOLUbyouhMHDTTwROAMGY9q303Tdw6u32pMgI=;
	h=To:Subject:From:Message-Id:Date; b=iWRS7Cl1x1McuDMYU85kEw6hwspMT4N8HYNvxgV9fSZ0jaMwqh/DcUFlqnLahtuDzHMRDJWn77wyggUVQ+6HIg1xtcHkUb7CkmjDzuwk4vOwRJnzYPJEhIaUYxHHxOQXCtCRboXa+2qd6TX1gcHkG5Jh2Il/3E99D/F2Smmksds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQyjvGz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQyjvGz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C57C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730706353;
	bh=dLrHGKQOLUbyouhMHDTTwROAMGY9q303Tdw6u32pMgI=;
	h=To:Subject:From:Date:From;
	b=kQyjvGz2M+FWV8vYytUKNV1YlWcRZ2G4YTo3A47xlg2HXCi7s0PLyMTowHZWuV7Lw
	 Q1nBxazld6PpvLAKUuCjhJd3COSNRhlHQ3XUxOc/Xv0Nj1q8LF9vfY9VSH5lU1XBWx
	 S+sBs1WxtXE4R9tN6WDc9GW4srAxYIGsWF8UvN+ifdUsG3BhYL1dAqSqR3v4jUSi9Q
	 7rm/MOnXAmIXtT4Dj+wgyls2ckCrCyHZqATvf29IudRxE7lz6Lcn3ZJYM35woGSUoP
	 pVqI/wboD6krXTdlAFa/TRsMHVhhrLS1jbpfUtGqhJ/wPK+Tg3LGh0ERQElJo9XuG8
	 DrBB+bvC9IwAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93654D111B0
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173070635359.19132.3361899298864120738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cc6b85e1599dc66939f3abcfa950f0131a79d6db29a8e088ba1651dcc185b8
Date: Mon, 04 Nov 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730706353
