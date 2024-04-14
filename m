Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C3C23BE
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713059363; cv=none; b=EZmrSW2ZNzWGKnxn7JLOY6RoYsoYKyJR++YBtnjFX1AAzJwunG8dnUJD1nUEYyf5z8q8UiZ8BjvIqOll/rpiorp8NZdcDpoA24prSxI4/3MSamRYErywzdyHPZ78fopVDok1z6LZPTsqQ9TzkvaramqFDdQ4NMVHVdI59Wkf4Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713059363; c=relaxed/simple;
	bh=oTf+ADZti+3trRJPDNZnO5iEr7vcomde2/67RyqHLlM=;
	h=To:Subject:From:Message-Id:Date; b=hWaPvEBN2FDJFDlQIkuDiP7q7fl5ZDnP/2VlLvu1R5MGjf3HEPh/2WmTSvWgEjJ+6zxUOBnbJoSJ89nkSOb0UjTaWdTjm8PPABqYJbBz64//4/nTlHkH47uxipI6L8u0QLTaVKgg1EsRMqC251rtfB+q4d2vtWFKmypkHKkUYX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPHKESfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPHKESfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC529C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713059362;
	bh=oTf+ADZti+3trRJPDNZnO5iEr7vcomde2/67RyqHLlM=;
	h=To:Subject:From:Date:From;
	b=dPHKESfV/bCNLdqbgEQGMaGgE2baZL3XrxHRlozyz39rKcPMhpPa0MvMugmeh8zuG
	 3UNHAwACKTFgxOcgCzkLX+K9AKlorGcA5CAUOgVExJVY+UO5a/1278smwTuT8MkZfK
	 WqSydhTxzKD0h1yne8EBDZqTUyyXOFhNqWi4Bh64rpkFjmoP4jJILPu+373JocBsV6
	 6koR1f4TiCN9e2f5hxvDRHiYxxafQeMsnlw11aj13kvjdcRCDgEh8d54mg4os6Tvx5
	 /xUwAQk62GmvQyEA3pTStrhk3XcTwPYkNdIH++lzF6+su9YRu+kwVfEX4m8XKY53zU
	 aHo7u4E4hYqgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2A0C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 01:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171305936275.23063.16663856216103496917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7595949777a721c3ce9a997c15649144382c6a5e51906c359f3844ce9ed3b6
Date: Sun, 14 Apr 2024 01:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713059362
