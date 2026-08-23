Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634961A6836
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787515834; cv=none; b=hyLUoXKks5+hIUFv+RzZypTPpeb3MlzwfxiKKpaD67hgoc5ZC8+VUe6v8vfKA3xnmOaQtvTUrdiABdHPEB9kP5pCe564wS8A9aNQBtRB0KpOBi+/JB1btS4EmivtvWFyemKjVZV+htl3WT2tw+nL27b279GyI4kLucvxLMZf408=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787515834; c=relaxed/simple;
	bh=E2y/5tMAWcCbpgI5GQcvGSHChfq5turT2w2GYiuBOJs=;
	h=To:Subject:From:Message-Id:Date; b=COfZjwyDk9yAVGQvUgJG1kuskxEe6KsgViMQgR8G3sRvHEMOtmiMpgSCBdrLkGKGOEBgFqVfvzqQVc9cOx8v3j4gGlqpRzAGxjlSigL8pRw4Kj/DI1x4V1XOgP0rDUwmG8x7WV4fAOkALE+NLJcdsQU72Lai89uDEXgAzViravE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0Q/B7K3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0Q/B7K3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3141C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787515833;
	bh=E2y/5tMAWcCbpgI5GQcvGSHChfq5turT2w2GYiuBOJs=;
	h=To:Subject:From:Date:From;
	b=h0Q/B7K38aImofuvyaxQICT6g25Nr5ighTZqhruY5qj8a1Er629OPTjuYGCdPg8Fn
	 2uLamODNxRXsJji9789EwEz6cYwsv154CDuKZmE8K0CWwWlur7r5JZm/bjrFGo3bsd
	 HHYKpIXMmoHFbkwkPlCQ4i3PTMzOmZGOqrx/iXRn6loVcIfwQuWnyI3nDMolXeCXu0
	 z4iWMnlbPf8BdAWp9hvggJ7HM0BzE5vshKkhPt5Yk6fQuPXGZr1UbV9DzfnFA7wcXZ
	 26HJUdkz/Lg+n2fLrqGSGUUW1AxTSjpjtwZgd1WAGHNAAHjGmDOV4KJiZZ9na8zXAO
	 /+RCrPi0mkJhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD226C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751583368.31680.10060274817808722640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6edf54d3cded3acff3191788d004bf3a2b29848b794eb8eb2a22fd7f85b5263
Date: Sun, 23 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787515833
