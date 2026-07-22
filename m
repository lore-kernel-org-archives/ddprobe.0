Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE29425CF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784713714; cv=none; b=JijrrZ1eLLrhrlqQ0SWYyrERt9/Je6YW/YwHR+SNgbwUDlJwk7xPlaSPyJ83rnNdWwRIowrWHllPdRB0G0cDHH09vp+sNW6+Mj3dETWNTJr6pmMuQNtAR19Ox4FHD/caT3oXb4+xXxRB7n7ia0uwESn++2rpStkRht1oW8eNTc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784713714; c=relaxed/simple;
	bh=CyrRzVUM4tuAanJeVsRL9LoUgTiYq937DMmka7ZpmPY=;
	h=To:Subject:From:Message-Id:Date; b=bqxSG95x92D5SoDD4nWwQ/QXzZ79zYpPnoXGnHOjfVkTcfdh1wwfpjpwTdIMEBcaU0gOZJBI1L29Wkm6YG//6J9DK7qGuMcbFglK2qy4QdXpWkVujxmz0p1wzPJkalgGwkYzg0Scjd5UhbCNuPhIDtDFd/8KJ7IXEFnHQ7IrEIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnbnmX1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnbnmX1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC97FC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784713713;
	bh=CyrRzVUM4tuAanJeVsRL9LoUgTiYq937DMmka7ZpmPY=;
	h=To:Subject:From:Date:From;
	b=jnbnmX1GuCfipjX6MG4QBtBtU+I9F5yy1C79gdgq+K1sVNGwKNJRqW5VoOOVajcAx
	 j9kbbobYYm3JS2iqwbrVe3cbd7EtEmHA3Cp1rNqMuUDSnFMnHqIMwC38fxU4PIfUHT
	 QqOGxllYu1BMHPVdJfyNwgbHYxx3kpvBXgb1XpiB1aVXYPwX7KK/HnWe5VZVmF+oki
	 SubPHB/2HghLEmUh2pUtLaWSTHvcPZf4L5raUCLwXHAJi7PyRlEqaNUIWglNVW9PLL
	 tgEjClUndk+15+FeeTMft0oUMy87tiQv+VgHdTMyIRtQhrbvn9TaN0I6tYxQd2zpMp
	 qBVHtyfgtWpjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CB7C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471371372.4561.16854678691850737662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dafe83ef939985600121381e34e127d093194f44405a2b6270b4857f240bbe1
Date: Wed, 22 Jul 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784713713
