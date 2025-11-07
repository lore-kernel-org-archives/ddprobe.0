Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218472EAB6E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762476594; cv=none; b=p3+znvc9ffxf2BoqJcbJJaSwVtO+AG0ILRvqQBAdpeQ2J/DA4ibnRv+xsOFtpjADm6QfDEEpC26si/dne/dFEtZ1xFZxP8bsWNOseBY5J8VMv7hOHZmyUvkogMw6nES63E+JNlk+Y9Do3oMUhnHJ9MpP4KUe/Lw0MpI61ZxBAjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762476594; c=relaxed/simple;
	bh=mgza8+5bhRdkHy/cXsQI46pGf01XAkfKrM4p0tEpFtc=;
	h=To:Subject:From:Message-Id:Date; b=rqKUe2pMlBg3EPaXOLtlKDzZ3yJSSfPDK2ZPB1ZUm2MVPUuSm8TqtFjQ6dGRaD9rRAFp4nhGN+VvV3q3UVtWvhG8LBSidOdE1DHBN4c6Qw3pkLJOaIfcOvowfJR0hdqcvKYltAU5fQgiL7bR2zUKNtTJjlU75yONxbao4Spx1Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsZooyas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsZooyas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A982AC116D0
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762476593;
	bh=mgza8+5bhRdkHy/cXsQI46pGf01XAkfKrM4p0tEpFtc=;
	h=To:Subject:From:Date:From;
	b=rsZooyasobVUUMvUIKRAKMRWcyxQr3TgV9g8xGrg/gCkMopq7olya006nalc8uCby
	 GT3XL6UWntLXDunhXsL/nJk0wtyCBImDADbf6R57XWM5EKLbcnuLc11VRRio928g7B
	 2tYvvdmEJapcndX4cf+vTFbC4wS9nrBzWc563FH3mpylMxl+ccWD4QQid1RW5IWomC
	 cy1PVkZz70BweCtxQLR/KY3IXyw8R2dzQWMQYsdTvMr2MpCDWZqe6WCgTMX+gn6Ok+
	 q5BTE18k3TMveR452c4DqCMc3QvAMisDZfZ1lec1B4+iOQxhwY259yZSTvXiU8lMBx
	 qMedCyrWLHNkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97140CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176247659359.4945.3466302131652403288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81decbc43a9f32373c2c81c565ff691cc5e1e4a9910a69593fcfccb930d8a15
Date: Fri, 07 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762476593
