Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F21F383C7B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780497874; cv=none; b=jjfayBG0fQzwgS9tc9CBk5A28yfX1qUE7LRNVBrzBHnuu+IT8DDf5SdXAaicjnEC89wVjGxRIIPUC8YzU+it+m6urer8aqHDdTvbpV8sZ5Ui2+cdM6ywwrGBAG12lS6vPSd/N3uiq/eR+X97dIIHcNFmy4XieZC5CTTAdIlqbqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780497874; c=relaxed/simple;
	bh=bJU4g2NLOX46+5GdfLWl4m3VFYIk0qZAu0x90EGb410=;
	h=To:Subject:From:Message-Id:Date; b=GzpGtizdAzP0ECe/FlSsDjPpk2wzajv0IyV0ajY8YT9K4M64xWyOqSD/2+71gsqWVG2NkcbFg8doH+dtn8ZyXF8ZLkt4nQmBCJq1L0Kk60PMqly68is/u+/6/OpA1iZgqEEk4q6o+VLIeH7PCLC0E6zRWJCKugEZcU7nCmnpLx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYyRU7Dl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYyRU7Dl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6D7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780497873;
	bh=bJU4g2NLOX46+5GdfLWl4m3VFYIk0qZAu0x90EGb410=;
	h=To:Subject:From:Date:From;
	b=uYyRU7DljmlBLuufaBEMPxIa5WbI58apD5em/76iqRhUkl+ppA+St4oVQ5mLGUjeu
	 U62EQzvuI68MZwiDlCmCN/n0srJGWrj1uRMBfcI5L39ZVjrDegVQo++dVaC1QdnPjv
	 zNBNHd7KkKxmgQA+/kJbvtDGUb4lE4fD4eBzxgtrVQk3xaYO5N0bOCLrlguHv3tQkG
	 psmqlFNQKqiwxRig0q/9kh36x8o/Sz/DNXKZbV2M5y0ZsuUvRkWPKTQ6iZGtW/6lIW
	 nZaEwdo9oK3golZnyvUKMvG5M8ZDwjkZGtPMuzqQtcwC0EcpCEc7oszJBW9X1g5Zdr
	 dBZ2Y3a5n6jRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD7ACD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049787368.28377.5175017735677713758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69a9eec3f9114909d4a3126d9dee6b0d16377412ae3e8f7efb183451db45df9
Date: Wed, 03 Jun 2026 14:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780497873
