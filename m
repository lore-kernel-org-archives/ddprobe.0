Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3954C81
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759265394; cv=none; b=mQQ3WpIYUUrt/6+j6TPxb5eSk+ji+dr0+NBSoZDrUYTlDPm56lX4Cp/TcEZDk6P2kZ6ywswYtKI18hmMGDfzECsRyr549Y4Oam3DNt4+cDTuDC0m6GdayH3Y1XqGJeVeEbaj/DI774EahjElICc7t5rkld+diyi5+ZDfxnG+OAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759265394; c=relaxed/simple;
	bh=uQCSzMEq/GQmBvYTZ2hVL8G+1V//UGrdlGrmp6yg3b0=;
	h=To:Subject:From:Message-Id:Date; b=YaruR+9uYO3Ud8T9ZgQ3JWYO/InY828uuPei6AfsaQcf0NVcH7YIzP+B4VRN4DwB2sWoxF31z7CivBRxaW4Sb5lFmQgmH5yaSIYPlF26k5Ko0GzYim1PFksrmHTOkJDWA5ZO4Z2bLtA0nbuJHRmko2R1aoDW6B+S7wxdlyavUEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eT1d0/ru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eT1d0/ru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DEAC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759265393;
	bh=uQCSzMEq/GQmBvYTZ2hVL8G+1V//UGrdlGrmp6yg3b0=;
	h=To:Subject:From:Date:From;
	b=eT1d0/ru+TauK8b6UC+f7M+9joc0wrTP66QJpxLOdsnDtRBegjgpQBO+bUR4JQaH8
	 Q6/p5Oy2ukmtvR11qow/DLBZlnrvUmkKH6tHGnWDA4fTFLUaMCw39SnFsyK5S50Omg
	 Ra46JMU5Sgf6b5ydJD3qOJp7hVFp3SqpZYkekcEMRDxFlAREJmZm+YRdoibHRqTSvR
	 Os5G7/WJ1JZqffnQHTDziAus2zFPSf8L+JlVs8AsQkQAxOr4xjckz6knFX++I8klpr
	 iGyTHoyG7wN/2P0lfq29ZWxRwH9MaLk/4Rx+rEF08vtAKFpg/RqEXZWMBNXGJOV22R
	 kRzkNxDESrzzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A179CCCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926539364.6621.12352797003857470194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1422aade85da3565dc85b9fee4d22b68a5d220ad18391f3125685241de33636d
Date: Tue, 30 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759265393
