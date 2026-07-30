Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A115F368D62
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785386434; cv=none; b=C1/u4ZTznzfKiVfKOoeXM0BGz1kszIJw2SuDsWRhnERwEuXSMHAvlm5XrfJgC78Q5DrK8+d0CgDeXqGPKcF6LSZYWYb5YjtYRdRC5fJuXkHHkOSJ9pdTnBdC2hDmQRH5YO34araIpS7j7IcJgqE4MHTRFlgWU7Zjvw55JmbG6wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785386434; c=relaxed/simple;
	bh=yQj0ISJzCiOx1Bqe1yHhOVkT12VL4+uQmh/Yj1MQRbU=;
	h=To:Subject:From:Message-Id:Date; b=BWygpQ0iSVS5ZRbKwnVU9YxHn/6mBHV0zJ6sygg3NLu6Ru//SYOyUBVnOYykteVZ3qdi/Cr4MZHlfBOICbIuAo97NCIDJWmkOvvQ9RCOwbjYjbznQmMB74jOoGVdpbBsbI6WpRK8/wWTHlv1rmq2GF1iFxOQOc/D1kOdFKS1vn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K33bq+SP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K33bq+SP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B641C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785386434;
	bh=yQj0ISJzCiOx1Bqe1yHhOVkT12VL4+uQmh/Yj1MQRbU=;
	h=To:Subject:From:Date:From;
	b=K33bq+SPE7GsaXgHTsCmNr0Ji+b0Bf7vj4Az7A9Pfb9rCkSmPB/QnMrZR8lW9eP/w
	 ICaDvwGDE9eRHv6u8rCa1NB9xY18k0JorQJJKxhE9Sgvrkd119eURwuS2L8KYoL/F7
	 QRWoQ7Q5M7jcpxwuJjB5m4MSWANlwQ8a02Jp9b2KjG4DDE6mf7HaIA+Ro7UJuG3bY3
	 hwAU9fQv0CTeF9cj5UrYUPLBSEbLkV1PZ2LirpzMqV9+QstWYgrKxwj85eOOct/Xm4
	 tI2slvbAGQFp7zg4i647OHG1i9obGBV+/Ma5ZkN222LLDJMPUT08zta9yr4rhpYo4w
	 6E5Vc/i0Tde0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7018C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538643390.32500.4568071556430062380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42406e5b9409f46fe62ff6b13ac6765f70f71aa83f6475681e8c73941b5f5ced
Date: Thu, 30 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785386433
