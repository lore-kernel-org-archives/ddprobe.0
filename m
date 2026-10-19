Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F983C1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792369834; cv=none; b=p5ngE0hDQ7CaynEfmeeZLSQVwkxiPnLY6wE6idb/1xtGiSkcackJxH3w9/Dxz0msRqLM/Xvkzw0anDUT9w7QOZs8TC0/O3d2wm3rO/3AVXOg0xZ84iyucanZAufUQ6iaVl5mdMO6M45qSIN/Mq/LzRVjNhnd7/7Q4ZzoilXVqn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792369834; c=relaxed/simple;
	bh=+NbmHkCUkXZ+Y18k6n+CaMYklaaYFEPRHDIxbpyDT1c=;
	h=To:Subject:From:Message-Id:Date; b=AwC95Bnp1pqf1RT0ybC5Lv1KRBGkFwh2e9gqIVCbDs2VPIKJWm5PQN7fuhNLXTZVupXhqdtayEq93GEYqbaR0OGPmh/XMpEYFlCaJdttQKNeCu/YlTdjHM5o2Ka10uR7GFv91NGHT6S2w1mmduyfSJ7/sIGKKFA7pqaCUZrgZRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cliyDm4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cliyDm4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DF9C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792369833;
	bh=+NbmHkCUkXZ+Y18k6n+CaMYklaaYFEPRHDIxbpyDT1c=;
	h=To:Subject:From:Date:From;
	b=cliyDm4zpqhAqU/jPLU3VMFbgbPRtTnM9faKCI5uKP+Tv36dE9QaR9kWTI5awpnga
	 xiZhGPFmCNV+F1XvS+HxZhmflHvG5YfVVzXP2WtY8RGY03h/jcBbzUsYij/1SN1aKK
	 y4tMoJgnmklj70sp4tQkkloDqQT3Di6pYml1Um2EOOiBWKqPy84m03bQFtxk3DRd7Z
	 4nFUc2jTzYH3kHu8CJQMDlVEJzCouCWz1pYb47aFfTV4xjU9/dkBJbJRqqQHlEhMkU
	 JT9Z2KnlRgncKXAgw2vCMr1gTOO4XxuKbw4VIti3BEEAmvgt/15fW1D0YOkJY70ph/
	 P+VftUm5aakiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA30CCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236983368.20556.1205206012783635944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dbb06c7616022d7503213332aba8b2874d328089ef5a9529495ae1613ee2a2f
Date: Mon, 19 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792369833
