Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD358460
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766657034; cv=none; b=MDgHbmrS1wMd7H85lYif321sLFLO2hXWINWYiidL0t6Ft2+hSX7yD6vwSsdapF1CZh4/30EFaYD7UMMveNx6K2nmW6tPKsm1eG3REaspAZ83ISW+XItVW3tEs6+V1i34hXgVJD8+zpsQcGVcNNPclQg3d0GrwsL2JNusW/y99nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766657034; c=relaxed/simple;
	bh=62EDBVeMDFmPSMWaSBlqyGxqwndF20AnoOacQ5fV65M=;
	h=To:Subject:From:Message-Id:Date; b=pPwQFzA9wpUKUZwaEIkxOea0B6tKCAyhSltvkMGDic6T+Yg6WA3z2Zo9llKXTQkLTdUFrLTSUVD3AsnES/g7Z6QUPzlXGqUZlC16uwlIO+n5pOZGPIVLsr3cTUQX3b8C5Ny2kj5Z308LpGfXD1cvc4/uR9ZH/uczaD18IK6vlHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3lxKoQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3lxKoQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9443C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766657033;
	bh=62EDBVeMDFmPSMWaSBlqyGxqwndF20AnoOacQ5fV65M=;
	h=To:Subject:From:Date:From;
	b=K3lxKoQcDoFrCNG5wWmBmhtABc8ZiqgXgMG55DtS5PLmCFYcD9/hEF1e+myN/2LJd
	 g6So9pJNKKNeB80ysEbZ1y61iRgA8o81nKtgzduzn5bFWR7KFLQ7h+cy7/v+I1Pdol
	 QUEqwm6PeOuasmJLcq1JKU0d+oif+EzMBKrpJU6E4SVad8H3VC+Sw7IT5HGoFibPMo
	 m8mgRCckh7XYnjYQdlceXqPBPq6uWg0y9MhoERqNQNT2Dmb1jaY/OoUEL5HNZrdFpC
	 OXZ/R6+z8r5iCZJDXDFiiHFC6rLte08TOAQPo8C28iOXlKe4zZR7GDwth50mAsgZVN
	 vu+G/vTeWokZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9323CE7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665703358.30090.5762045480625254015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f724e2d248d9a80aad154df67d83aceae3e948642e4985afeee4462f8de1a1c6
Date: Thu, 25 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766657033
