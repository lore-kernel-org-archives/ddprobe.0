Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0571DDA18
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779303634; cv=none; b=amMSiPwyLZls0dmPJwXErFgL3K5a7YlG1Jx4IDOmtAm1T7awgk0xRL1T/RaD/H7IDyiFGm99wDy5gTOO6KZ/qouJWvteOYkZARU/SIQ/KeDyM9x5sQ+SBWGq75wvNiMYJmjdWfCE9yKOaZFq0dGp/N0zYbaerZXj2MfzTzR+BtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779303634; c=relaxed/simple;
	bh=OrjN0W+5hXI/S5e9tto1UhMsm1Qgoy9qPPVHvUpyIUw=;
	h=To:Subject:From:Message-Id:Date; b=X9Q1LksGYRcbe6nadoDH9B+QaV9xwQFKJ1qF/CXQWiXtY90SZF+M+m3MaXpREPraE96qU+H7pkSjkGSazX/RgN4LMi8cgC8tJ2eYSY5lFAjpHKJvOWV4R/JVQwMf3h4IpXgSCmA2hmagZmPm5pKgOXbEfaSvvMpAXAlbv+wrQM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=az0Hu2fS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="az0Hu2fS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCF8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779303633;
	bh=OrjN0W+5hXI/S5e9tto1UhMsm1Qgoy9qPPVHvUpyIUw=;
	h=To:Subject:From:Date:From;
	b=az0Hu2fSXfU5D75azPpZ5IqJPQLXV0aoMz/wLqqRpd925foMoiZg61tsTGrSh4EPA
	 x1zaHdQlPXJXIB6PQar2Gw/rq4tdGRZC1cQ0e2/UDOdYjs3c6Bti1e+C7g1FWIPQUU
	 Ec/HlFVHFSF6ny4vk360J8uEsHPau7b77bu4LvjTOO/2/ffNK3pWSIGJoNHyOXlBEW
	 JtDns9hcCl9msmstKZGvucli6CZoUyZoFgk2/ad2qcdVinmpKABqqnn4ON8kGeithy
	 mWc2jBLHZPVAKcLJWQ9qzFnwbmH+KMPlmqAKKkcs8bB2tViwhwDr/02mrNVcCnENoC
	 RrqICFvOCf3ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD538CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930363369.3641.9912418803705796094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2003a104ecec8f4f3d845a4694fec34cb476d62896be50e8adb1e228a859ab34
Date: Wed, 20 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779303633
