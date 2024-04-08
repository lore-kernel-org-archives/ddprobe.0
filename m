Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC09D1851
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712546897; cv=none; b=l99dFpDkg8E7rYw+LzKiuynq6STN+Omm3AVsK0gwn9reMB3HbT0r/h5whLs+wQYqDbcWfDu0DjTs4w2uzi3eW/w0tPCrYAGP8EUxTjdTdPRUjbwQjLv2yM7oKiIquIEMy41JNM/cIDojWCYG7mONwBXrn8YhUOPKqFrCB3/VGis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712546897; c=relaxed/simple;
	bh=IUB3XHp1DB98Ekt2Ld/8tgEVcBsu1FiXY2AGbpZY6Pg=;
	h=To:Subject:From:Message-Id:Date; b=tTfTiKL0SVBpsD/pvPeB5Yz0ZfNNtvccFFxaDOlYe7zgO1hblCYyni3r5QIHH9oozuQ/Tb2kjGeR0Cf/swKk6yGb6a6EZMpB73O3Y/nSO+L+5gqNVBjib+vjJsNyzxjdAxEPQKHo03HxFOTyjzU16jHQFOApkNuJLS86jcMma8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XH+tqMjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XH+tqMjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A41C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712546896;
	bh=IUB3XHp1DB98Ekt2Ld/8tgEVcBsu1FiXY2AGbpZY6Pg=;
	h=To:Subject:From:Date:From;
	b=XH+tqMjBulF60+Oprmlq66Q84NPjY2WHwIs3vmZyXFOfjqok2TKXtBBBVnUzmWhSb
	 7IjbE4XcQfEfp6ZARu66A7M2k9IrDlSZIQ/xzzKhUipYQ0J+KtVNfSnzRxUzhG182c
	 GMEAj98ied8ZbdN3zo06+5al7pZg2I+JxgSWqcFlz160JSdsP7FIpFUTobhg24hazJ
	 ba7yvDLYtN+dOayiy3XXwTrBv0bTN7j9jABWrvpwX0gJ/fMS+wOMQ7eQJr++Kx+LOO
	 fUH3FYcfpqbH8ruS4zCOi6goL0HAhnQeINyAr9XM3VKOp9FSvxKGhKp+bHLhYDtgZ2
	 sB4stpr0Qlyug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E4ECD11C2
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171254689642.4296.9745082790122048597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bd34c1bb5e051f7d756b3c166221902d98d859fe225a81e846e6e3f652c7b8b
Date: Mon, 08 Apr 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712546896
