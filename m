Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3080C1F2BBB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754684394; cv=none; b=lkH07SKFd+bwYRWYcYGIJq1EZ0vs9M5DYrNFuSFHFpvHEY7nerMAHxLRmlg85dMALg3PdZ/53J+1ONpt35hiut/pbei8GrsvTBUPVydVpmtwaO0OtrlLhGN4osh3c1jq/f5PBVPoPfHWC6oFsUG9AgxH+RoSwLWEM2dSDnRspl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754684394; c=relaxed/simple;
	bh=4NikbJvl5Z6Dxhb1zk5c58cF7vTccnLWPugCd3f229E=;
	h=To:Subject:From:Message-Id:Date; b=lRmYbVp82WB7M9hyzQC0e4geLHov3HU6if4nyagf6GwScDM25UFAd692srqkb/2hQgbamZzBLosJM9xyIXMI5m6Yw7h19F4/y/MiqnDAhd7wP1iQ4lSZwfedq81zDyY82Z0Jk9PbKUMPf6Ude4FHeQ6llK8QP3pBxOnDb+derB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fn5EjqOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fn5EjqOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA93C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754684393;
	bh=4NikbJvl5Z6Dxhb1zk5c58cF7vTccnLWPugCd3f229E=;
	h=To:Subject:From:Date:From;
	b=Fn5EjqOYtWUrWDiOxz3emZSoFUOKiO3YT0EhoiigrsCXC506WmAkJbbZVxAwcrQiN
	 L4VhLPLeYEDgmvOgIoqzGyzy1K/4mtm/Sr2bKtUwl9GCW9asAVo6H4pq2sh/nBOgNs
	 YP9MwX0cCnU42ANkv/u0fNCJW3OFmZAJlYBC2ZtguX69YdCDfVFt5qLVpn19LQuRrS
	 szv9zxQeFQBz+zmmrJxwnfkJ13+ePX4sdrxEtQqSfM+hq23ZesYICuZwgJU3u/aJ+9
	 74dls6j14zrlpPzDq89uAsFVs6l/9SbWC3H9xAqjoPMkBgBgxW5w3pvCJ3vp3ndGGw
	 uarWE0VzI2Xgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906ABC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468439358.8301.7695955435117973501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b90aba759e389756258ba0128ab682827bc83d2aa343257fa065745eb1b880
Date: Fri, 08 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754684393
