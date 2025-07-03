Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B79A2D4B61
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751533794; cv=none; b=hG8l2+GAu8fP08htnW2EjZ95m+iZAcGiCpGs/2vcZR//1jtEsZsC6XbB20yU5Hb14ZTuUYLEPk9Tfd9QXNpi9tMymspHrKF1ZsTyWodheqDDaBydAiwiE2MY4vMWFnJDehyT7KiU6ytTVMsXcpjU9ttCSSLOk/4O/a5oT3Xjtm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751533794; c=relaxed/simple;
	bh=VOYeEhI2FCl2XmAm7t4KEico85NR5s8U/ItfqeeTcjw=;
	h=To:Subject:From:Message-Id:Date; b=iDaj7C5HJ8ys6wE3tGMvn/dvJ85XMdvmrcTvPceqJlLmZI0tvSwQL9/FRNeID3V9tXJpb/AwIzi7BAbvD7znZT2UchLqiV2m7DPgWmH90FMcl76I50zrrpIN/WkYiGfgCrjOlXHerguXXvfXTt6lp/78F/r6MOZv2EFBKnA03rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcE3g2Rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcE3g2Rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A116EC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751533793;
	bh=VOYeEhI2FCl2XmAm7t4KEico85NR5s8U/ItfqeeTcjw=;
	h=To:Subject:From:Date:From;
	b=bcE3g2Rm8D8/q61wb7/aGzsx0KS8xYM2sms9vQX3/FCC8W1Yv3qbo+T7npcOaFus8
	 kWO1mvuIZex6/bbElcrl8JdMGW9jIENLjm9ViC0e6KXViL5dR/hCNItBzF8pALphF7
	 Ypch+hjln1VhabIen2AIxWHHCeUnyq7PxlfIdMu85kt5OGplEbnxnGUKvgiLNG4nEN
	 8TaM6SNebJi2C9O7SpgL72l0peoBFvhpyt44KdEd/CmqRa/eP2FpnFvxvyC1DnR978
	 E19i/jEBn4+5wVHymnndMmd+vdVRkSfWbNX64EaVGcDopMqr5KlFm+ImOE9s+FgNtn
	 e1DjXadtElIpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E82C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175153379359.10729.8177340717705459852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4ea1d461bee417d69222b96f618664281bdc4ab7b7c165d5f2fdc20ce0615ca
Date: Thu, 03 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751533793
