Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419C8148832
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760906394; cv=none; b=Hdx+QGN1SKeg30wkp2iNBasOcRXOQJ32aTfeRH/ciXS7ilRSU7yFwX6vViqz/xS54N98myr33Z77J2cvX/feVwWtww5elHMuK/LIZHZBn5GZiNewVef6RnntgrIbQiktE18f8vTeAzjphwObZ7GaN2F9B0WKCjJJt1cFUg3DmJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760906394; c=relaxed/simple;
	bh=D06s49/EeZ6P0bXZum/HY0KBp0ZF83LN9YVc9CiP9nQ=;
	h=To:Subject:From:Message-Id:Date; b=VmlivwO4lSyslnbokuNWrhlxsOR8LMBEJ4E0T0inMZkc1UUk6qNjX2ZPcDjDINJ7H+ZByZgkfBnwu9NVCdiTh1MCxjo4e5yQ/Pl9f3M9uVNJ7vWmspzaZFkEA6JS98FNnbsguKiWxIKiOOMjMqSN8vZ/oHvBDNJJk1EaI0+/4jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3q9LeDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3q9LeDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760906393;
	bh=D06s49/EeZ6P0bXZum/HY0KBp0ZF83LN9YVc9CiP9nQ=;
	h=To:Subject:From:Date:From;
	b=X3q9LeDI5uWjtu6a9O7h7qfZPD6Kh/ZYaYlmrn56cCrg6y/QD7iwHhIuB/XiRyXv8
	 ugt73ubDT+x/4R2Ty8VszhT9c8ATMQnnoFusUNsis0lacrG4rgUkYHd36O5RG/hw6K
	 m9eC4dqRI4eLgQcH4p7jlQuDK+qh3hPD8Hre8crC4vgNrdo8DoJgZ1BcJsZks3hOE3
	 Ug/Q4Qrcil2zpXpzdF0zzgYIgfe29oY/OJg5AGnyZ0OpaPN8qgDxMUNNyjmyms6wVo
	 y3ROQUJWrd8YrB4iQCrYg0h9P2t1v1n+RglOF+n35dTwxQsOUoIrZhEGF7PGqQq23w
	 7LLDbTSadbqXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134FCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176090639357.22262.10019166168502959583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069bb10f17c0131264dd3a7373371887a4c4c28a7d3eb16df2aafe26554f8bfe
Date: Sun, 19 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760906393
