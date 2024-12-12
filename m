Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2EB13633F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733975754; cv=none; b=OzQSFMYEAYxkx/giZ8JVcopOMyAdhVRNzgmg6Oy9/UUOzPSGddB2atW4KoG2Idd2pIUDtIRO1vNIw5UDPypFG8logpj+70uu1miUMrCyO5Q+0V/zllSLw/e4ATQsfPYzoGgLhH/6bgI7WPSRcjwwizMskGMwIf4kP2dShzWsKCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733975754; c=relaxed/simple;
	bh=uE3y0xAGYyIT2dsajl/SSHGnhCfH+bk5NL30rZM2Q6Y=;
	h=To:Subject:From:Message-Id:Date; b=I/ZK0QkcUAWpHFdz4jDCMqmThnyZRykkcIBuU8hVeQ1Uf1KEbzZAxA2W2y4fp4z87HGkeH52B72HwR7OgrdEE8VpjMa/06PulsmzNTgPZgHgB6mpf6ZsEPYXuhh8NRZRbif4MJrGhHmkEwencKD2lswT+tQ5LX0RlJyQ6+Fex/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7QVKMWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7QVKMWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E03C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733975753;
	bh=uE3y0xAGYyIT2dsajl/SSHGnhCfH+bk5NL30rZM2Q6Y=;
	h=To:Subject:From:Date:From;
	b=I7QVKMWXLkN8kfGeRerOsz1SDhR/zh22mJUmEeQoj49sq5Bjy1SD2a/0SqK9t1v0E
	 CR+ORh05/JQ77Jfifo7OmxbgoT5mSWVDUF250cs+XYdGnDQLEWgKMdKghhFsf/K+/a
	 jZyIlkKjCwayuJDNPyLnHJQwyK8xUpbvaQQPFKo+SnAUVDvvnnFV/0lXDDPdphNBxn
	 L1uJ5UAn7SgTu3sdCw4gtAOgEAXbRO05qtUPTrnY7qsivmAARx9dhpNt8cHPheZRyQ
	 z8ThlqnsvXIpv1J+pq32cYceGOhKDbCN1t/Xs79UhNzIWjvi1FJJPP/QC2lF4ziu27
	 pKYwkCDyhCFtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94319E77180
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173397575358.1020.11598521630254238759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d22d072ed142ab64980bb67a3ba80ae6f65036ccb0c12f55559a701c56b6541
Date: Thu, 12 Dec 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733975753
