Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355C81A267
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781101534; cv=none; b=fx8hWsc8acQmIM1iFzB17YwvTHqNjLhuMjp50HRPATm/bG7Zu+3buHbLSSpl/rjbTfMmDTuqG3vbcFaSaTUDWVLAtpuQRx2mQ1xHPeV79vDBTgtGwnJIyx1hjyHu6+TGivzXOQnYRdURG1LJj4xsqj2hVLC4Q1vFnAXI3W3HmBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781101534; c=relaxed/simple;
	bh=9+saM5VHCkrWLVa1eQbrC2RtTADxLSSlCSMhQvKiwSQ=;
	h=To:Subject:From:Message-Id:Date; b=jmsHiVe4Ti+HaD36hnRRzCVYRuTu3Yd/MPprR8IE/NRDcUGbn1RMAq74tfqEwUAT9VOGht4RZDdZLHQoMrbldB2WtPyDo6qKqBNmsvWYi8nt7KEXA8o1W5HeoAzlnYZLVcNVXUysEXtT3vW6Ew2CHBMG0TljVJ3yp3e+++86Z4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGrLEkdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGrLEkdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C982EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781101533;
	bh=9+saM5VHCkrWLVa1eQbrC2RtTADxLSSlCSMhQvKiwSQ=;
	h=To:Subject:From:Date:From;
	b=nGrLEkdAkmqkeMMFfcedlABLWa/XLCixhvPuPHndeGquB4wXuIiQ7Y/1fJiovD4R1
	 4v7ekqWM2DKAijAKzdUT1LK+M9S31/AmXXZOoLAtWK8lJ+Ix9dGrf1O0lgprNei8U9
	 Py81eHRzy1PpSmPXAzE7NEF7nGiLUpebAtx028dYNw/1Hf+ARuW2asSbFo/0TZR7rH
	 HqosI+nNyFMTFM7gavh0pY8DY+ky5s3we41E4Ort8bQQmS5zqf1vK6w1QMCpq36h0x
	 qKeM8WacOJyjtbd4RRdjKuNp4wkeJcGgToqh4tDFOQYT0l0VTHq7mCepY1TmcYmSKy
	 zU/Xg4ONgLsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA1ECD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110153369.17341.8073433089674864267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be070698959576f50f59e59c2e10d6b885a216aeba85ed216b413a9e3fcbc48
Date: Wed, 10 Jun 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781101533
