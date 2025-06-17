Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AA815539A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750134594; cv=none; b=DqG0MIC6BvhQbYMoD0p6WLhG/4C1wX40f3uJSt1XtFWkIWWR2Cw0rH3+S20yWvu76a4URQegMWwISI5yco5pxYmnF9FBoTWdAsFbNVUul7jCpE5mSnDhUm/y3zUGoc0VxbEDUHp2DpEGoMol59Q6AmdUlmBRQ/CMRvuTYqF6i44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750134594; c=relaxed/simple;
	bh=rqV2Kn6BItdmbn+ACLB5P3YXyfsbGnVV11Mpv0lDi9A=;
	h=To:Subject:From:Message-Id:Date; b=YGde1zHqqqLP80+T4QVtQx01DbGJH92JNhsc9UJQt4EUOf8o/1mCEdMWcr6a4iDROTPbiBI+hxpv44e1ElQujBUTFP7o37rFDyXEqAvNLnvLMrrhVPfZJA2ZHpWi1lPbZxBpIiUCeCq6tXBRrQrSm5A338y+B9f4uxH4sZ3TLew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQChwVCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQChwVCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750134593;
	bh=rqV2Kn6BItdmbn+ACLB5P3YXyfsbGnVV11Mpv0lDi9A=;
	h=To:Subject:From:Date:From;
	b=CQChwVCnsm9GRgCrb5gtANfRrPyBHqpevX4wdXABv+PQBXq0MnCNHj5Cngd0KjmDk
	 Wj0vJZN56RYim1mbJHhOm88nxdB9RSi0hpuk5be3xgoWW5SpX7vb+TT6O4Ai6YFqD+
	 shktVqG84bbol/ilpgGDqwTKinzqYSm2XYfxScW1eKlxNwjVfXvxDBWAi5v+6Q6qM8
	 8cuTp5Vw5N8gCtpXYHfpeopJC/6WwNRXydPgNVyct7UXEHODMEGMtKysjGBUK9/MN/
	 B1KhNLK3sHMk/Vu71T7CtDsK/OZoKxpZ0zW/cFLBVM6x/F22W5RoBocRmNxTwYjs9N
	 +4lnPGi/bDQJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE43C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013459358.15652.5288459694518862892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45d956e69ad56ff13fb07f746aa0eda668c4f4f314fc8494945a1e0776ce51e
Date: Tue, 17 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750134593
