Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416011D89F1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736983554; cv=none; b=oxaiGGiRReVohBFi+c+vGpjAAojKaOYDwmFGgVP9AfBN78G/xZ+O6pDCtMYty6BSPWCKuVHAnROctIG9DL1DNxXB/H5pHwW6n+UfYh+VrMsOy57nmioYIzF4wKMmHZvidTBQApKpnyC62Vhe25qmV/SO0ztmF8JbrHxBK91i4uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736983554; c=relaxed/simple;
	bh=JZ8kIRMYNJ9l0lYjzaGOmx5Aa07neG3ooeWFed0VVZ4=;
	h=To:Subject:From:Message-Id:Date; b=HGM0Eh6WTZ5x2cglN+2BksjRutsIm/F31ymBDVaFaW2VoYT4kaRZrbs7iLinpF6gV6lNDKevOAThgO7j0OKCIQ6Ue7LQgZPETEpjaq4zlNCCvCo3LlFe8B+2CoPc8acw9exIph/3r1Hs5hOElAnbRAS9bHCfFCfhhS6VcHhH2a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJzQEPgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJzQEPgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A4EC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736983553;
	bh=JZ8kIRMYNJ9l0lYjzaGOmx5Aa07neG3ooeWFed0VVZ4=;
	h=To:Subject:From:Date:From;
	b=oJzQEPgwHLzuhbt77DLJHDLJtfvmNYd7/iiymK+zTQ5mtZZIoTr2c+S02HrDVx6EL
	 U7mJIoNm57SCQrZP3/+VBB6c1UShzB9bFfoLCWR7eMrV8VkHhxZoqCfPP+I3IO8MWr
	 Q6287XmemWwFfX0pIc/3P51Gg3aJtuniMrCDVedacJzQklEqp8h4PB2NqlIRUdGW4B
	 52BDbpLCS2xt3UnEF+8P8ngM0V5moiSscH8e+FpLnevig5sVvmEOKbbOG50aSw6uQG
	 gu2RnRqdGdb5SoBLbtL7Al58YYm2+uDeAyWLNwxLDvSj6i+QJe4PMAlUG68WV1XEiD
	 wxSFzmE0h5ZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C447C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698355362.30365.10351114264611467783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa3d65c49f1af64e34ec0fd48e7a00a0e0d577a1bc69995a770c2658ec783dd
Date: Wed, 15 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736983553
