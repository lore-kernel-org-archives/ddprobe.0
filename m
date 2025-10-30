Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7BD1F63FF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761784794; cv=none; b=jB0Dlw1oprbiEso1c+DkMNQsjFnhNj7VX5TOc/HwqltzV/5/yxrOa0Tf6Jrqag3sO9iafm7di5DoOJwGK6VQlwBcolsfyb7KpUQtmKyZXXkbjQhGLNhCHE619XQRmJB8cMJ9Y24M2uiRbkeDfV0vQNXsv+agEp+yrLjuFcQwXU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761784794; c=relaxed/simple;
	bh=8cLZHkZDy4V0q0dxnDjaG+mrmlsQOD84GXlVKhpg5hg=;
	h=To:Subject:From:Message-Id:Date; b=gX9focyF8op2RututcfSvFbpV2PspT6cDCwDIeCRYVklEUqRPWHgwBUWvOYl3GVMp2QcQ1116pVOQug30nKX9Didpoz3Teek6WO5eLaP/HIdTdS3l2SVz8i6g44ae4nloFnEPIkAEbn9KCed9QuTE/u7SBSdjkzZM/cTlUIkNIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViT+ah9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViT+ah9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42D7C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761784793;
	bh=8cLZHkZDy4V0q0dxnDjaG+mrmlsQOD84GXlVKhpg5hg=;
	h=To:Subject:From:Date:From;
	b=ViT+ah9DPGF1Cyy4pGRZuTgBd7uoxcwcHs0yn+x3fKSEczLbg5zMdbGUZF+81Dnwz
	 Ai85m956Y0uKmX1pvHzHNGsWNeWor0ypZVEH3qGYun9oQ1/liNSrvnfGoZMkKEw6S1
	 pUbVCrgNJSb8tW/DLmPSCUDXcWhAKq64qV3rsUaj9LoetdENUa+RXb7s7tv2Yt6CQN
	 QKXEec2k7Zxdla0RKC69s0Lh4hL60wTM2/2PiCGUJh5ckarsfLHNRLbHWxhkHLVQ57
	 ECc/DLNR2xM98fyTw6xh3CWf24z1cyypb75XDgLb6uWCMkindM4G9q+UNxI/BzjRIb
	 yrtncON5qeqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95043CCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178479360.22763.2394697024624094042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5545d94104032ac0b2b186c9fe8cc42736ab9ddf8e52f7b6e6498a7a900066
Date: Thu, 30 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761784793
