Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5543D1CD4
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778148454; cv=none; b=qSdLSjpWI/t/s1eYhhJQ6GUXmaa8fa6g3Ztw6ZLCRt1VAfnpzwvcJ+/GjkvZfO75YIi2yuHWjUfqfhqn28oozLw9of8xH1gf0w6mWeKxf8WIqGo2S6yMs5Osnuk6znoofeHGNUilDHbdohJ2QRTZpZJdof2hFrlEPKzJD70tTVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778148454; c=relaxed/simple;
	bh=BoRz/Ny31HYsf+jAENQspd7gb91v6DOUuq1OdTCR5/U=;
	h=To:Subject:From:Message-Id:Date; b=apGzGicABceHzyAt0gDR2VeeoMAMNqzBLGqC83E1BMm77+XxMzBSXSYm83fvrVkQDSkIjyq8cZrRupluWEpknb1iGggDJ17wdHEIv71ZejC0fCXETu/rSsVPDPK/c8RLJ9/P57frGufYN8c9Y+ZqB8AZ7oPv6sK5hjA4+Xkv7YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpWeoebe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpWeoebe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB1AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778148453;
	bh=BoRz/Ny31HYsf+jAENQspd7gb91v6DOUuq1OdTCR5/U=;
	h=To:Subject:From:Date:From;
	b=LpWeoebeY1W6p3NDafIioEBTLTpnwJOlPgh79Ozt0e+C25RCnfEXOnm4fspzxI1d8
	 //OrhM4u9OoUVCn/p/mG/Q/ZR1wfbgcjwZoiNv/dLY9H60hBJqF59ICunAOVXxBFdk
	 HOD7zB7yGGST6pJV1OKep2Io8LHFdIxvZh3Dx38+/TIkWZkPqmE7V7bvCpKwS+bJnl
	 9SvsapHOaMkYS4HBkOWJwSNFinDBzz7qMIWTmmUZA3GsfZM+NEiQoPiGA+duKXqPzg
	 ub2ZTY9g7XXljazQ63djyRVjEUvzTJhFB0ix8/+yDoLSGE3R7QDtVxs5232wa8cHO+
	 2WLNZhuqs1Otw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE636CD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814845370.3950.10133196184477584740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6e819cee0784fed8b2def05dff889088ab1752297c611acea2ef00ce83a892
Date: Thu, 07 May 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778148453
