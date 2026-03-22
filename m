Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6176FBF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774217694; cv=none; b=naq5RvLYl1tLQYd9ETuy//AWIHJRDUJ1877VpMcOF7Jli+lJ54/aks9Gx2OLoqb2Sc/hG28TnB/HAPDa9t1NEvIkmzOwWs0DdrJTF1bG5WOZaiO7A0S4JKEpJ7sTaQRpZAW73XSUaQbO4vo2oTr7pQRxwHNeeT7UA4t+Kwe0URE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774217694; c=relaxed/simple;
	bh=lM2NzPrDycdWzK2D623dImriT3VQCdaHu2CB1241UtY=;
	h=To:Subject:From:Message-Id:Date; b=qSqqHg0kJ+eZ5cIjaSptQ/K41k8KXdMI2nfOai1W7fb13z38B0rhvqD5R1yqrAFSSw5S2YgvedAxq0nlayr3PMQqNTasE8HvxFwBBxMDR7Exn7gm+pODTBeUconLDe3S4bjGE4pZ7O2BafV11rTl8HxPkjizS/PL3Dh9pXJIgpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1MN4bbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1MN4bbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A802AC19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774217693;
	bh=lM2NzPrDycdWzK2D623dImriT3VQCdaHu2CB1241UtY=;
	h=To:Subject:From:Date:From;
	b=j1MN4bbtK04iSfrnjYoD0UgJpEy9bCLloHG6kl7QReeqB3shP7ksrcwhp1vpVPYJJ
	 vvBzjvUrW8r0s2SzuM3APTkLL9IoQ3LnpjJseji0wQFVfiyMuKjMuq3cLQj0nqDYho
	 4sCk6j01By0U54svlY+likkytgF2PtOkx8mmqS6m3j12FwWopCdEUYDsKKUbV2uGOE
	 i/upfBkOQIbLgqNpccyuJPHEYs5AhwSLEHDhczf6KJBtkOcIURmsPg7sisR/CFBuzK
	 /62hpC42xosNGS/XiUynWINZQt8B7LZMI9Pb9uBppybbGbwCz4jC9hJgvlNmjWaHw4
	 rf23mNQ8qOJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A21D58CAA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421769358.24253.565599880642850359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df565ede104d1a79b9a8f4aa56330fef6b01a86eed3a6fe2d5bac5ea6b0c661
Date: Sun, 22 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774217693
