Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF183019BE
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764081774; cv=none; b=Lka+rmFKcmXYVCshNtDXI63PGKiYCHgAFt8ijH+O7iYDQwVsXAmnAWB9Nn1LIphM+V5pNOaCVIRXFARJQlx4RDTMKZx/UkN/OkavhZB3FeNdDnU1wffFPSrxw14+HQJaLrhd7JZSAWT7jLFJikLYDTXUR4NuUTd1BnW/14HSPUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764081774; c=relaxed/simple;
	bh=b5djLGqlJoo0RkbSKzgEq9a56qFS1gZGLdemsroPQW4=;
	h=To:Subject:From:Message-Id:Date; b=N5A6uCxzPow/GcStfo4J51umkJSy5om3s+zgqHjUtcv5ioIaw7STBOAW9bFgQdynmdSIvp+mokCYEZiiEi6lUSZgoNE30C4yLHpqzxQYpNKzhBAbrulxXV9gqZB5X9il/NJeMcQBiTbbD91McMkEk2xtxrfAJ6pY3TKiwxanuFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhtfA414; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhtfA414"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3283C116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764081773;
	bh=b5djLGqlJoo0RkbSKzgEq9a56qFS1gZGLdemsroPQW4=;
	h=To:Subject:From:Date:From;
	b=AhtfA414a0OdZYimvPn8fpKl6UBM52W1f/xWy5bGVOYLaDuHFLVbNsnDEYkE2pZqP
	 oNkm2SK+VaP5RVenagRTGsdptAwGmzOUV6LDGngCsxX/1MopTURC3+wDfP7zIUHV1M
	 c57nB8kjioC58wgv/6aA1UfMyEgv853dFPPrh6imdFhUHUh0whKLpjN2srH6/QiXsY
	 +uUPKNRnzcRZf5E6Jx3ZrwF++UgVoRez5pH8rCOnpHiLZR6Zt73xDCMGN1G/D0ZPx/
	 M7KRfw+JyGwCb5XVtQmI4kj26eRe8dklm1xaJ6l9SrxwZL0oJNJ7b48TmAIqoLL/wK
	 DBSEUwM63pVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93253D0E6F1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408177359.10985.16479001281865146369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47522d7dcdd5e31cc26f497de05cf0b1f41927651be3ff361caa81a7fd6106f
Date: Tue, 25 Nov 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764081773
