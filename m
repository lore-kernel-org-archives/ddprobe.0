Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2811CA94
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720853423; cv=none; b=SPb987C9eoLtsmZRPYb04zMnL+ji0OgsjnikKeFVmAXQlD2tlvT0ckILyW4WUqjqp4Xud4Agrzl62IkfFFVB2MsD0SBWynvsR/7V3T8iABtmEkR0swQ6cDxP1Zi87Gcn02xhpoXT+QPGtFycNUoCRSS34erPsfYkgo1BXbAJnNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720853423; c=relaxed/simple;
	bh=Mk41KlE1T+JY1nXJ216eVqttkOsUgk8oG8MIBoRDXRs=;
	h=To:Subject:From:Message-Id:Date; b=inQsp7BtgQ19k6dPe1enn481ufHH2fyK8XHMe+zuDwosYyk6C0gI+eRrBmUOwYRD8lbeXs9EuY//o2e8QjLmJMqenT2ZyroKUTpMa2sXH+4iFluP84A9gSTMMACcFPwms9KBI8Kp1HTZ95RVWLiYD1wGlIiG3TsIJ+NILlsKmFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMZ06MlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMZ06MlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0295C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720853422;
	bh=Mk41KlE1T+JY1nXJ216eVqttkOsUgk8oG8MIBoRDXRs=;
	h=To:Subject:From:Date:From;
	b=rMZ06MlXWi2DhV9rbZpRVpfLejoBWDzJpN6SjjIxlCs7yEfoqR/QonZkfk1BuZw9j
	 kpJoM71D0AR7LrpXxHrqrFJUNKZpKLX7rzOtij5luCn1V3qsnTXw6NhtHmEeT6r463
	 nd06/wfAB/iTjmyHNTPq521g5kTAQ7YbbV2KjgHwgjrVHg7SoAeYy696oyO+5vu6ro
	 z9N0R5JeW7A0naxcrRo5NtM/rItSekHylFQum7a6EwVXbXa9iC48bJT78bO6nm8FH9
	 3q8FVhVLFWzDXILG2gzA2mloZMpVB5Kgaq3WA/Sn+JUfB1coRAW+qXICpOnneJxsed
	 zxKRACvQexsTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA101C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 06:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085342281.2510.16063263971206846275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0688d190dcffc57b1cec31a7ea0db93ade858c85c264bf977014f7e4b3930cb6
Date: Sat, 13 Jul 2024 06:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720853422
