Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21963A921
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756597794; cv=none; b=mPFrUHIZ2EydGSUFHu7Q59uEjmhGuyfr7zIp9lGOJrayY3MOOmxYVNqr8Pe+qSGnjHxqW+YjuNC/JHUWwvBFbhn6TOPmUC5VH7mIw0X9gMwS31ogXRqJ/DIY4EAeRiIbAzKRJtzZIGEH4DmBp0r93R2gg+dZNjY9KsTuv12Bp/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756597794; c=relaxed/simple;
	bh=npFT/3kG9HRWRaHo9Kxo8oV8yjWEXjyZ346/bWgeoO8=;
	h=To:Subject:From:Message-Id:Date; b=DxGHjh0PlqDaiS4cN2WBsSK+/MlgZSV8K17ve5AC3yAqNoUo4aFEWzQ8FocHlZL/g4Vya1+lNMQBKf7NHHxMlfHsa09DcQUglSnCYVAqpM0ke8j+HDW/OZ7vUpwXRg4GJzllVAYi2K1fhtXa5QY5eo4qKVB2guigM3v4Rmt7B7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrT6lb0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrT6lb0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA623C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756597793;
	bh=npFT/3kG9HRWRaHo9Kxo8oV8yjWEXjyZ346/bWgeoO8=;
	h=To:Subject:From:Date:From;
	b=IrT6lb0WdKwI8Zr0XlDsin6pAfoukYm9FlVsAQJGzZBUzX/Pv3y0TjeQD1FkaIS/+
	 zYJ1tbhRt5TU9Qq1/YE7Z6P2EAsln5uktY1j+4ncOF/MlC1Eigga8G5jk64d/RBdxX
	 amp83A4uAMq9T2Wk5H00UvFd/gGgZg4Rm6IbCBVk9HlHnqndSVSZTCSTOsuhOtiM0+
	 lCzayDhePo8LwKnfUZsSDNsK56CyhN1u1KCJ5F/qBf1RGViVSUKBsZYpAYK61KH9lq
	 RuGailHc2Dg5WDAdTcdCLCNsF7FW4MZj/F1ej3kDU9OUvVoXaEwCKfEqIWlRRLgc1D
	 FmmCXSdV4sCIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EAACA0FFE
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659779357.6731.6406465057289894129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa2eed8e040d7c56c7daf0a79b6fddab5a8f2cac9256f46ed3bcab459e2e1a2
Date: Sat, 30 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756597793
