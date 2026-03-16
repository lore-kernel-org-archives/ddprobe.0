Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DBC1E511
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773671694; cv=none; b=QZ+Mi+vCdp0SCQFS2o6eNbWtnlnA+S3JTxU1/0eEPiFHiMsPfaev7KSo511Hi9Uqqg6mVG7LjP+fTb0X/QGbrg4zr3tdNk42SioPmiuZdYkbxowq0aCXEsxI3egUpxNuywZBIIpeHqOTIg+VboAvfvGwWmnA1PRkfjCtImJ6pWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773671694; c=relaxed/simple;
	bh=LIZNh4hNpwECRjh+GAI5Mo3Q1irSA0nTl1gKl/PdvQU=;
	h=To:Subject:From:Message-Id:Date; b=pl4qqBHkB1JW4znefve+z5axz1c0nnxky/JegVsnI7Zc6diTAYAtZ8CuhZzE6fLnqlfZ3VwHYaiCOlrlGuztLvXHwFvWnHofWj0l/rKNbqY3WCkUiKAgyUPrd+wvDVU8gljx6RFnrbEuWqggqpFYhoKJBsZla3UR4CrLralUwCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3DGoJF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3DGoJF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A819CC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773671693;
	bh=LIZNh4hNpwECRjh+GAI5Mo3Q1irSA0nTl1gKl/PdvQU=;
	h=To:Subject:From:Date:From;
	b=T3DGoJF7OyUywUrly/uv09Qh5C/yP8uvD/J6PEnnbzUt5peXORXd2PkNtE0s82Pkm
	 x+LTVQubntjn+U3rKAzCCk1FKYNWM5gXyxK3NnKKobq3KY3SupDMhCrunR4hVmUGFE
	 CrBPensINO/nI6B1PlIAEWXBlbDVSHiqMhUx7YKIa4xgv4+Vy1iSHtVAPMTVb+4bg4
	 5EvLyRx7EY1QCJLuLMB5fvD9qkQDWH0wy9E2EaYs7Rx3w6iEcEBKP+OlUkgkscXSLk
	 SzypSkDQ/07EXtMaujohleAlC86yT/ZnVR2ZPf2MdQBS+yM+0Rdakg4KRHI8gdZKWC
	 cIksTZgenIi/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B2F506DA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367169360.5107.11977316286331400482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a08902225c8cc614c8c9db0af122392ffeccc4618475502dde7b35402c5d27
Date: Mon, 16 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773671693
