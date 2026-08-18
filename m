Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43340455161
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787050834; cv=none; b=skYLjRyjNTEgomkenty5ClZnjECE1O2w7b1EU0Ija7fG1SBe89pYdAaER+hX9T4t9rdj97/SpMPD+EaOzW5JCdQatNEkcNYgrGzilWOZ4MimONnM4jIqdRcJD9Xwgx0ePBoXX6idGXxrL3nbCBelTfliJBtSvBiCCdnSqch/byU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787050834; c=relaxed/simple;
	bh=71Rv3Yv+hQ5z2tG3pqk2Yrc9kDBNchtgFYd7ef5dx60=;
	h=To:Subject:From:Message-Id:Date; b=uUlKCxSuXTYKtAz/C2zZN8EjT26oqpPL/SRM+Ch2cQr+z+q3oXfCs8gqFVaonmwLqCRpfKmVP50QdN67QYMf+Ngvp2Eox6uuvkjn2THHG/mjV8fsvpSwkIFOded1R+1lb1yLXZp/IFxGUrl2NPImzt2+vzjgaZF1fdfMmoD0DhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geEgZxbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geEgZxbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD397C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787050833;
	bh=71Rv3Yv+hQ5z2tG3pqk2Yrc9kDBNchtgFYd7ef5dx60=;
	h=To:Subject:From:Date:From;
	b=geEgZxbYJN/PprEnZ6uGj/G512VJnoRKcpGh3alhvZyQe//kDaGmc7bTGHyUWXGCr
	 Qnf1KLs7p9HJduHH/Yr1vk3+eXo45RzJeEyhNxOHmpqVynN+Ryd1h7ZWiJl7TSRg27
	 QDhufS+AKZvbXUQGkqY7zaqCC6KYsFyrqJuzfp6woSV365OI/iIMpgsOJDQEVM6KpN
	 suAx2TH047ExAVIidU9ypTd5GVy87LbI2LmhCS4lBSQGaZF+B7jYj0yPWhrZ+KbLU6
	 FIFV+UMlPZ8/nUStgOAuMEIMUN/RQ03WRbk031H1v2XzC8N+haVdzqvHtSFx3kv8l/
	 dchLTrOY29uzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA07CC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705083368.21818.2434877721175212276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32739c612037da40656b0c81678d7701b26b61d0d0ca8cac12760eff3a71a2b9
Date: Tue, 18 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787050833
