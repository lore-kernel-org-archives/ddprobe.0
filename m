Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A1E264A88
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749636594; cv=none; b=AWj0lhfrFahj1IuQo8YihfhPAdRX8uzssUvk9YybqcROeN/2YrTyDol68NYUeo+Faqf3i011FHRVAoRCKsY4cl9oCH13+6IIBo34Bo9fQiGahRXaxvNrphWEA76jmDBM3wo70+5iaZzuUjUsBFds55moh/HemX4Q4YT7N0RI7lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749636594; c=relaxed/simple;
	bh=G8ibBiLoefJLY6doPwgNMMLiHomUh2q3u4LsZy7K26g=;
	h=To:Subject:From:Message-Id:Date; b=dtP4iUMwWS/kU3xeetnzWpkVOJTI2C9RPoYGWO/gp83NebTLTqZLyLW1DCLBr/QS6swSQC+CvMdccoHjXlp+P418PL1iARTvTZ9q4e3cmqKiJtsEevMcMNKFnVQLkQZUGVAR3lnprv/3gXMgD0XBJcggjOBR1CVpmTPIV3C72A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMsRQB0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMsRQB0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DD6C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749636593;
	bh=G8ibBiLoefJLY6doPwgNMMLiHomUh2q3u4LsZy7K26g=;
	h=To:Subject:From:Date:From;
	b=jMsRQB0hMFAkcKByDkSdY5e9AeY3sZRob0HmaFHx3g4l6UzA17bu6AxEBFNjkPhjw
	 qYBWBVxeOktwOxwqx98b/3WgNWd3ygz9RF0V4+ngD7M9zcCBQ7SEi37zgLD7gsRa2y
	 Yvh0XAXojbIGhn6WmiHXpUsMievBqj5lqNTOHKA9n2o0zsK0M9oShHL2PoSqzzgwtz
	 gREvEqsbKMPvsbybJ96gxR4D3sjKjFJGB3cAaA9UdNh86fLcOHqsXF35g+O6FPGy8o
	 5bF05sYQd30zU9tAMsnlX/6iHL9WIiGqGhhe9Z2in8Vyw3mjeQ1UuG1ClcWZvKuGyG
	 y5P38qS/zhm1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E45FC677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963659363.1044.10785003040954232427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e7eee14b0ab38efc77523566f12432d4bf234cbf1e5c16b386eab23c2acc91b
Date: Wed, 11 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749636593
