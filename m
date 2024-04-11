Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD46665BD1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712835496; cv=none; b=ND4ARqJwkDVDt8g+EVNxiChoD8C2+m1naaTOTeVya2FxmT+RF2veiALobMlffTuqPYRiHe2glThknGWs9fXGXKznzGXRd2ROpq6kDrylOrReDeXIj5fZGpXZyg6mK37KoL3p11G4oj42cvUR2kOGG8QR5w8trwPYVC0oqqxiIkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712835496; c=relaxed/simple;
	bh=ZN7CiDB/Ud50omrWweU79J/6swNIWJYAtzF2o1llLPM=;
	h=To:Subject:From:Message-Id:Date; b=H6SA8CuFpQji0gzwpY6Gx1m2u5fJzZ4kQXwSOhkjKoIsh6R4jzZowXo4eIZTtaht7GM3glvqnQ0j5KOhvG35SnOmXQO7tYw2mgfuf60tqJQgUNJAeIhDonG+Df4j6BIUuLI1MalpyywxHmttfvnC1ThLkjkIRr0QMaD1++vQQbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqVlYayo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqVlYayo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF19C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712835496;
	bh=ZN7CiDB/Ud50omrWweU79J/6swNIWJYAtzF2o1llLPM=;
	h=To:Subject:From:Date:From;
	b=oqVlYayocMGJ9zgitFdYRmLjK0I7LRiCHp3Zl+5QQRfhDCb5pWGPsXEDUDSfmuycP
	 jaNjY0gxhlYXKe3+rJ5PXB6NGq3H1uZE+VwRbXHs6tvRZLxPJTNMxYTtILtGflJou6
	 h4JNZ9WMB6j5H3zcFKe65V+6ti7Q8fI65JV/jWlnU9APhJjkzd+WaMGWnQjHBRHgPv
	 zJ9qO5RUTHk0n866TkFwEygzFEzpvf5mCQGNuR8XdRXsJBuhMovvmZ8w2IHXGRwH4b
	 dDQcoOFN5NgIRgVnMhqrXrIG+Y93UUYaYVa+gmI/uwACWapI5vdhsA3G+jNzS985HY
	 KUJMjQqLRtpAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626FDCD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171283549637.1376.7845008107693620665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59ca4285399dbd89c9f46995b1339bfcc670cd545c0e294138de11e850f548c
Date: Thu, 11 Apr 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712835496
