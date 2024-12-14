Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4894F27450
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734156354; cv=none; b=D+nI5sB7G3kbbad9hWSe4to/kkkcQj+0RnultHUYo0ChypDpxgySg1BvFt5WgAnqY2YGmSRGn7AB4UGdETVFQmCQSmZoldKUjWUdWkFZkZ5+N4aj8hhGJNDNEGX4BByyNdT7FXaS3BhRDZmABjauuPCa5JT+bnoa/IPV85PoVZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734156354; c=relaxed/simple;
	bh=hSlV4tCxOmUrOM2VUpUXv/PhJLycOfhzYm+0JJlp51c=;
	h=To:Subject:From:Message-Id:Date; b=sX1XGB+ZTYzhtvUTX2ASXJPASUqedQARQStDtNw/8Ziy9Kz6mcOn85uKXWsTZzugGYVt3UmNQKHqLBiMswc6UkZXVaqhy8898zHCdWTF2kEYXDWTCELron6dqn98wNJ/LA8GKL6AhYahTe5HAxN084ocrotjpwuagGkotLvH11k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCWOAuEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCWOAuEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A11C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734156353;
	bh=hSlV4tCxOmUrOM2VUpUXv/PhJLycOfhzYm+0JJlp51c=;
	h=To:Subject:From:Date:From;
	b=pCWOAuEgz/ISV0jYccebfTFpfZOwZIm5VYnVID0wvDbhXL42cZ8vc7H93aJ6RGRAR
	 +wXk7FDmTUhPjm3YFK2WbtlXvc5+nUDuBgeQ9+AY2hUV/dHW1ivkVifqYbMWw5nuHD
	 5uAuGBOL2y25GhFIdIQCqOw5iUPj5PbG0h/YoIXlHn8/5OOzRRXfu5qb5xPq2lhvWO
	 QDDzaCQMkW8sYW6mAWUzvckbpdC5mqMXT4QAGCUQJZIh2wKr0nQ9H1iyZF7KIKIAkR
	 K/TteA/qD1MdqJ3WlpoZmqwDrVxwS/tHM/OUn4+kjQrNysKeGD5Z31ryE3zhR9q+uw
	 Wmx6Rk9nk/p8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E49AE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173415635362.9687.13867429109408009994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df90708cb7951e1c891767fece515a7a2e535d4c363d0ad7bf3dfa1ad2d116b6
Date: Sat, 14 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734156353
