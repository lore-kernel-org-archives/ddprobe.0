Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC2B7462
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749889194; cv=none; b=TDRqQOP6QRVZToWPLzB/4OHgCf9qXbjFI9+q0mXGz9JQ7pWsrgsSKixkg5G45PZ+lib7vSWcOqTfZM5Bc0mL6kamxJX8oavz9WEBpqfoXVETy//T3vjMRkByKKK2k9gigW/Q+Zlhu6Fek89tl0Bl70wLi/W2zw9vDmgl+SxoNjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749889194; c=relaxed/simple;
	bh=KEhRqn2FYSIS2UGektr8nSx1krKwk291geX1BeyHpRU=;
	h=To:Subject:From:Message-Id:Date; b=TN4C88lTUWftk8nSl4Ff9fmwLrXlLy4CIuzQY/Ivj8K2WFm7ojO8YBpoDvph5uYIXlrT9hzefj9to0ab9WHYECtdSFEA27JbEYdCrGgl6rA2AQKQdoxlATVcrUv0ohK+vVsaaOXYXEhf4Fhm59VPOCqKsCD7aTf9ace3o20pFVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOd50v1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOd50v1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10EFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749889193;
	bh=KEhRqn2FYSIS2UGektr8nSx1krKwk291geX1BeyHpRU=;
	h=To:Subject:From:Date:From;
	b=SOd50v1k+bW0mybLmdxcqR7GbCa/waFfp6zsZCmaguWRbYS6lNsA+qFjVZ82A9rK8
	 W4a21TVr+Y9cq16lyzhA+JoZ9EsAQEnDe+sOw0HzBvpk2AGr/bPD+e9rUk50IFWzSE
	 borzTu4G0v0P1eWle5E58L5CT6u2XZydH7Jey7No+J0Rc55jM3Kn/esdlLQnmjhrvJ
	 LEgMNQrEja2UFCAIB2f3wylm7uGvEAAcLLOJxr2o5G0zJV+fMZKP+d89shZeurQRJq
	 7DA1qIqdOHR1uTx5EuJhS+jyaXT3ktz9pX89hB7RRO8dBCh5uBl3Ht60AIiLB0d32x
	 1Q2JN6ru49IIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D1C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988919358.26552.3593555827204453454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea51ec1b7d0787acff92ebfa3bb76fcd0c341cc1accffbeaa5ebe014382729ff
Date: Sat, 14 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749889193
