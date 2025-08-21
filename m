Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216362E267C
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755798594; cv=none; b=TJkghBQISn+WZYCTC0QdkCDgP+8EdIcvb/iMJcvNdr4129N05n9JVbFeT0QToJUf2/6UMNJDj4H4ftXXE6znBojWdVmK/clVcBkwzUNrK1hDBL3F3ffQhSi7BvMeTyI8D3Inv1BH95B73quLbm1UC8RXhuCj+jE9wqZW3lnLArs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755798594; c=relaxed/simple;
	bh=s+iMMMMPRZyAb8ZcDbPKRM6VlEQ7+ktImxVGqthHvHo=;
	h=To:Subject:From:Message-Id:Date; b=DD6+nHKTiucLZBozvlDhjP8OZlEhYRj7wvLGbEPGCBxMYEQdpx105esk3YuR4p90IRD5s1JvV/xwu5hPdjRq9GqgIR7CGZn/crwOBVAd8DqGb7D/oqmaC8cdDYfUrTZ7m1NcLJwO+WibRRysFj6/xRaa3WDwkNua1h5od+h9Ze0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsxYhjDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsxYhjDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5AAC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755798593;
	bh=s+iMMMMPRZyAb8ZcDbPKRM6VlEQ7+ktImxVGqthHvHo=;
	h=To:Subject:From:Date:From;
	b=SsxYhjDvy/TXMmAe/meNAxbNL0n/dP2mjQIUR2b2Axkdb839wc3AeWD/OPCFyNKFZ
	 tg5I1X0LkjYTlMJqUbkLJsHgOnlzvlompOITkTr84Cefq2XSdM5LB9mjCqTSnKxR8T
	 TXUsa/fUeOw+OiDqNgYNw0Zhw3iRxFE3hjDYDKkXd4DpjjB39AvrrbFeFlYeV81S2w
	 BvbdKqYpmM540DZP4kgAyNaNbdFshKkajbiIJ7yaFSMcBf+lUg5AqT8/UHCSNQH6FU
	 IsonoNYanawBB34o45jPReQhJelTe+C0wijHzyP+lRDjSg8MopV8/QicWZuu476AOZ
	 LRgyvPG1PTaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E893CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579859357.16989.4155975707192256441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54042293521d901e818a10a2d3c0ae8ba4fcd177df32f3ece7626284f1c85be
Date: Thu, 21 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755798593
