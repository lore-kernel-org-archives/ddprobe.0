Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C111FBEBF
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737962754; cv=none; b=cuC5LYOKmsKAdU3DuiYQ1+g8JL9UpyNCG7DlT/M/zeLUCr1xDcUJMdTmHpfdfaTpuiXinEGkCFuGOj/MitDEYl6QB1ELIpSBGvr/f53F4nND48l8G5zEuLxCVxmPz1SBzph2f6U3AyliZqxafd3ouYzUOz3J2p9hQ9ezfFNLSgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737962754; c=relaxed/simple;
	bh=kzjRBIfLY6bYw1YbrlGdhGffFvxeefE62mdiFTKC+Vw=;
	h=To:Subject:From:Message-Id:Date; b=jdCbClUak7C+B5ZawNcfdyDCkS8S1T7pu8YRs9obpPAAU7/vvMGSxFVNzgnMCoQ9b8kMx5KZ4jm2rK7spbMWrVXL4ZA6tntBOag2ib9MilZdcmGBX9Hs+rNXoBGfHPtR5yKS2KpkMPf5P9YX6qZBK76IzxvALWx/nvPLSJbXnrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knriOEIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knriOEIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1161C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737962753;
	bh=kzjRBIfLY6bYw1YbrlGdhGffFvxeefE62mdiFTKC+Vw=;
	h=To:Subject:From:Date:From;
	b=knriOEIkXoq4r5XLfihcqeiCPQ+0Jqm5EjrI+CIH+sZeThd5zVE9yA5tM4dmMrecY
	 rC2EmqCk1MAsyR68IzLGlL/BtRF9LhP7iHM+eDCD/9l8PrjRAiH95/RKoWuaUIupa0
	 kWDAQaQeayYy3dKPqQsevaJyM9poirFjjIej0X7WV32bNH2CpPdRltGG6S8CO7DQNm
	 +KXnlvDfwXLWzzOv1m+SpZs55iGozYSZNbt++DBDIKa0tWo8XIcgIqYcOwMUrzvk2C
	 pTluto/vw6OUm+ekK9b2TDfM+R9POezWTK42KtPnr7+7eAEbo6WT+dwJch9qsVA1Vb
	 Im+rFsOlJNpbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20CC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796275357.22737.16877341865965500294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 018a05329d9aaa1a5f88c4ee6b72eccf2461ec36b9a887450cf1546de2c81ffb
Date: Mon, 27 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737962753
