Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DB8311950
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761780594; cv=none; b=r0ZcO6RLbO/SZkeGNa61flPk6bvjcekop/vsD4QOkShP/F7/ATXfn9mGcQUJmvTwiVJeJJKlxHGzd7OZlWya9LFeu+mmt7Ij+wWpJcU1qX/jdHYTs6fn/NFsJ4NaKZcRlsCkRb3LkV8WhtiSHN/e0nzq2joSS6nGPRuSkcX4Gaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761780594; c=relaxed/simple;
	bh=XTUlF3cHnlfODVzMRAFt4U3+qRF8QslleWcxCWQWMMs=;
	h=To:Subject:From:Message-Id:Date; b=T66gAlunrU/Otw9Mk8eUFBVzp6IzDWlTiG6dYB6iFONhoBVx9VKjxTrH5YCXNatKvj08EvrEbs1zNEmlfJMLZ93oNDAgPq7Djf88zbQhybDs9Hls++sRySkYHVcwd+H78ZqSCjnibqnvgnZYNdvfo6riUmw9+W3TsoYr4L9w75Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwI9a/TT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwI9a/TT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B512EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761780593;
	bh=XTUlF3cHnlfODVzMRAFt4U3+qRF8QslleWcxCWQWMMs=;
	h=To:Subject:From:Date:From;
	b=JwI9a/TT7TbTm8J3/mI0dFI3vKrg808rjXvG7dYULq+Q67cV1S5/ZFtdWgF3gi3hI
	 BlO6zDpOYPRLBImOpTwuljx6sMtlLRZkP36B7bmOFxp2njwBuByqyFKr9DXq2yjVAx
	 MpvzyorHdVm/FJU6gZiBR9bjURpDfQ3PM71BQyU3oDoOTaTBDS/O04N+6NdIdtaqcH
	 GJvWJAO+HFcMvM84faeejNqGlxDhQZM22hEJNlksi50M9EH/JukGGDIcIOQBeiGyKw
	 BtCCiq8G9bPw9ojcoGEDpTb2LDWQpoAXrP/vz5xgVRWm7mSAgn6ncVTiNQgOgdTlVf
	 pXxtqDevzKawA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3A3CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178059360.30721.2324960872878236782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0767019b492834c9787971c507b977bd67b90342a73ee6e987691429487fc3
Date: Wed, 29 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761780593
