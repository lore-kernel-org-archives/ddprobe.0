Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4751136D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749190194; cv=none; b=GU6u54fhLMmiSbDGM9iJI9BSjgATXy+fCokZZYkJJ85paGZzpjwvMNuyR0vvz7SjgeA9bcpt5WcLYDQ29MiYDMmaORsqa9pp2rMMHbDRZ0G+D0DdSYqkpJwpPtJeYNBwgPvMwZePc5NvZg4UGQRpiMIcThJQDoYEVCrNrE9gPtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749190194; c=relaxed/simple;
	bh=4Qb5v3i7hpFoB33+YD3uX4//ZnEw61U2QNkIyhmK3iQ=;
	h=To:Subject:From:Message-Id:Date; b=Ai4/NrBlPYQcy73a661uBpNFkF3XO5847A9nl2oid1e09TJWyBk3d691WpkbxYYSuj7HKbkIfA3vaR9APVwAqzYM+/CYCKq5o6/Wp+JIBQx65ZxnEqPvjzjifr1UMBYP42J8oOEVYRxfZHVrcZ54AQcyzRgp5Z6jzDF91xCfOhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7Lw89NG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7Lw89NG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCC0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749190193;
	bh=4Qb5v3i7hpFoB33+YD3uX4//ZnEw61U2QNkIyhmK3iQ=;
	h=To:Subject:From:Date:From;
	b=r7Lw89NGn2oveWS9C/CJGjtUo3hPm6yyfB+E+sIifX1DfcsSEWyFfLUc7HnWHj7E3
	 ItLsK9bBct6LhtpjZwg51YN5F08Wu2dtCRO599//dO3iNdlOXmWNWVqkU277cQdgyY
	 4YlY3cD085crDBwnFdsJwVz3DRSpYjoh2cYG4o0k2r2I7GoVxCR28bSAW+h1SWSlAS
	 G/70IYvThYp0A3k7i9rI0ci3z2B0ffKG0Z3Fx6kzBvdQQSvzUGjuEIqV/puhsOTpws
	 TJW3EbkitDFbtfE4Rth1pDVj+j1TLldlZFyZMYu95h3Ig/+dJ/p74ZovniV/Rnj6C6
	 gSvoZhpU1OrKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93440C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919019358.17425.15937915483334960543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ade9edffdd653c85366204c336ea9edfd3b67897a323b05a594a6aeba6060f5
Date: Fri, 06 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749190193
