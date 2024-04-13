Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4630B33C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712994563; cv=none; b=BzXcfOfAeTYmO6icFJ8u5H0lAYAHL1Zk2zB/r3o7HKLbR+u7Hw6uXwPxi7cGm1+MOI5Q6TJ49eVGuqB46GzRUTJCNX6oevPNEepNFPkevuzT3pOxbD0oUbgZiPWBCmZzyf2RSun50z1/qD2oUyzgLN+l71dDfm/lZBlu4xiukbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712994563; c=relaxed/simple;
	bh=pOR8/yp1RJ7WzMGfvhkfZ2uBRJpDctGLxpVvh2f5F1c=;
	h=To:Subject:From:Message-Id:Date; b=fUdJmjCEpBv2/FnFuFlMaqIkW0HyHlJsQ2R0m9wVSnuWj0V5K3wuXmAuqEGymphGRUzdvVv66kJ8pcUm45H37Zvn9SYF7nBXWYtl4GbW175WbMqjQjVBu+ChQ4/jKn7PLnHUTAPHCE007t9YGIfKF9JSxCT4abUEXouZGM9QrDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLtDMUgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLtDMUgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE86AC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712994562;
	bh=pOR8/yp1RJ7WzMGfvhkfZ2uBRJpDctGLxpVvh2f5F1c=;
	h=To:Subject:From:Date:From;
	b=mLtDMUgo30cB8BV4dUIK/0leatYPp7J9NYb4QVlvDDxjZGV89j+gADy7au3Q150XW
	 r0+eFgBJyRX1nL4Bhz/cUAV9WHG6LeAMMPOaFoC2hSe/FAfYQIu/LFj19fgqhHUF01
	 KR86ZQfACZ1NlnU7PDRFeEDOtnBMbrQH/4HNM88sbL7KOppF1zD00YycPJrvSc/WKO
	 gawWh5w3Rb/Ttnx2aTMYEhZKhSjeKe470nDecmbVFE2uOStR4HF/puw7f4GeuYBDp0
	 39V/i17YEwX70DOjpawyBmBJw6nMA8iQnyFRdY4PSh3aBvq8BayXoz8svAWjXE22PR
	 Dz4ZowktvpV2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD543C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 07:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171299456275.24048.16467737547210462394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ed68d3b2146fd345fe72e4ada6c365f8a95360292a5fbfbd3324085ee34c8f
Date: Sat, 13 Apr 2024 07:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712994562
