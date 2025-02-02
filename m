Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB025234
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738483554; cv=none; b=lx9+2pgRgyeHDhmF/TyJ8yoFTK1xEGTQFdw4R/qPQFBAp0Wm3y28q53ozD0FfQUncA3eiYoH9WCM5frTv5UhNYiVFxTbsUeT4ojNnC0i1jhsLMFnEpYZ85cPGubk2rrLrvdmOBOEP/AyPFRhu9D7Wk+9CrIauIHnIH/MgB4sI1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738483554; c=relaxed/simple;
	bh=a5E4lWUZCVmrFIB/8um4Juz0ZgFKJ+RMz1lwIbtDyrc=;
	h=To:Subject:From:Message-Id:Date; b=tLDpwNccctI2FUKVgMVdjLCrcu4X5yfP8pyzmu0/ARscoVHa7/x6XS/eqOKySGJrjgY3E8FHOL0p2xeuWneQHSm5b+eIYRmmyIotJuD1z7Hk9xhj4408pg/5DLZzWRVE3ZLBTnsKPrUyHMCJA1W67EirD3jguObN47UWmp87g8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mszXiCkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mszXiCkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27A5C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738483553;
	bh=a5E4lWUZCVmrFIB/8um4Juz0ZgFKJ+RMz1lwIbtDyrc=;
	h=To:Subject:From:Date:From;
	b=mszXiCkW3CLJEXVz6HSEIdSZQBAqeAVQ8rYjokmx8ApPeUAAlJcnQ+gLZC5CW4skv
	 ZDYjsCkHD5guCdzBh5TJt31oLgajdiz+A/xUWK2jaeDBN53YcH2H0Ra0zVyTWlTqQi
	 UjQQIv44xyBxf+gkB8j4mNoNDMddZE/pUU7Ljra2E/mkWokhnxNAsbq+ICBAbsZGGJ
	 7l9lItCU3dvhgmW5XNdAo2uxoMhh0kNGjjYvIZ3a8IxgQmATuhpXHXGcEytNc/boin
	 hK+YLnES2mLWziFFsi4P2312uv3vZ9P9/2mRsYHONg++TfUz6Bwz8PWy2uixHgYpL3
	 4vgXvwIQG+K/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E15FC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848355361.24670.12311796463444573830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28909f24907ea6130118ba1f297e848778a51804c23dfed02b4e79b37804ea3f
Date: Sun, 02 Feb 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738483553
