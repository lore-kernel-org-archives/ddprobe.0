Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F05240235
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736826954; cv=none; b=u9uX1jJF4F+EmrNH+rqyaDsbZ5INhiILdWDPRRZefrhAfcjQsa+UpaR/kUbtGdHDGPDABK50iJH8p/0Ij1TNop0965zfgEbAUpbOVHQiR6L74T6D7+91Bf1dnmRhwi3v1jtD4ser2r/5fpqJPTlZXCz3ZDGdM78+/c1a6gp/I9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736826954; c=relaxed/simple;
	bh=faDETMd6cuK250mFUFWliW0XtvkHuCC99TDL+52/TSw=;
	h=To:Subject:From:Message-Id:Date; b=GANAksePknR7DPkBLPWGI1j3HwdJ3tSaClowb60CYUbpLPNtl0Y+N5Co/uhIOPrLSrhZC3N8i2siUAOOHMkUb+adqiyIbTOBQH4hiFjiSeh6R9QYa9jpuI0Lr06WpvEqA7qWp/gv3adnU5CZacGAZHxQzUEOnWxt+JhnSHBWqis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBn0p1sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBn0p1sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9859C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736826953;
	bh=faDETMd6cuK250mFUFWliW0XtvkHuCC99TDL+52/TSw=;
	h=To:Subject:From:Date:From;
	b=WBn0p1sb5C+O8pRBJdOIZpD930RnALFLlDmKMAPrvEA5Uokh6GKQEV9hyBz7Phadk
	 9M3xphNXJ292dRAbO3UqtZ0zFDsyY+yHOG9dzwfGoOYOCM+VZwYA2CTRaV6btlhie9
	 zjEUIRAZRX5hBpfEZ55d9KJbZkhxX+IBwOSjZLxyB+7xDaHN0Xueh4Ee1r+zj4YnwJ
	 ngrpuFV/ap8SbvITOb4CbfTZxqKwrcwN3WbC7yo42RXS/ZXkA2mCgYogTo2tIgeyta
	 Y9sf9Crz7D5OZ5bMU/xDcw2Tdkiez8L9wR5+1/OgKt4sznQah6isvYXj0DMIoDoM6o
	 LxMrpBdXTspcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB31E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682695362.17041.3566539940092445828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0949b3338cefc511061caf7349416e34694dbc91f802977cd749c6c9f52d6a2d
Date: Tue, 14 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736826953
