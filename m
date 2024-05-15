Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8849E37708
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715745143; cv=none; b=Rdh2pdGejz3C/cfgRH85dZfJQSUHIjQWDhAaQC+q4d+xe40SFlF6Y0eMQDD3AqndBSfDnktQ62vpJGpYmpzjlF3YIVSbQPty93jyYXaY9ExR1b0MlisXCsuKp3M9bnK7aEHlUL6r2Kw0YcbF2uW30NDbK0IlPE8acSIZmTNgRGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715745143; c=relaxed/simple;
	bh=hx2To3xooNO9cYXw1dce7FTshSNVITItNLuRA9WQcGE=;
	h=To:Subject:From:Message-Id:Date; b=VVAVviCRJsa5cIIv52UD0MzkCnFyrTUgFbSb2xjfkP2A3oL9pm+hWXm5mR1rer2CJU2UqOTIWJiCHjBmWfPoUD/x0PW3oo323vy3KMWafBjaY2yQ8S4QCUAGIU6zobfVv/8qTSDaZ9YPd3keuBRpnP4H66sZ/Vbk5QTVOBLhpXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1xVv+3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1xVv+3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFBF6C32781
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715745143;
	bh=hx2To3xooNO9cYXw1dce7FTshSNVITItNLuRA9WQcGE=;
	h=To:Subject:From:Date:From;
	b=C1xVv+3Xy/qASF7Hf3oKNrqVKz78k2xI6BkRI5qvW0uXgwTSt3ucg9Uikhj822jiE
	 o4YOTPqqeWhzdieL9xt9g3cNp6FesShjcmrDthThURR66YHeV776K00xJynsR3JBnU
	 H229PHEZL4HPq8n1Wd69CMVFH6fTzFazk54MiaVdiQ/Z7F279keZS4OW6p5brs5vDl
	 T4MV1JP9ADRw1uZoSKcS/CEkKt024Jdc7nSc+36QHlRnLqX2lE9haIiG12LVEimYjl
	 xGFuoU4c2ZRHqCh1L7h5zSWU9Tc/wuooQW/Vu0xVz/ZD0+2CYNQcadj5VQPrPUXS3j
	 97vC42ppEZvBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCE48C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 03:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171574514285.29992.3928274680514456980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca2ecd1530c75d9418006dfb390ea06db7fda13d3eb6030ef4880a66696a3643
Date: Wed, 15 May 2024 03:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715745142
