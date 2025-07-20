Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44031191F84
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752991194; cv=none; b=hWvEACEaXZdLTs3nKtL1rtVOO9S96xzvY1+CH1BINqC/HtO5LAyle+gu+GzSdso42jzDtxmKwtsa/vUlhUK4XUyZlQ7eR2MnOun9242bJDrLOWkABWdPe1ICRci+QebFJgbyLfFjQnORimp/J/m1TaonjwQsYaVylw6IMKHiLX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752991194; c=relaxed/simple;
	bh=y4tGetXAG5LOYY3RloYXWtTnpXEyMBeJzSMDN3tNK7E=;
	h=To:Subject:From:Message-Id:Date; b=Vsi+c+V3Wz+34Ct/9dAohWNx/mTHzX9vgPBnrwdvR9qjj6a92Q9MQ/aLrtHiJhGn1HMjyn497gjcy1lpVkIu1oJJVDEWoLHVuUzgHRiQfQ7MTycamr4X6ZysqZOf5MlFbM8sszrFwbCCNyG1hRlChBYrPDXkPrGnwwGarfHiMVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frl4oKMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frl4oKMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A882FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752991193;
	bh=y4tGetXAG5LOYY3RloYXWtTnpXEyMBeJzSMDN3tNK7E=;
	h=To:Subject:From:Date:From;
	b=frl4oKMBVvFpoh+sHaIhJIyNLFjswEGqW5egNfP8MVoLpBLUfOqJHk6hHEVg+T+6w
	 C/ubfebtSQeCSgOqpoUEjM8KyCmVE0DSeb7cSPhuPeSuGFPhZftxvGTnrU9fZ9Aew/
	 vAKcaferDoVlJeJvKjkDbSKudULmZRkGGImH/uC4a72yHi+IxtfNT3yPgD50KOvz9Q
	 loV6+/1EW8ws/LLNz72F/4lWdt1VEjQikBXCxfyHGw3TTwbOMrMAIo0cO39XLav4kN
	 WXClg2KYpZFB6av+Y0Ub9bHPFFz7ASn/F9pzN19xnVD478sqgTX2n3pmy46nZlEStx
	 NNN/r7OC+ov5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9196CC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175299119357.10300.736558845569356291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58369a46d5f35c3429b11cc07909e6177be15a6c824ce05455505117e37dfcfb
Date: Sun, 20 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752991193
