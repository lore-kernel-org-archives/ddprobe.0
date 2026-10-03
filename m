Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F1B2DB78B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791059434; cv=none; b=jaWGzg4S3luu43nG3tOXtryRRxPVtjBoTepu6NhZU9MdYtmEVBnBi1UrLb+i/8dzmpLT+DgfRrW/9hst/KPRZxJ1HuwJigNzLxzS92mGqITNC9vubahl1rWLLrEXxOsJRj3xlGnyxjKDNf0Yz6w1m/tjWMlbAB+8XXzWqg1jMYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791059434; c=relaxed/simple;
	bh=e1qzfoTBtKByd5a9LlQuh/3LuxAlXKLMxxkqFR+OIZc=;
	h=To:Subject:From:Message-Id:Date; b=WFzV3GOJscYRkNToFUlZEdMSTBDiw/AVeX7suX4QGDvKracYeoZH6MN5I2FLrzZJtaz4durJ0zDt1rvUekEKjP1+GOQbUKlgsIWlFK8aJg7l2Qz/9DI0vyGhPALVlVohRjGxjPpLSHfPacIuilvCatiMBtpP64R3v1MecqSsLm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuHxYz7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuHxYz7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8937C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791059433;
	bh=e1qzfoTBtKByd5a9LlQuh/3LuxAlXKLMxxkqFR+OIZc=;
	h=To:Subject:From:Date:From;
	b=tuHxYz7uKNVxcNRkhmWqbwKZv3wws6aY/TNL+UvkbcU2jMDlYE/x2x+gsXDs2L8JS
	 DqUOpYQ6dYSzxfU9uiIDFvy1IxHNKvSHOk6EeShthIfZoLH29+4DiDpDFfb7UsRPIJ
	 nzBCCXs4pkHhbepJ9vBuEB2L7gYLR5AA7VN/xM/IRwCwSBSp3LrztTJUT1VrMGxqu/
	 MnR9FHh/U/fPxiSwDA0vuNCbo/I8lAOLrd4hNTo8nXuHQR5vC/bLcE6Axk523wk9E8
	 gQgU4MGg5XRUHzzEfG2gjp80CCPdU2gEzMqaRyOej/gE0hNBdqo5hEO4CR6J1J+7dS
	 JWM1UP4cIQB4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3426CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105943369.29741.12713943751119933840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6aa8ae8fce42b5f89235f9f42e6b7b67a059fdc80d5d8268648dce4729c774
Date: Sat, 03 Oct 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791059433
