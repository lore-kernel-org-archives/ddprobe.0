Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AA41D5150
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757167795; cv=none; b=MSi8tNxFK8CHK+JSYFHTDzww7wDzClKoz9QFQMyBTSOk9fZeaQFDQJlGQTkvBgQh3GFORKgJvm+GXhE/sY5S5jOq/hSzKWRTT+j25frYFzP1G4lwWTELX5ppbxagsu1jPxkDHgYm2pZnYQQxbUnEi+IWHmXzENC2Qfv+VfkZCrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757167795; c=relaxed/simple;
	bh=HoqUwdV7YSuqdV+L2w+TgkT3bZH/C8C34HsA0vdCeDs=;
	h=To:Subject:From:Message-Id:Date; b=JgdgQPeyPMAoDpdPomJsLR8CvfBFPF9fQxClsH2LfNy4RDqwFSdc4p4xdIMDygBH0WUbzVwi52UIifOBN3s1ih0HzoQNd0sz8oRGV+cdVNom/uaVlCacPEivMYV4zOmGWcKb9sLCX4qCYAuVxaaVshPCioe7gzYlH4CAVpvzCKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZm2Kyzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZm2Kyzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A3CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757167793;
	bh=HoqUwdV7YSuqdV+L2w+TgkT3bZH/C8C34HsA0vdCeDs=;
	h=To:Subject:From:Date:From;
	b=sZm2Kyzv8+gGmemXz27B5FURcvg80swF27jJNemyG4evbxijnVwkiHLsnsxWP2kcl
	 qdqS5IngMkBtm6OYuH8SID8CDfeNRv+j5WaMO0a/HzHQ/taW7HCUh1PffNuVkj1XS0
	 foOmkk1JHHE2s68T5PjUyW5GBktlNl4ya56R9WyOHK6vhjVZXF776zSdqRjMCKFHlq
	 jsHpKlESYXG+2cxKet8Xn/0Dcu/hqzfAjOcgD98BXRIhT4QR67XViZO0E1/j3X40HY
	 mAn3tP22SfAJYXSJyFvrsUhQl47TapLOr76RpRc0RzC8yp4+NQ1Ilw3VRkxxv/vQAK
	 SVmkDSaTgVlrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1DCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716779357.8805.11513894461223500494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d130821d76b635e0a18d544d7938c6c90cedfd6d2ec39c019f759dda6c3a3149
Date: Sat, 06 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757167793
