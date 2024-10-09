Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C28317B4E5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728458154; cv=none; b=tuueoaTv36qITCCM29QeQMUgZnkFrFtMpXQIGt26H1tmYaDwqa6DCWPoickQ2JSKougaZeIMpV3HvuTtX+WB7dF6TSHNAdWDKLtXdSGpQ080fJuwuOqSddKbked2V7g+A46yXWoc3+Bce2rpFKI5BNCz7eP/LcYk/28MWpGWHbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728458154; c=relaxed/simple;
	bh=WPM2gU5hI/7pXkqn50enaRveN8aR8qgr2s9jy0PGjNo=;
	h=To:Subject:From:Message-Id:Date; b=mMlZE9TKrbj71EzKUDe3L/TrzcdRZP6cE9gX+vv1fzX0l6A3pL28Nid1NFUTZNT+nPhv2uqydcirZRgijg7iUAfFGdRojD2LmBJ3GY2lP/fATobMKVvn7UgS7Lc3Lbfs5rrCzI9mnKe23VsPyyMuK540O7kej8wAkCMX3lTq9MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhP5cwlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhP5cwlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2163C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728458153;
	bh=WPM2gU5hI/7pXkqn50enaRveN8aR8qgr2s9jy0PGjNo=;
	h=To:Subject:From:Date:From;
	b=rhP5cwlMWe+CP4FHl2yt4NdlmowFUClnOeLn5FVmfcDxYDfxrBR2mrynpXCyQSatZ
	 Q8GXnJALxp40unwICAU7Si6S4ZIh6Tm/41Iw5Egpu9f4e50wChWWRn9/1Ll/F5/hCG
	 IWZvqwymYf0lnX1zowSMQs6V5UdukNeGMm09ZMyiAwRY6E2gG1uVL7an3nhehAflGn
	 VVi2YR8NZwOirIU5SyYye6QGz0+oRX3SfIYsSB/vaNuL9rPuCaizz0cbWoGlhudlS6
	 akGBBfKpWK1JlgGPDyOryKDFpz21hQnfTHSIlCnQ4dvXWaTOwZ7vEnww5Yg3kYrT5e
	 Mnmoq265nAR0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B540CED618
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845815362.10043.5179512838145695434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1315d3696e8faf71de051bcb9a1e30305690fea1a51f9045a286f9a3acc8b2
Date: Wed, 09 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728458153
