Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02362DF142
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787773836; cv=none; b=XUmLzck8NF7pEdbE49H91ihpRsdEyMPoFmN3oHzq1Ske8jJOmPMxnDhHU9XN79HD48/zD7J8aQYJ5Y6/IuN4IDWhqTeElC5p07IB1LGhrQBno/pvS9gGiebVXMsDbMR2Xar70opGjvWPxGyH/dFGSr9M4HdkdrKD9PrC/OhEh0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787773836; c=relaxed/simple;
	bh=eIVeVnvH0A6aHrlozuVLfhJTsqlyh7lZvB48lTTqo58=;
	h=To:Subject:From:Message-Id:Date; b=ZxGKx1KuzSQr/oklv4XXr/+7JHAujVXsvPr5zNg89K9vfxUt2vc3MOWDJ4hcAyJoRR+QhAe7PGkvNvpsq0QDJqTNHYYYKx6JRaUHeGLIuLMnO1u+ISqohkSkmeGoqr9XXLcJOu75qzqsNJ5FIfY/sWPCCvb87/WFmIE4p+es2Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSY0343O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSY0343O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BD3C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787773833;
	bh=eIVeVnvH0A6aHrlozuVLfhJTsqlyh7lZvB48lTTqo58=;
	h=To:Subject:From:Date:From;
	b=ZSY0343O9yrSTryeMKjZRyf5b2HbYBlnq79l1xagXz9Hl+Mcw3Lrx25fDBRZS13rv
	 2WWTZaDN5UCYBuyGUld+8vK9pUDM9vfaZUEoKyl1bWdUcxjRZIiV4SlaEqV+a2Ohm8
	 xpB8xuiVwyVFkPU/1F4AU16wsmp+znwY6TiZ4rZo8KAfOX5qgZo1NcF2yQ86N4FOzL
	 7aX8krW3aw7C1vn8D3lq050zKwa2tZ3C0LgT3hTryX4DQ7mQmu+4yGS4X+9TxOfmQt
	 Ix215nNCopru99t0k+kDso/buh7hgqy+0Mpt9nBEEbm3mGs9yAv3pQtvN1DeQbT9RI
	 Y9qSfQLD/F6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42CEC61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777383372.27244.10831448326484256445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede9eabb5ec3134faeb0fea6c0d30e3ec46f25a7ad755933001afd1818b2fb15
Date: Wed, 26 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787773833
