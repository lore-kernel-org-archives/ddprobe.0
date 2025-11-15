Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47011B7F4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763176793; cv=none; b=OKnWBQP8yLNe7UfyRtWk4RwTfTyPbmJkCcyga2dLLuByxpuIl1Tjt6Qrh30ubT0VJpMI5A8gmPDdSElim6/1E7+Qoxdc1dGBeBvRfwaBAod/5W4qT+AQefdlPLERM33Quw/yGqTC/VooLDeo4NrFd8Fon7xgWZySJz1E3ueANs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763176793; c=relaxed/simple;
	bh=r12OM85e73H49TYWFwZDeLTPUOC+pWO8uJLHsofyUHg=;
	h=To:Subject:From:Message-Id:Date; b=DnIx2U9Kp38ygwyqEKQFGp8x8rJI0Luc9CJ2nAJ3eWIOtMU13KxF4M/KshW82S6Vwg4wcVV4WS2iGU2N3ZEGNSW4XB5L80dscPZr8oZwr37+HZDTbXeyQcbB5QSpY8KXxEz48huZPfYcUWxNWFz8NEo5CbClT2K6a0W7DjevbXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmpLiuJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmpLiuJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE2EC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763176793;
	bh=r12OM85e73H49TYWFwZDeLTPUOC+pWO8uJLHsofyUHg=;
	h=To:Subject:From:Date:From;
	b=YmpLiuJ/lhbr2WAtHsiHg212A2pBM70GcZog8eumtkXOhOJYdkh3ufLu4CjiQLIWO
	 TUz4PXrcyketDenzHG+kqFksV566RxtYa73LvUJM00PquxjORj2zAJuuGqPyYprPYO
	 XOUu+NkBSaniav5D/LzOaU7ivWEZNe4BZn6RNIdpYaCtZgz0979Gw7svM7IJTbL+iP
	 xTcqssov+YyaSA6mRaW9zIVOVhrPL58HEA+d7czKSKpj7wa5rlt2CtIc7tlMLaZ7qd
	 rct1VOvGh7CpZbP6ILJPitTn75OEO4lySqD1warRChs1ZZK46zP27nt9F5yhwOItUn
	 9l/rTvzC6k4dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD56CEACEF
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317679358.17830.14062362634816373132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613c7c106148a337b8e6f7c1f7ccc5f2f7f7cdcdefd0e08eedc3852e770113b9
Date: Sat, 15 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763176793
