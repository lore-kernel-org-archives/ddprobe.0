Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29941741CF
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720003523; cv=none; b=roSB4bqlFK9jRYuoS0k+OFTFGDsjoVSRuXhQj777ugQzvtpRfzyfT/zDTG07w/qbinYiF1BlDtERpWM7GAs+iOi+W9robtXPu8L5MZo3oOQmV7qRffS7ND4qHPUoFE25wRhZP8dDst4o5uaeETZz7LTXikRLyh3RrLRHms7fZH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720003523; c=relaxed/simple;
	bh=7cMcU0FkhZ5ZeHYhZI0D70NAOubXfn2UzRwbozJ/xpU=;
	h=To:Subject:From:Message-Id:Date; b=Mn/2dKJth9X9OoSW8/j1kJcct6hhXaVo262ccGisEBiQwBnVD8GvKf0JD7/jVEHbXOIcRnOnH3p1hUxK46YFzn52f7/BSrm6Tr75Evl4xfvIMCHOlKmXCdT1yqO1JEVSVRfU+0BGXH9HhQ89oRLxVaCXjRIAhZ/RNMwP0LPJ7ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHFernT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHFernT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D239FC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720003522;
	bh=7cMcU0FkhZ5ZeHYhZI0D70NAOubXfn2UzRwbozJ/xpU=;
	h=To:Subject:From:Date:From;
	b=nHFernT/DK7+R/NhB6RgmftYJsg2vVZj+uXFQy4vFfZ4DVa1ctNsHgxA0sIsrTad0
	 UO10zZUqCCCBdHRhHlsOnkvw34j8dFHvP/AOCOdHRa4cmLWdOUjMmS2q0OBiR3sdow
	 +i3k/oBMcI81AA8TPL5oBVUoweS1HH0BJU2PJp5KZzhtiRBhSxBQGbFFmjvGV4UkAq
	 PoDIgceX3TtLIp9fCK+k3fOnU1LpBhCAzcATjPnd6fbwmfpj5ScMzhjMIExMMHsvas
	 5uyXRX7X1zwXhe8InMWiTprwVuEMi1QgB/ImBrPhZPnp8M9nLJgm3alFB99veNO+2U
	 F4mqq2PhsXUbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17BEC30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 10:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000352278.17437.3611131007018636247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c30c10eb4428ea15abba2441e75b604f83846cc9f35fb314ad6d11152c9382de
Date: Wed, 03 Jul 2024 10:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720003522
