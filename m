Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAF8140E38
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732741554; cv=none; b=n2ZPZ/4/7pAIidSiERB4NTg+EeOtUxay4DG4rHr6olAZgizmGlJeejYkA5oOvzubgmows98rnEU7fs0ZO+DCsd8se35oJT6876O2hruMIqSeifg/Dmg0cvoxA7REsKZ1gyAD5pojzJs4k+PhUgoE1eURau7Kgqk7+Cr7UAqc5cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732741554; c=relaxed/simple;
	bh=cD6CGON0Q1I9hZg4pxGuDbVxoVmwKYk0YkcTt4tiRlM=;
	h=To:Subject:From:Message-Id:Date; b=AnQWL6MXaBXzBb6zfXX5biEz9JPVxzLlFTMm5YExyLpqM0LnA35HrOYH81P2o1zLo5ylm5fmaD/tk7H7Fe1jaEzSEYG0aKQAIbBAE8K/76D5LdjahH9sAxlkFI0kMHKs4BxeZIb0i4tBAbYAUEA9mHe0PEagQ6ea2/nfsmi2N/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1Jqg5wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1Jqg5wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2394C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732741553;
	bh=cD6CGON0Q1I9hZg4pxGuDbVxoVmwKYk0YkcTt4tiRlM=;
	h=To:Subject:From:Date:From;
	b=u1Jqg5wp2N1ahG59rHruX+Rbg0AuoJSPI/hMeWDJZwxfMnyMa4rz/GRsMLKhudxhZ
	 IEdfxNEH0BL8Gb2CF/q++GrOgFshng15CL5N0T9JUpc96R+1vv9cUvrGr58pRxHc+F
	 bwj+OqcoQPv3wtw1E75VcHzhIF9mg/Ux/yc+D4zpYEmO0tM5MXKKL1M5CePNYPQeQm
	 hIG+A57R0yNkqOVwwckzA2hk1dILVLGvoDJuUOgpouzRdCGdGkVIMEk8rcfz6tSZn0
	 hZ+3k9ked/VkGbWrSR0yasnN8qjnDrCJVgAoL1VczlCoRI+Pj4jLdoeUDebb9ufvhT
	 tPqh460UyPN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B293D6D23D
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173274155362.12194.9577271162432643508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18b8a756fbd4f7115f732e84b734ca371e80febde71faa0b3da0e94fbb343d8
Date: Wed, 27 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732741553
