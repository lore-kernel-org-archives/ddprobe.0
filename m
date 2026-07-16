Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EA43264E0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784230114; cv=none; b=pk9ND9rPsoOURpAA6fIFXeWPo9wrAkhZQktk7m9gKcRUqL1tulemth3LSPyU994QTi8OE5KmLRO37ylqBNEhTNf+IqLA0aN+xCJxCaEXozvFBdNk+DXRVZFs1y7s9NnlTXlJLpMAJwX2pZoee4irf4AtJP3FjlZvCqd3PX3Ht64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784230114; c=relaxed/simple;
	bh=41pScW+a9NBfxy+bjGEf/T4izG2OVv95MWk97o875Bc=;
	h=To:Subject:From:Message-Id:Date; b=O8aHcDPg6w0R+dwYJckb2jrVuRBdGaPbIKlFAPCixkJNZiWHi9DIhZl4CdVNWKQde4vT9jS7NCEPD5o0PZKX5Eiq1UOXjnkfoGJ88mByQyFnIDP1eV4EE8nJpeLZCqcbK83kVLG9uUuCELNzRiCQnfkSIxacrLFpwXJHI1c0xyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvqMc/OO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvqMc/OO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F58C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784230113;
	bh=41pScW+a9NBfxy+bjGEf/T4izG2OVv95MWk97o875Bc=;
	h=To:Subject:From:Date:From;
	b=fvqMc/OOu/bkjcd7ZREY546DkQGIIbou6kcLqLZZ7UmegI9AuZinPbArtN4Kfdy/4
	 dUd+cCd8/K7OAeD2y5ySe4s6/KiEr+l6dJp5MRf9H/WrE5m+rciA9E19QJX43iyl3K
	 wOEa5bFc/5RJbnyKwrFSVZEXVPSHV3nTazu66QcOSlcX7pfkILPyOfJAEytErvGhz1
	 3eo6mGIA9mmFU08jFpcZ1SDJWRPnC/xxl1jwSzKgU/HftoNeq0/zM2bXBY/uetm1Lv
	 CRbmtgQUvAlGDem6xlUdnZMnDIgKrWhEube2T86KUmx4r/0V7jN4zHH1PSofkNzsH9
	 OIYUxH4Lb++7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC71C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423011369.27098.13093896315905066085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591dfdca8407e1b931153757c534241e99794cb4f33073788eb8d0888a00d3b6
Date: Thu, 16 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784230113
