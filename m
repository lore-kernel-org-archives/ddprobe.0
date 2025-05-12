Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575CE383
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747021794; cv=none; b=f7BGO0zUrHjL9q4XVxs294CLMuhtj7/ajkAwyP+KyIXpuk4EHpRabW86ua2NvraxVJ+bPWU4QSOU9t5BW2bmxuQjsPoBbaizqbeWgVsXdPSDwlXr8/gOMp3XSkbGw7KyZhb1t09npOjaoebrm0/85fZ+5GaXO4Y8eepTemoiMJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747021794; c=relaxed/simple;
	bh=FToBBRbkLRbbH+BnpU0n+DkLYgCgDCBDmqoKCQhsWy0=;
	h=To:Subject:From:Message-Id:Date; b=WIiC5aSCGfH408qh2OBBmAMBkH366ZaK479I+03BdtZJFms/18GJh2D3MTcpl4c5x436s2VEgkT1aIJxAl9P6GevIcGpVzgxTtjgrtPPHXlIw7NdF+YRV0hFRm7veS8Zn74Iz0r4W+Uu1teML8MCNqtEmvpcS6TZpnvrkmtxg74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSNZCNd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSNZCNd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DE4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747021793;
	bh=FToBBRbkLRbbH+BnpU0n+DkLYgCgDCBDmqoKCQhsWy0=;
	h=To:Subject:From:Date:From;
	b=lSNZCNd7jxdVoBehTHtDpiczBMD6ugrsXRdbr3bIsvt1XLDRWYa5ofCy2MArz0jMx
	 d95is8v2fvpRdZXe9Qsxgoveuy8Y7+hTDsLnZH/DTuAMN3lp2hFsRveWYew6wpIwar
	 uCkcreNDxIxweLh/GIs1rN5WZFUWMnBpjjLbPz+4YrETPuhWaKCUC4hP2a5Jo62tOD
	 eSULOR8HCLfz1wHaSVzOkCn8wYcY1Dgt4jheDYaFTyhvcXGzHTEZmsDt3/77JasmlF
	 JMqfYYcINaolecLV05G9eOcjIPi4ku8dOusIxxFm5luMB2uWo8lSrlVnk10qNXXzh0
	 VKBnIPIPF/EGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4C2C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174702179363.3845.12943670883276443972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b9b3e180b7ab512b84fc49ee4015315e3d50bee6172bbd82619999aa7be1c7
Date: Mon, 12 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747021793
