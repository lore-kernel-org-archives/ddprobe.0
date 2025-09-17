Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265B126E6F4
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758109194; cv=none; b=uWt6KlC84rRvgYHyIM6G/ID0dOAUu5e4339fP5k2TyMgeqyGsZ3wLtMjKDQJ0Re0qgsUkVqcN1QBVxo2NDHpmYaPyoyUnvmTcgDi07cGKUN/yAUU/glwHb7mO/FVzKtDf6dlrohQ15ak7qczK+NIm1q+imujkDj+J3it9HBq7WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758109194; c=relaxed/simple;
	bh=eXpK95DUUulhX7vR+pF+Ax5haCbZ7yaZ0BM3QzIbNLA=;
	h=To:Subject:From:Message-Id:Date; b=sz8vp8FHjLDKmHaDJkY8TZrBXtJq5ZHF7cOHQWRw1Kngd9g8sgn6YCgiASAMfnDlwR7ms72J+wV74jB0CpMX3IRaN8gosqhdeXkeHRhDOK3gGQzb49bx9qJxbFOJRCkLnHCBc0U3vVByn577od56/miAwAMkhc9+o2SsU5IccF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbcUY75a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbcUY75a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5160C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758109193;
	bh=eXpK95DUUulhX7vR+pF+Ax5haCbZ7yaZ0BM3QzIbNLA=;
	h=To:Subject:From:Date:From;
	b=GbcUY75a2lKjI29/2QTgmcHABgspU53BIDJCk7Kb7zgbU+jaxY8ynUbF92/EXYpb5
	 X4vKQEUmZOSK+gG9xpZz/1JaIj1vwY/jc9J9KH+/mm42RLu5flJFFaPSTrn15ET0Ik
	 5BBlSm0U8SaDPfMj9S2w4Mu/W707DJb8DWbh+N5V1Qu4Je84a8jrpYcddGwKrSF3F8
	 H1Km4ckmHG0FhYT5RLLA4jSATY/c1vYrPq9Tcm5Et6/tlEKu8EDqeacmJctOBWoxgQ
	 2QM1shUKGZJfTIDKi6zK+77+EeKJ55WMP81suKh9A+QOm5CRSeFg7YXpdZWTVsX4k/
	 oscrs3jaXu+yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A1CAC599
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810919357.28582.3145325447467024777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffa2e314f92ac201e632f403037c02ef1cdc17f5403b59a028d30c9ac123da7
Date: Wed, 17 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758109193
