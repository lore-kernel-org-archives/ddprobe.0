Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AECD377019
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778653234; cv=none; b=hzXbqZL4F7sjiwm2ZfOhXC9IGydyyNk3owPlYoTzozV0HLwLEpJus7uqjMB1vkJ7x4el5IoWLqcUodr9C9taR3Gd/89pO6Vu3wkZ7wafR3ErLlAiSFvO4a8/rFrT9DaBs4izWcCkuKTtlr66J2r+ArgMiD4kaexYVKK8A8eM97Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778653234; c=relaxed/simple;
	bh=235MDML8a8A9BiAzQrfDPpYrBfvzLleWry0EKwzw+QU=;
	h=To:Subject:From:Message-Id:Date; b=Jq51o653AgELCZP33RYatMon1gAKNBbov5zpEJ0OBf24o7sYjOTIIS5RrcBmLQzIboH1nYs8lSCg3fE42k1LpdGZKQjZM0tyLTUMnXjenth7ftKQvpJU0jZMBMWg5wu/mdrbUBeKZbpAV1OU5lhurgjAcOIn+frQDuZNkVrRpA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rO1CcTCE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rO1CcTCE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0611C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778653233;
	bh=235MDML8a8A9BiAzQrfDPpYrBfvzLleWry0EKwzw+QU=;
	h=To:Subject:From:Date:From;
	b=rO1CcTCELPkRoBTEjjUpdWNM23q1QHkJSsK6T1VuKPV/9kVfti0GiIrvc/3F/z7xk
	 QjEcsVE3OSYKfnmOITNXkjpGtMnxnL09F+UEzEDsqqMrBWyENhN6/mll0TlXkmEy7g
	 joanDbz2qBTdgv4YctI3GLoaRp6PNLNHtoB7GBO4FNFmZHr0jpKP1mucITdmc5/GGL
	 XdRW2uAFCi3TsVTOT8w3lXoV/1lMgE9I2TndoUSerkA03RVvdOU7xCKWkyZeWUaJWe
	 Nvqc1df+VQtYwBmjI+KJ0E/9Ej4AX2aifqwOASAUVqApnaBpjykotmLJhEOCnZ4cqI
	 yDiAoi5rWn36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED9BCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865323370.18241.11887538657322392198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17e01c47f3892653a0d2bb0ae9003afd93bf81d92ee7e6d39a31a63b919d8f4b
Date: Wed, 13 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778653233
