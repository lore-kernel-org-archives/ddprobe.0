Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516CB175A93
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785685834; cv=none; b=A+JseC8I7/ME/LCxSyLrgBLx3rdraV4COyejO8ChF1cFha6G5UAexLaYqJLV3S5YbDz2aL1mPhL/hxijMyvh++thI/I9qdJQtUL9WZjUmeiio+91A9/DYTK1W6VpM6Dtuc2Fbtp+oMHqK6MzwzbdCLiy3fVWFj9GTL3XRwQcdjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785685834; c=relaxed/simple;
	bh=0crwEECSB9cZ+2ViYvXekBn+xUHEDIYglIDxYKLgy2s=;
	h=To:Subject:From:Message-Id:Date; b=cp9yOPuzy8XwIeQae29fUUg5RugBL7RPgYAfNNHfiEBvq/106qRSGDW7Y3h22OxxWMd7vCEG9iV1KoYbn9tM5JvrsPQ8NkNTxxxnT33vNuzHYJ84NfC30UmkMdNDyS5HnAKi7ojDhuQv08KPVUgDlD/k5LheyWSQLnMoqGj1bQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9uOL7J8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9uOL7J8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0CEC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785685833;
	bh=0crwEECSB9cZ+2ViYvXekBn+xUHEDIYglIDxYKLgy2s=;
	h=To:Subject:From:Date:From;
	b=m9uOL7J8VK9zODMmqOJi75HxL2NJ+NQ2l9p200yAUOrhlApWBqWE2bkogcYimz1UR
	 SLG4HlGuK+AZ3VdXHBipLQH0lMzH9hfSDlu7vYoVthXQlgF7zXEDQnWCB3guawprgO
	 cJkddg8VbfGtKPV83Mm8vJlfNbkyswQIWLv9/dMXwP8JniphW9/VDEaky9C0IYptWC
	 Z6Jo9L0Q3buTXlflh9Zpf7zwJCNYYC86UDuw/FiqYrxiyZTg6PG0V4Pk+OaGRaA+Ip
	 YBbtzK11UJrQun2Idosqc2IfQplC8pmJpqOoassu+GyIE3jazACDG6tCfyi7DeOotW
	 wn8OaMhWNYR4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA98DC55175
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568583368.27370.6733759279203862364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6869e3f6e9ec6055a218126b4b3b1c7ae66b9fcba82f8e66de50c1074e61c288
Date: Sun, 02 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785685833
