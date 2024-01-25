Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E1B130E52
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706209097; cv=none; b=kLKA7rd9a6gUU3obIkbIlFrWyOVfI+z1fLT19Tkl7bO/KhH9Q4Fs9jRSOeJFMnHbDrvEkYxCIatl7CK+csiWA0u/cacnZXJnP3lWS8+qCJxM1ZKgjFtBqNEB4H8nUB8C+qzYgG1DqnSZI4b6HERK+IThilXrvHLlb4WmTjI8/Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706209097; c=relaxed/simple;
	bh=0ynetR/2AryKvrQPPsaiGNI850KPKNfv6pEIyeRLpUg=;
	h=To:Subject:From:Message-Id:Date; b=h6o5NMixxGIpmv45lXSreZsC8fyTSxiPQiHV6TT34iy5vohW+7xoR0d33QoToxEIKaFLNL2vwIonCk0DNgcb2tSE3a9IvZUt95WZKybdh04BbGxWigu9AenmEDZ7dOXe1A3gYmyRb86TlxCzUW6WWOgdq1/uE65iEK1fEdQ7iAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdzTDY+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdzTDY+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84EC2C433F1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706209096;
	bh=0ynetR/2AryKvrQPPsaiGNI850KPKNfv6pEIyeRLpUg=;
	h=To:Subject:From:Date:From;
	b=UdzTDY+2cnns+bgbneBRJ9oqB3P7OiJmTl8oRuNRLQNI2V+zb+v6QOK9khMaP7TCH
	 6Pv/fdADiAFpJ6xoY4eibJudpCVKwhQBCV9h6PHSW5bd1G0Quw7QnWQQWdPzonLwsr
	 38Cp/rWG9QnpmFKJ8VBYM3ui8d9XIHzrfYGf9zICaeLAMzvIedEEa+6zh1VhjlTKLI
	 E1akHqOB/AkZbl3oMKe7rbkkxwhfq+b372nyOj7S9yQHYs1y3KEGhKyxPxqA6I03kF
	 2r3+yambWM64eVoTE8WO3rQ72NLTjRsaBRBPx8uzIsmBfpHF3Fp3ay0NMkvZPUMigr
	 lkxt1CEDUq4PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D1D6C47258
	for <ddprobe@lists.linux.dev>; Thu, 25 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170620909643.22806.15080270236606786165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8828cc2e8646f5d911585a22beb822985eba707cb3a494f5d0518b9d4ac49b63
Date: Thu, 25 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706209096
