Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5261EB5FD
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780106014; cv=none; b=IPiUtxTo897M6BuzHM6uFW68O9Wz/pZTbse2D3ryLvmYWrLmRGO9Fb6Mqr2H4WOAaMQDGAuuNjUYBVPIPRTTuBDSJ/2/THxv/fZqm8l6jSo39rQenw5jCjFklthq1k8PStp90cZ51tqJ2A9zwxFfAWRbPkSjqMvVaQ9jC7S9GBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780106014; c=relaxed/simple;
	bh=unhD837hf+m9XNrYjWQ3jAz5Wjd4uyhjc9l2K/OwjKI=;
	h=To:Subject:From:Message-Id:Date; b=h+LvPC1duhGD+6DaFtrNAxBeiCiPTYPjHn/uT1SfPbEDpu3r24ZcX5WgSuCynhhivsmVuTgb2Qc49Ceyy3ngRqnfy603ggohyBSSFgUqit9+AZWa/wI0aOtPMClerxgFnvq4YYaD3TxjsPNcwUSZwPs788f6v2t40IuxubZo5G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLBnWEbn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLBnWEbn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22BDC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780106013;
	bh=unhD837hf+m9XNrYjWQ3jAz5Wjd4uyhjc9l2K/OwjKI=;
	h=To:Subject:From:Date:From;
	b=RLBnWEbn06bVn0jvsb79FL/GkPQaqobCyXOPrp4XzRWh2zXcoLb1aaVXO6qgLFV6a
	 IpCbAvhCQ6QCckrnRQ8eiI/VM0nrs5KosTJGKd0iNleMjyK+EIBeh7KOyzIzVlCPli
	 zZdDZ3Wab/1gSbd5BjjDukVLxXSR3X0a9xL8efErajSvTx2fn30momVw4XsPoASkzk
	 d+WznhmFKU85R7VD0dYtG06fjatVPm/DRpmKLu+gyAwLVSqweX8nEsQGCBnSzNWxSY
	 ZE1GrThzzFyfzh8B/fEwws9/4MT9tRbNRz9qUGql0dSNHPZN9aSMoOCdfR69XKFVtC
	 GJNfppXiX2gpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB30CD6E52
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010601368.14389.14701379592951487833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f4d216c1f0d97c2bbac05781dac80386bb99b898a152ab8667ddb926bb181b
Date: Sat, 30 May 2026 01:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780106013
