Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969511353F3
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712138296; cv=none; b=DtJOG8jBsChZu7+v302y3UNU/QhsqL2b+pt/UmFmdMsXC8AYB7lcVvfJELLgWox4q89d7JsEcZf2sf6fYkRkrk7zLHOGVa0XhoMcaBOO6hGmyT//Yi8sObDLOYrONlLkFtmdv6+qRRCBPbvWRBlou6hEEaq1GGZm/kimVb9qxT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712138296; c=relaxed/simple;
	bh=RZXd1LwlHJDRpWCSyk0G5Tb1IOS2bMUT05dV32Up6XY=;
	h=To:Subject:From:Message-Id:Date; b=s5sDu35eRETiBxZIaFYIpLX6Z+izHY2/shpfYS/qh0a+v8a+j9JpXe2s+bkjbCsSOKea7uKF5aKAswP8EV4kIbYxkN5NOi+WeBAY5R/rxPU50OxvWNIa2BnEWCJCLnQHTsogTGgnM55gh75cZ5aMvhShZ7DxRp1Gxqdc9AIcgpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/s2XewC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/s2XewC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D421C433F1
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712138296;
	bh=RZXd1LwlHJDRpWCSyk0G5Tb1IOS2bMUT05dV32Up6XY=;
	h=To:Subject:From:Date:From;
	b=u/s2XewCimu5s+1HPxEndKsckA8zv1pD/xja/4FV1Q8hJ2CizbWPmq0XSblPxYTun
	 ztOzb/DgLwzjWY0G6xWsfebk5FsA86CNriyRBtYV4rhG6JGuZWygdU13bn1kaUhmC1
	 frxqEdP757PsxczsSJ7zRk/PzvHa8eRt/QIGAXWda7mL00iBi86JI9XVHq7BM6pw1C
	 zc0+dt4Pu7b+I0JMD0PVfWWPeh/SstB7BhbQ/OUozwwnLWk2LwJU1vWL02slVBKg9W
	 uAaC5WsiuqRUWN5jHUx8ZGWpG8qVnmR24QrfKgbIG4f3YlwO+ppsNZqRxAUNgaO/JG
	 80u2cYvDcD3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B4ECD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171213829639.842.7358635035085645637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a78deb8c159bb7d4de0368a45a898225bab64b27531fdf29fc281af5adfdb5f
Date: Wed, 03 Apr 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712138296
