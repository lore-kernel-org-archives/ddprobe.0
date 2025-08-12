Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191A92F0661
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755034794; cv=none; b=Ar337Az+0T/3s7T1j9aLQy3GoSLGipTcWUAQJjcJUdV9eDwQKPq35hOvWw3XRbZM1dKUpz0mowOMB2MOfQwLsU8on7lCfXGpjplByDpUpbBie0FYSXJ8Jr5EU6LdLILLZgq7fVqYsdQqyQEAep8z2nzz7STjXpuv79DF3Ng39aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755034794; c=relaxed/simple;
	bh=wUH1t3kIpSRfCnI64hdu/x0G+PIRQuq6c+L3rH97VAE=;
	h=To:Subject:From:Message-Id:Date; b=bMJ9p+9mHRuH1+YM1MdBImIpsIa73uxrnBjX0fL2ddz/us1rOpQjUijGaAc3IKU2EZO1mFt0bEDth0IqShIFffzDzw0Qa0zfDMXOpEhvOjD6CyK8C1VcUa1ojG+mfLA5/SsvwgL56YGgehp0lZjLAi0CfXLPlMlaJPEhJ+bEiHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiccDG0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiccDG0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A044BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755034793;
	bh=wUH1t3kIpSRfCnI64hdu/x0G+PIRQuq6c+L3rH97VAE=;
	h=To:Subject:From:Date:From;
	b=kiccDG0Xu6v2D8W7YRup7h1RuZ37+knG6AFB+wdbhDh9V030CIZ7vIPSH3Zpf+SCz
	 Ar6lltQ9Lnh3Yvg4o3Ynmm8uQDAb2t1auw+JabRmtf6+tFEwrPrlSX80TsoLR8RwfL
	 tqqbF2khg/DK88edfRX2WgF/Ga/aSghKZmp9oZTMVB85Qc9cdmshE0uauYADW7u1WV
	 P4rf8dA4a7hIMBh/Cum/xRBb26hAeB6XoqaBoCorFladIX3JbhFE4ntkqMzA+HyrCR
	 ZGiAbKyTjnUOvn0Iue3XkTP1Pam8eCt2xqhC+jMjgF8jlkihBtgFL46rfcER4HW8Kc
	 ecBhbkQO7PrXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E880CA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503479357.11302.8136450335416017324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b183c5172b1b56b8349b25dbef547273a7edaf81428a8bdb904ab9c5f8539ed2
Date: Tue, 12 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755034793
