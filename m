Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487421392
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736732154; cv=none; b=TeG6i4KOfAoYO/HxsoaRBlo/w+XBpGaMctYP746dbQ3TVBdj/eBpL9sikSIMeu4bXx8BMyHUnlOGBziZZGgsD+JHpUQvR+Dw4lKSBKGVS/zRA2zLFbaOm+jkiwZKC5ug+RLdHRzRAwiHC9yrCaayVETEwzJCpKMK4j1mKfZrhCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736732154; c=relaxed/simple;
	bh=iECWzZMwzJAjt+rjujYrwWEdCPjtwVAOSwD59JIhstk=;
	h=To:Subject:From:Message-Id:Date; b=ujAdiDNGJdLGwHp7dB3lXL1+LjRsuBzaKKnLtOs5FNosclOZACQMaYGm+YkP4ZHHT+sybm24G9aPnIn88Qd3YBZecMGLEBFVNFyN7S3KjuskhVVumdmw7xcOnSxBoSH5h0UV18cucOkpl5E2sg5vVyTGatZEROzymTkPzS0WE3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a8smwwYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8smwwYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A874CC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736732153;
	bh=iECWzZMwzJAjt+rjujYrwWEdCPjtwVAOSwD59JIhstk=;
	h=To:Subject:From:Date:From;
	b=a8smwwYPV6l6nc0Cdl020Pmg0CefoRsKwKddYxGQPkfvRBqvZrZS13bmn6QeOCsjp
	 IqeVbDlSOGxtlwQFuHtypvM2sXFZ4UYIeTCjVreOZ7aE4kTOB3L7get8/B+M9G8Eq8
	 KQi1x0Zka3ktnaXygBBcQLQvDnM6kYUuwnZMaDNvPT2ty9UCOhA4yFFFdnC0xjiubA
	 RimhjxMit9/cEDZhG9GYWUiqlJC5zfu3PY9EBsPEUBDT/0rF5NsiVfci4NywiSj1NQ
	 NhV0NDmqeKk2QN5mbvdnwrHF1tgiVFW+J5r7uoCGU6LmSOfFK9NRJzeZ7e5U9pB2Ek
	 fUkVZaVYM431Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94635E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673215357.30626.17720178746037548836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df7479d9c3d61f3de5013847824816cc3b6c2decde11d0dbfa5db3c3ba80c0f
Date: Mon, 13 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736732153
