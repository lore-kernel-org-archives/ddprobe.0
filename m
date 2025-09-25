Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E33F235358
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758839394; cv=none; b=lEyTSS5ONMkQRQpVbCeuSAl/1GJGDcFRUtEndUyy7pstVrNgw1afQpABH6OqThRCc6aC33Wt8VtgF98ffJwmKfKqaYcQJ/HhsB3GrsLp6F/8Xej+GmXZJgquwz9n9S5lG5Yb84Qh+7UlSpJh95BQC3ZQmEIEmf2rwBqqL2Ef3ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758839394; c=relaxed/simple;
	bh=OYF42zROWg143Jq6boTWvSpIcpGOP/GmrwIh8zaFVKU=;
	h=To:Subject:From:Message-Id:Date; b=dBfZzrkaFs3r4E9hCkP3kxiWyMGq7aZLPrl1hlJh2CER0vnyHDQkIc77uCnVGJ1h1A/39TThtaUd4UwtbDgEzrdt8IStuUzC+mrYfQTBzFcwQjIVNAYL3hLIiHVQMtUhpJNCrfAf1LMYX1xLpq4MselC9LD5PjZyeGpLbyhQaNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3uHexB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3uHexB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D1EC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758839393;
	bh=OYF42zROWg143Jq6boTWvSpIcpGOP/GmrwIh8zaFVKU=;
	h=To:Subject:From:Date:From;
	b=U3uHexB79pccCmv2GzpyiV48Q+KQx3E2H8dJOvvGPJkQPjbqsG364UDs7GX/+XAeA
	 GCzzfY5Qb+Htc6T1ZAqVWX4ZU3wJeiMKFgQn8A3uOfvj7gb4TPRA9zhleiMAgSnPT/
	 gBb9aBGLA4aQt8OMTy/35MOgfGIPBCfR1FSDNhWgr2Vgj6EgIE5A4JPyDMFXuOwvX6
	 +1gO6GVGF6cz396sI6xRRy3LtVjf5/kwoqtrRrEppj867H4HG9V2dgudBFZO8+dKdy
	 /JvLaeUygkoMU0jjWrV83keJ7mRviTpzOpflWW5f7iSbJ27tGwYrx7psLRV5WG2SKV
	 Pp/6dTwu5OxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91749CAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883939358.9647.8946392681593908110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12a6fd0a53f6bae5b4578fdf93ef86580e6eb43ecbb3f106f403e897e58c948
Date: Thu, 25 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758839393
