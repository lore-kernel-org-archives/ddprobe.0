Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D30E1BC073
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743422994; cv=none; b=RBEYERq0Isr2UzCNxXuz2NW1r4gAddnhEKyHk4s6hDT6ARE+MoQRiyZbBqU+bZhF1dtHtDWjGTA71nhLkDha7No3BzLRthk9ES7hy3CGlkgCNhklx8u9B+7J/tUDW7fb7pCFJDEcNFSGmeWufEwgr6neokFl2pmt5pqLP+U+9S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743422994; c=relaxed/simple;
	bh=J+Hl0rifBDG1YimIIKikvmqV1BpHedTrT9lfL21VCnA=;
	h=To:Subject:From:Message-Id:Date; b=a8CsxZvvMGIhYSz43YUpTBO45bAHQDdXD1Mx9fvwogoHATiSjcYgaTQQAakw4ykNxHudmwhsmlfkwuGXBwktek4lp3ic1ZnE+H2yv8lf9zHgcU1bRO9n/3xlP7jT+sOh2Mx/sm2In6m/DqyDYIR/syYakOQGucORSD3MA42SG8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSySxh2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSySxh2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF44EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743422993;
	bh=J+Hl0rifBDG1YimIIKikvmqV1BpHedTrT9lfL21VCnA=;
	h=To:Subject:From:Date:From;
	b=MSySxh2mfzznaK5a3LIbJp7Z4+FAuLAmKtByuu55TE2ghw0GMy4bmBwfYkzbTG/hf
	 gJ/WI1VyeeAxr6PTylHsGBQC9CEKo/A9ndgJQ6Ye3BFZX/FZOPvtU5h8B3H+EFrZH4
	 VFwNaF3wo6CTmKHYVRTQvWDIxfrpC8c6R6K/GQ8jZ0NohArv16e7YxXHtqyFldVHD0
	 XDyvMa0kr82VLsIDpeHfJ4v5RY5Ck+FHdmHn4R/6G6qZ7g9DZFGG2A3ts11uqxHZHx
	 mcDEaeXGcduF92xKaGWko07jEMDxibEPK62+NtyHlYHut6Eemge9i05HxX+AwXNvR1
	 /1sRysvDd/S+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9768FC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342299361.27434.13850276320808439059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a75cd2151bb6cc3232af45450564dbaca5668e6fe6060ee310e3c80ad543e483
Date: Mon, 31 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743422993
