Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5214A1EB2C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719680063; cv=none; b=co92H98A9NMxjGz4XDOHujiwFwKLGhR5DsQhSru0lSoKeNgQDim4/owy7siHyTcgl7CUoMbyRUnufE5/ISd1EwudrTu/sG4dSpZlaVEfGaJ2LxFrUS33/6V2g5QrmM13HNkdggQMqwRApzVI/Q0dFd9hBFydlDBn1jjXPFb3Cvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719680063; c=relaxed/simple;
	bh=iGW1tW2Ss7PDOO9kkfohAQyaWeJokvg+YUskiGcK/TI=;
	h=To:Subject:From:Message-Id:Date; b=h1Rq+/7HwxDC/gb6TPD9kOWUshvKOYAQl3QpIq0U4z4zf6AddCtYGXBLG0gtTrBaji2TRg3gg6JPLsPs9KsN/pptq1nSXKi/rq32QhjQjV3nutZRyYmw9knmS9xGFhUhUoSWV+cWzNmSrbU3V1uSJGHDmxnyFa5XD7XsLXcKwso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8/B76HA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8/B76HA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE667C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719680062;
	bh=iGW1tW2Ss7PDOO9kkfohAQyaWeJokvg+YUskiGcK/TI=;
	h=To:Subject:From:Date:From;
	b=X8/B76HArGRQ8D6iiHj/Tdm6HZNFVVSfXeK1jPfXVpate3QMyTdu3Wg1UBoZkcZZp
	 D8zgNGPAIqRSOi7CLwbEFYQwjGtb1sf3t5Xrwf0lvPePYqDSY0xvToysr/ShkcagW0
	 7CB9yr5VxBWiIM3tex1JRbWkHVaRFikOB1ez5foknyEbC0zaktq1KiFUAMsXQMI5Gl
	 WzVgSOpQDGjU7q/NpuZjcUKjteFXA8/oITUM0Wh/7LRtisiBOI5zqXc7MlRwXsUjZ5
	 ioop4j0gUL0HxHzlaoiYDaioRWyTuQGJoPLBtE7cgJmDKLf63/sY9+hvyqYQ8WKRd/
	 2FPsFVE+pCk2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FCDC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968006277.27176.5439529028114779204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c1b0387b7c70234e4edfb40302220ad0050d370612a71f83c4fc6a907b1197
Date: Sat, 29 Jun 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719680062
