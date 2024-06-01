Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF601D555
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717281323; cv=none; b=TtN5WgAul+hmos9JlTfxWj5trocG9vGXd+ziO+D2cKIVF80kQR1kZsxMDhUBc7ONE8HuIwQBZcbNi1t3oU2PmYWQw3LiQTEj3ei1lbKCkkR6UlTvL8apIFQAlVyGfA04ml4eRaXRBhrB7RZL3aGvSGvgrzOeiTKauDZHU1xIoSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717281323; c=relaxed/simple;
	bh=gaDW15Tvmg5XiILVgUk9igWLg1sIDB+nsxb0WcMYTAA=;
	h=To:Subject:From:Message-Id:Date; b=sSmNpPBctRkEob1q/jjaAlwgTRLbJ67PdT2P7OFInneAhQO+7V28bB9wjf2pBxDMgKbBhjf7j84MzzxNFvrZveF2zRh7vnbxIpr5RPo82qV7vxNIvDTHAiYTGX5IxeMmCW9xzgaMOJUt8j4BfDyMo+nShTyjZBO0XWdpmpY1R9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR0gKs9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR0gKs9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DB8C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717281322;
	bh=gaDW15Tvmg5XiILVgUk9igWLg1sIDB+nsxb0WcMYTAA=;
	h=To:Subject:From:Date:From;
	b=SR0gKs9rKmyvH5qB3vtkf+yuTSY+4SCAccvkVUWqKPlLfa4znDOalSdFumEPnGP1I
	 Y2LqmCUS8LhSpvmpxJhjbW2YRePWdluKvaqnaYEvUp18wyCTFcPdFh5Ikl2qjJVDtU
	 +B8xVm76UWnNiUA5/LxavpJQYdBGdcPH+d5bNmvLr+QniOyKm5lrLVGZ5byXcIw7Ss
	 /6cfmUMxYdsEa9yXNaTpc9kGLPZN9PcnTKXlQZLNdKat6tc+/mYKGHDHXk766WIhPe
	 VB2Mwtuye8596qTSLxSlClX94JjD9fzM2jPPBVLhzOc2L4R24A13NPUyxI/7K7Z0G6
	 qxjOjaklpcccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F9CC25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 22:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728132278.5779.16083747098155744586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 905b0d0a59ab60631ce9f2b6e148c2693220af3f77ca83ee6e07dfdf748012ad
Date: Sat, 01 Jun 2024 22:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717281322
