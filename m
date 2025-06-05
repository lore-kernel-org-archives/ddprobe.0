Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BF91F8AC8
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749106794; cv=none; b=kGflcCohASlcGEPth6NPDAsmY0+bRVjTJiJjX/6hlkOYyO+hoh3KJuzcvkj69eFIT6RoHsqScz6Uf0QlSrPJ5uzhUpFGfxFUlW/ahemwnKObzKWDWbXXhVEWsm43q3vkK//h6/IwH+xj20MPkDDUKu821zGltAPbYABjKNDK7JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749106794; c=relaxed/simple;
	bh=4F4DrFx8A36TFp/rdrTr+sGwYMmBTyFFbBCzvkfG9vw=;
	h=To:Subject:From:Message-Id:Date; b=KlzIUImIKYcYVREmMF8DogGSwFH88eRKOLOJkKAuJpgelERoXJDwHrPtLvKTlP+ZgE8qsVqwrTlpmq2DcG0zU1Gv9hdjuBj68iBTK1Z/A65rPG0cdMiczoqnq8ZiNAo2RxQ2t2c3cL16u+/P8zBqgrMVK5KL6jTyMHh5NhEiWFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN7FyUmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN7FyUmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9263C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749106793;
	bh=4F4DrFx8A36TFp/rdrTr+sGwYMmBTyFFbBCzvkfG9vw=;
	h=To:Subject:From:Date:From;
	b=MN7FyUmTIChn4eIJjqJtYMfMegUutG7SGj+AgATPLmvUdzySDNIS/X5iw3QT9HlsU
	 3vcEQi8DI21j3JgsPxfrgag7z/5rnET0eDNPbF1ihmvCci0N/wnC8gtD3Bl38A8VAw
	 KKjaw5ee0wcmOeyJLEgTI9PCwt1qCluNy03zn+zlA0BpUZ3tp0A3Vda077jKQRWcvx
	 7ktK0ZOq8pW1ZLpWR2/TGHG85B+dz19jmBldw/bWOw7N25lxh+rfthw3xF39NkkoQY
	 n6vIT+oq2th5Yy21PhCmF6BLKJX4fMCzfC3sZdu6Zm1eCcn6ePy6JJUI9tECQqTEG4
	 /XJ+7xoZEIhoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94960C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910679359.22333.13281527515069508561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e75a160a1de51b12a775e665ea09350ab5a25b08ac1536371ad86f0c2282ab
Date: Thu, 05 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749106793
