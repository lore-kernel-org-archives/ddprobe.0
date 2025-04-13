Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CD6B67A
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744576194; cv=none; b=FyHTceCqRpUxbtmrCnCaFZVS49DB/612dwptM27sVnPB9rKjtM6R/+lPDXpdONfhlj6LWibyZ2Oj++1bayhBE54hg7tA+UHsq0j509AUeSdVM89hCfmjNi2BXgXAN2IswEM/6x2bxDjckyLv4/ETfIGTp3dqhizdVMy3UaySPSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744576194; c=relaxed/simple;
	bh=trd9U2UDC49+Lg5ptmi3HbIOPSEbzNir4q06P408loc=;
	h=To:Subject:From:Message-Id:Date; b=Oc7JT5ArU1Xf9ZLQ6XiW9MeoGp6jwy5Gcuh24TffzcaUcxlU9/gNN4LVH1B2TDO1lRZ/BsYMmnCfmZP2Z2gp60l3vL3n/r6tXfE08boh5roQjkqYMjSEvynuiaQNgh24ERGDrKONFZntBaeMJ3HbcpFxNo1AuyMsJ2GjemyQ2MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hriF5RpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hriF5RpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFAA0C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744576193;
	bh=trd9U2UDC49+Lg5ptmi3HbIOPSEbzNir4q06P408loc=;
	h=To:Subject:From:Date:From;
	b=hriF5RpFWAmpUAuP3mQrCMsG/mxeTHHh9Qvm+9Qg8IseLLzBQP5JR7EJ55uV/QyDi
	 S3d5nKP1eCvQPs0lmiZYTC+lTrWFDNBDuEPQs4QdW1I8MWbFcj/Z4VtwtY3t3FX5Xi
	 2UfryzWrOZ8ZrOWC7/tqe7xfpSP6Je78ykM/15nbSD/ZnOlddsQa1kZI7j6AA9Gmk0
	 V4YgIYduNXs0Ic7IcmxWS1tpxRu0DiGfCaQLruaPyTKeYpbiFr6NFfb75BjBLQFOBl
	 mReVfdcGVcTvpN/HVWoqUiTK/7OKPpbQg84AX39imEJdbHVZjV26yr0d/1MCEwTNZw
	 wffyEHZ2FC25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD6DC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457619359.5993.13369256825111600185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0579eadeba8cc336f820ce0cd110549f7b2f76fd30dc61db8e8d1627a731de6
Date: Sun, 13 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744576193
