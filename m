Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA12211475
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737541554; cv=none; b=ROAl51Sn5AFhdE2YJ+TvzPON+qBb3NKqDjHFxR1ogMcA8z874ZRLXkS+ee1JdWtrvfF95u7QkI8+iwDmAGLSTeoGGm0GHUEIaDcU055Z00CIt5le50e9i1ONem7GcJ8eDe5yecbYZhBtMvauM7MZh2tcF1+bVh1BbeyVMnK1mbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737541554; c=relaxed/simple;
	bh=D3ove2ezWPrJBjRLLs+Z1F4zRtaqNfZ2IdH9HJ/nvk4=;
	h=To:Subject:From:Message-Id:Date; b=q0jvSzqOvYz79juUhaA9sU8D8avluDcS3iqtOO1iEx3QNYGSJ3SllVZJT47bkBWXotdnLWKyW66eisEcQHGm/XZeuEDaAt3dylQ0HNpd+VPRxkpNh06WdyU7nOTxT4O7n9klhCdmZJsVugULO8DfZ3pfbEhKS72Q/23H9z9aCME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXBs4ncc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXBs4ncc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F4C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737541553;
	bh=D3ove2ezWPrJBjRLLs+Z1F4zRtaqNfZ2IdH9HJ/nvk4=;
	h=To:Subject:From:Date:From;
	b=kXBs4ncc8uGq/AYfJbz5OMLF3M2cs2iIb7bUcYfHM12nQfqGquHvkeGTfgFeLjkjo
	 nKkcvLpmM6hsa2RAm+/8NRJYKyqOb1MFUIAixL8ETOM5MTHUGhha29WM57PNMAr9mZ
	 Cg6Xqwr2Wt2gGY+piVxzzm5uhF/mCr7p81mk8ft1N95TYGGA60JccTllIPL0pnrRIq
	 buLsWtEy6bSS+SO/HhMj1ZMPOq7wfLxrBN3RO8lqkFafp/Oe7S8QGGfKDoORlMgxTu
	 HN3+Z6fLAKBbxcgdcVPYfSjvZHi3a3FJXSrhE/S4nHrOIL0sO+NEXgKLPSWu6HoczW
	 DAA9wUM4MisOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CD1C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754155358.377.13736200832556366810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d100597eb81f826fabc9abe779dfec3569ecf57d428f52c77571297b974272
Date: Wed, 22 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737541553
