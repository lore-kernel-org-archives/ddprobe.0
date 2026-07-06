Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4481A173
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783334314; cv=none; b=I3M9AWvsCmcjy/Ri+nN+1JR89QpyK2BHwfpX9x3LX+vHCzWncoXLLhdzakf6U4Tb1AO3ghPbPnY/jyOxnQnb1BC4SjNKVHHmHDl8sdR6vLD5kk4tDfFKe+e/e58K9oe91jeOVly1zteRLtTqPnsDdvIVPYwQhEvthwdBXZ6/lts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783334314; c=relaxed/simple;
	bh=DqGF/3hpNau1Lcu6pEANy4MRMYUCxEYaPTzMqf3vUQM=;
	h=To:Subject:From:Message-Id:Date; b=NIb46rV/OgAadLnhDAVUsduUFTO9V619h4xbhsCzUvC4Hr7L2Sm99C33bSioDZzoBrf3MiZ5NhYkohtg7mUaFAKsdJ/7/U6JuPYvkXHJBJQhGpk1TWWtdq2o8HD5Z9hLZFefaan7HUDBbHwb4jmjhHB74t+vFM5WA3R4ZkD9kWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TitlondF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TitlondF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC99DC2BCC9
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783334313;
	bh=DqGF/3hpNau1Lcu6pEANy4MRMYUCxEYaPTzMqf3vUQM=;
	h=To:Subject:From:Date:From;
	b=TitlondF1p/SDY+wkblmIXOuMcLQ6BdpwJHre79unlNJRXUSCYnx0k47qSk4AJzzm
	 oeqJI+pv0AT0unofGTc2OnNn/oKiCVLRA/olGEPCEGmToa9QNpJNW06G91U+TgFrRh
	 XtmkyLj2IhiqjE2z5D81ZRsB8EdGMbxOUP7GEuQTar7w9obaa1EJoEsJl5nU/FKD97
	 zGOfdiTULnnek0ZVA6uLiiKtXWrj0jJQYBXS8ozSiXduvjbYCAk0qHolKh/f1GMOVj
	 nUVyiet/w6GmCewo0iDQiKTpvXIWOpKg3nbaWmt2uHOwWKvsQS3YvgGl+6fyBnjwHD
	 7ZXsErO0MFG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A6C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 10:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333431368.10201.8356713419605615918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e5e3a5a30b754ada641bab0460dac6193edd34a5944ba789a065560cb8f54c
Date: Mon, 06 Jul 2026 10:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783334313
