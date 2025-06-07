Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446D5EC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749256194; cv=none; b=KP5L1gWBT7x+2EKUxx8xU/h1jbXk6Vm4swTQay0xo3D/GgI+igtTuMA2P1MNKf8/watoVTn4E50Q2WKjcMfqZORshH/xS/wX1LD7M5PeHeEkDbmHcA5qZbkelbeDnh9Tdhk8T/Oj/crllWqqMnZmrCEhFOvMxJWc1Pr2FskfePk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749256194; c=relaxed/simple;
	bh=fEf79puubZTg2EtNROrf7mPkY7zPTmgDskLbXqjSoNE=;
	h=To:Subject:From:Message-Id:Date; b=PowU9AwdgZiWIiqLsoD+XmmGSMTnTKNuXpDp75n8xmSn5UgE62wciZ2CoE+Pq7SB010gcSc9pdr+jOfvFY21XhmEH8CgHHYZ6AS09fyUdqfwTZVpgpZfUAj0KmFjTffIWHsVGQ9906XAasnGDPy1uAe62okjVG6Qd1xSN4MZrro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdytQ4P0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdytQ4P0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A570CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749256193;
	bh=fEf79puubZTg2EtNROrf7mPkY7zPTmgDskLbXqjSoNE=;
	h=To:Subject:From:Date:From;
	b=RdytQ4P0/41mdKhKKGJI7Jo1tsgweji5+IvSqnwx0H8WW8LMbgt8JavZJ3x3T2S8W
	 yaUf7flZ+VUdZJfSuF86Tic4PFUfzdFzkIED0q8QNTbTuRI71uQcFJA9Ekg5WhDC66
	 /I3BHGsApGupLtKFLrHuPpU3olwQyeLLy1Ets6r4K9ifPML6cQd9vHj7YFtrW7339L
	 aa5RuLsfkEGvXQ6DVfllRasnLRA/bpZEQ9lPYt/a71IQ+8PQEbj2eAirMm8IeepIA3
	 T+LGF19kMAvgZ1y20NEsVSQF/pIUjNoq2vcvY8h5foXPjhD4UCYDTrLon2xS74/p2c
	 W+z6a49eknBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90243C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925619358.4328.1191295668761409510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6dcc6be210029989db62e21746a1c324f50322fa4e5871674392a9ff12e83d0
Date: Sat, 07 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749256193
