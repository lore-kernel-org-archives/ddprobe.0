Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B2B1ADC90
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743290394; cv=none; b=tnQC+C/yzg4QalkXY0S1vfsrMrrRN5nNwWdmiwq1F3b/Jk45MIsPMTqIgQpKe46XLtThxaRPpcQJIPATwv5N2kt/2ZG7Rc7Bn7x/4BHvHlINfovLUrVE1J9wjlz5BbKUJpiEX13NciiU+axFkftGyaPGRAdio4a2yuiVXojutZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743290394; c=relaxed/simple;
	bh=WqtjTMumaGDSe0JoTQu0rFjHHkVSd8mIcIppV2TQaUA=;
	h=To:Subject:From:Message-Id:Date; b=CTQVsO0XMk37uzuqOJwPuPxW0h/erQVL+MLmJpBLsBzi9wrPZaZUc1vqxP/8pn9XGBxHB1yHoRQ+m4scIIb5BiA02NMptKlcDekRSt2snCBrzNmW8+M1edfa0Kpey7IRqMDf3CMY4FRF1NaLzYADPcYY2bYTMiBxaXvn/MMeZwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gC79omZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gC79omZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1A6C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743290393;
	bh=WqtjTMumaGDSe0JoTQu0rFjHHkVSd8mIcIppV2TQaUA=;
	h=To:Subject:From:Date:From;
	b=gC79omZ8fYwVWal4d5utwMPIvQHsfSCqvm4sBCtkd5QEYYQNy9ZvGoVXWeFebn0YQ
	 D5JQhiSrd0nmkk3NQZnCJ4DFVw60f6UhAQGsV8AIAcjZQHPUE4dgZD3IP5M0bixu/s
	 +YNeMx3uzZGtmQXTavgsQcOiCh6S3WZXDwW48M3krrtuH61qlPkq6PUQ+4gE0hMTt1
	 pBKO5UJTFmcrM6kwbt1MqtiMWxddWqAp3EAf8Ir+0EL/7nSDLWIn76F32fIJPmRDCU
	 jyiVdPyaNGe+k1uEnoGCzPjIYm38deu/sU0Dt04MfTvL8ay6cnIhHqn1Sev9goLAGO
	 DkNOo4ibonKEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C4DC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174329039367.14779.5351824567697919857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1bdad0a37a48f2344a7061ccb187a95b4ea20c6601855b366e66b996a55be23
Date: Sat, 29 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743290393
