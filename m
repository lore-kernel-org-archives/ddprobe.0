Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333544879B
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723442154; cv=none; b=tLP0D/bGZM8v+wlWBYCUkaWFzc6EOAJz/eiIGd8m+Y6uuMtc2oy2IWCNrEynsknzvQ8wYKEBbt/qkwB/DyZjBN5GOIdklh6Z7psaDIQotUkvZ1tnQBekW4cfOegmA6/RcxSCZBtCXDb8+cgprCBUIRfnZ+VPOhckBabl3R3LdCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723442154; c=relaxed/simple;
	bh=uiFmVNfkvZAiWRPSTiOgoXVr+J3e9mE1x4LiZmK2grs=;
	h=To:Subject:From:Message-Id:Date; b=DU1V3hbEyBTvxqykyFzEWbZmtNw7x919+fZ0PSvps1XyjINlaKsBcCLTYPWBKd9OKNuI/pUfQg2mEvUrvMlYbe1hycypYC9aeKtreyFVi9s6vx66uzGvxm9obc4I9FAFCLyzTtQq25YgBfE8ORA7ijWn0PeoUHujhbMawBeE2s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8Yvk3Te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8Yvk3Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70C4C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723442153;
	bh=uiFmVNfkvZAiWRPSTiOgoXVr+J3e9mE1x4LiZmK2grs=;
	h=To:Subject:From:Date:From;
	b=r8Yvk3Te9Zn7O8dnatn8X3BjziGErvB70QEN5zUvSEuiYj4ROsMOe9KLHs0ElBD3k
	 doBSnnk9PwpAzS+oSpcYoN2GQCb0+jPfkTfeifzcwY74mld22J8L1ET4UbQIHUPAlw
	 O2K00lKqO4+Ygv8TmAG3CKSCJ8htWt0lp3DEGq5konOAMswy7yYJBcxP/ou3OyipsR
	 WRBUjS3ysoVbg9K1qMYNJI43zm1aM+QYKIoWyu3IiRBiAMRciHnKFBFSneb6m+gjqd
	 CquHm9UssEJk5ZU13F29B74HSoFmfTw+wL0xzbXUgYP25EJPJuussdzuQGCbu/4QPw
	 5UvkEycW4wEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958A7C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172344215360.10131.1366059608230129502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f479a660af069df9cc92d21d5f58e26c391110d503f6985ac8ca7a78449bd7
Date: Mon, 12 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723442153
