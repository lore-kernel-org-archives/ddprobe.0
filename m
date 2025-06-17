Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124172BF01B
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750122594; cv=none; b=jAKxak8TazSd8aoK00HBstvlVmGh3kCQ2Lq6e472gXnt3Poc5z1/3jzP4j4m9IaBhZEr3L+G8D50PbRTN29oZt6k54dRF0Hl0iZ1hskUi4IowicpbpmfhScqY1TDQkE+oV3Q5Iw2sprWUdOVJe1BhZQUxT54wA+zlc1DjdqdbCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750122594; c=relaxed/simple;
	bh=RqFNLOBiiKNoBTlJ9nTONgU32J6bsIZRrKsBCAiEuEo=;
	h=To:Subject:From:Message-Id:Date; b=SpigOl1iUr94+ivcyZ8elAlzYqLI30z4ophQDkJxhdqUTZRPNEkA5EXEqDqnQwtAhLxut2xIXwlJiehYbSF9sToWBe0zWX13onBJL2CMs+Hw9q4fQJlN0EY7b9uz3x1Phys1VeqCoXvojQ/jnHCK+/NRgy185Fx0eOV9G32/mf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTWSHg7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTWSHg7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B48C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750122593;
	bh=RqFNLOBiiKNoBTlJ9nTONgU32J6bsIZRrKsBCAiEuEo=;
	h=To:Subject:From:Date:From;
	b=nTWSHg7+ix7eoMgeC58ceyR0eWkzNREJMr/UVnQOZLrjLw+UYhhFPwkTPHtKwjm5u
	 ip8dpZRUgJMdaaiQjVzynEhAt8a4u+OKIm/P98/3QjOdpuiJqyBUg8pJwoqQMPyna+
	 Qhh0K9DSU9TX1cN0/Oj9krq4j5xh8vfdoHGW/5gXW5UcpuNOku1YULEJSkpdJIdt/4
	 owPoVERbui/674KCxWrzMBKDLeiIZtWAIoPXVKbwrjKuZDb/lQmVRw3byEzA/S54Zl
	 ZWQeMZUhAknZXXE/BRIjX9T/CEeo+wOCKRbo5FE9KizPGLY6pjaKE9ij5KActmYGXK
	 MVhdy4wK3WR5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B72C71159
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012259357.18988.12672435941363528507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e806ea50c9ac617e2167f36833d6fac27e70089e9ecda541ffb883664e0253
Date: Tue, 17 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750122593
