Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB5F31A045
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782236794; cv=none; b=lmoCgsi8IJ5AyHKrN/Xb6fVBQwhNhTpREdhYZU4OFc5s2i0wQZ5v1dnvoB+fYZwxrM9fAxJOblChZ5LI8qOFopcLTxqvCqpYnqXYsYL+IHmOwFb4yMmiP/EikHTKD8lbfr/pO+7TWumgDdso0MGllbLr7Oa22gS4pPPueZ7aEAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782236794; c=relaxed/simple;
	bh=a1uS3tSWTCVIRxj84rjqRXhWNbCpZtNEDXoGIClcgRo=;
	h=To:Subject:From:Message-Id:Date; b=UPmuB4nNESh12013z2F6R0R7LfEhO5F4LcbT1OZ6bY1sCH6NHZj3lyEVSSaGdaeOuzyHMfhDYg94IYbKv3i/v7L8jBRX5eXSMyd+Wk58wLWIR97jFsQwMud8YRTPHpT+CPkh1rCcEGGi9/XkIcXGURvDfcoTsGExf/7dkVZOAoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugZHEITA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugZHEITA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC82FC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782236793;
	bh=a1uS3tSWTCVIRxj84rjqRXhWNbCpZtNEDXoGIClcgRo=;
	h=To:Subject:From:Date:From;
	b=ugZHEITADSGRMjMNUwvx4mpDcktyyezSOvIGrQrjtn0X8Qb7elhd6jSZ6ihUchAzp
	 FjtGTvWE4wN6T6W/bOCydIXk94PCzxLPeLpuE/WPkJicP6uXAo6R5WdEqK3nwOKa47
	 8xv+4lpCasT9StsnyEU7RIBrCoWHHphcNwWlcGueakcLLWnQhixWgEn5JzQKkS+hYs
	 9+PMZSrsek/1xEV2FYevnwyrO86r+EuvdA8gCTDGml0dKeYjKKl6I+hPHAustVlUNP
	 VimmFg67AqAVye0trnRgKb6B1/VYwWuSJ6yHqsXNy7uBWbSoPdHMrkdF9c0xWZmAuV
	 1S5jkYWd6b2Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0516CDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223679371.19610.9931045140033580849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d5e2e5a7d187412fa8c2e237950970b89f662fb98cb7416ded958c0ec119f7
Date: Tue, 23 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782236793
