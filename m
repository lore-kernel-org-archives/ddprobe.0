Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBD513A3ED
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768525434; cv=none; b=HltiUsu+IFgTpgo3KTHuI93qLS+EG9Y/Uf7T0lqViQlybDAQqzeHNVIszQlaKHKyDP+jYFpPsbFcGLq84TnZcsbxpEoc78p7vUQo/nHkRyIKrwk6llbEoFzfqpDX4E+gZMCNdTfNjVMISROxMNBtF8cdzmGUgibQkMo0RXdEP2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768525434; c=relaxed/simple;
	bh=NbjYhkM9hoDQysKkRSYcL5WhK/xWvg2wyGv1eFOK0bw=;
	h=To:Subject:From:Message-Id:Date; b=fwZ1/wmiFhaS4rWXC8b439LsFfKkuf1SZtXaEpqk7c5eRIfuLdtqSbaaamfwsYlYIkbjrqugqFUXE+Lp8isOAMoj5FwsV2VpMcm+F3lAdqLfwqKLA18t6dnpbTMN+1MMmmYct6xrZN1XPZ2oC6HbmDGBy+dwJCs1sbjHNA46XQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKnIvWA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKnIvWA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCB7C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768525433;
	bh=NbjYhkM9hoDQysKkRSYcL5WhK/xWvg2wyGv1eFOK0bw=;
	h=To:Subject:From:Date:From;
	b=hKnIvWA9oG8RDqiPj+hSjrsTDm2YXZS3ExOLS2t2dUHWmL5eefrkAO+IBeAV9uKtm
	 VqEZYMhlFISmiqMbBfHmodQN1h3r89KweDD26ZMZqTRJ9tOc5EF+F6OooGyQfHDQ9n
	 ec7TaiKgRI86/KM12Xj4EmPyakKcqtK+GWYvTpXFXOap9tMGocSUjgeSG2cFuSNetR
	 p+hGxRJjoFrOI/6LW4qk2AjMUjLwEgHvBul364fumuJZmGEJAOBc0NDc7F2Bx16qB6
	 lXGqBZYRFhwnI4kOh0Rb386Snw5sxcam+6OYJCoVO2rtv8VKJFwlWgI/KjWUrCyjGW
	 1FG3AcTWxs7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60BD47CA4
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852543357.5101.12883413340634817837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f508ed3b078f65dfa820fb888ea9e03416ad61f4af33eae741a5bd9a0c0ae132
Date: Fri, 16 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768525433
