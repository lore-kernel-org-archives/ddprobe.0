Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AB83433E86
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783309714; cv=none; b=CSajGWYuCaGn7yAbTUE+0a8OgxtZXKvGXHhN8LBOAMXh4gNCr2ILbKjpYT13fYrZOpvmj2E3IeOR7uJc8bOmJfIJcgRtH1dZXTe2jkZGvCkdVCOjJvbKgdaJOBrilduZQFY8rqGVnzLKGydSmfz1b7Xeyoq7+JOHb3xpUKVdXQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783309714; c=relaxed/simple;
	bh=ijapWJxj8DzyS7si98cM7HFiMy/GLHZTnoE+K7/IL34=;
	h=To:Subject:From:Message-Id:Date; b=DVe/3e1UKavmygYtl7Jld/diwDKCM2HqHeptmubBRDzYi/mI69TknlfSoi9bjvKk2cUWvuDf5FeNmfG4KIytQY5V/PI2k11WixHpytIxvKEzS+U+yDKOWh0fVwvwdfy1gT5WEvLh8UvxX/l6OWBSlTtpLEdABiSC1VYXM0UxyxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2xd6XLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2xd6XLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0237C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783309713;
	bh=ijapWJxj8DzyS7si98cM7HFiMy/GLHZTnoE+K7/IL34=;
	h=To:Subject:From:Date:From;
	b=e2xd6XLPocOV6Q0/pkGmts1JpssjYfbPsucdl12xwwUj8RYm9pyLdsl4VrX184mN5
	 c89VwlJkqh6Zqiacn7nfg+gc7vXSuFetBocqWLNOAqXxRgPduIgwaHyWC3T2FPAUKA
	 2cgzyQwPL59KTreRTYfNNSYUqEZ8dd3TUjpj2bBqrwgLhlB1hcX5y43iH+cjtKbsy4
	 CZvf8mgKeBv2wuTS3SvdE1BCab7G5+icK5UmF5SG7iSaBzdgmECwevEpzLv9LNc3sg
	 FrYc4oNbvFxuSN2LpJa5V/qimfIgJkafZ2WI8K2U8V0sDJFVZU0UeuvikGZ9safoTb
	 dK/JZTyIMkhRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF33C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178330971368.25212.15591343251438895729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2c88b5977d3d99e94b430dc09b474a361a5a371f6cba2a34aa9c1aff77f8c0
Date: Mon, 06 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783309713
