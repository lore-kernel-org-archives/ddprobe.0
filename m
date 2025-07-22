Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D642576
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753202994; cv=none; b=D893fj1uzEvAGVJNNCHqRbmYMPXi4qKrcxnKthanHxlh7F2xKOlm4dzLDtzc3YTMxQg8J/8h0NGZSySn2sN9eqJhlWMJyHXKqjbIUz8uzrvpLxHDgaMFDN5Ngpl4DPwZIj0oveLSk6N+ALni6tsYi5SEF5oNCxO3FRuaaYt50gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753202994; c=relaxed/simple;
	bh=AowebuWzrN3ngHsFfQ3ORgl9eK51MzxighvkprWTa3Q=;
	h=To:Subject:From:Message-Id:Date; b=mDXtlQomhV1I/jWZ5OJSAOIShGK0QTzUZlfUjFEiq/uKl57MYkXb2XAAhRUJ7uVkzZfrtlY2i7dBKO3au8tmDytJqdMoizyQlZQhTWARyt9L0Pc1tGe0thv/QWXkI+z8m4agHd4YqU9OCpUeUU+ydW7DxFK1VmkOLGhRYrrZnjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNjBiVL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNjBiVL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C78BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753202993;
	bh=AowebuWzrN3ngHsFfQ3ORgl9eK51MzxighvkprWTa3Q=;
	h=To:Subject:From:Date:From;
	b=tNjBiVL/eQPJCkMxsXvsK0iJHmZkzxKTmOQSsEJyYMNZfzGuZm919ESK30i8k+69w
	 aL6zMPoC+M4EELsbIYPJsU74e3avApHCk2jK3em67aEEkCmvlgkerDHenY93GWdkqR
	 V3Y7hjBqbvZzjQMrxmW6Omv6EnAcpDTBEFP6Wqqfd/8D+XgQxdpJTGtzw1H3J5j85X
	 tw1GLsBnJWTuAyPiVpeRvD0y58eE7EpAM9oBIJsqOPoFobQ0I52inHdMnbccALUbTp
	 1VBrJgm6gaBb9m0C7hhNQ2y6oYBfqZ6bE7N/R1QEfSFpNlv3UusG2tvl/0gA7skllt
	 IMb59b+MoW/0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F286C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320299357.4130.3640947068774266058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ae29022a73b0f9f333a8039c8f8e122c85ea12136c0207421b7e7b2adb7148
Date: Tue, 22 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753202993
