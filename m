Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEDC284A51
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736534754; cv=none; b=NObhD7rwbRAOaMFvFd6twop2MPedr13mx+GzhpVL56Qn8CvI8Wg0yIxYU+7Ww35Yi4jwrN/nF39o9SEfUO7bZ3j6UCCszRRASxKTarv3IFGnLSApDQMNm9m6znEfcL9XVGEdyTllP8lHnGcahoNb+gAAeD2VV5/XLDi8zoFcSBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736534754; c=relaxed/simple;
	bh=Yd3Fd7pVEdkIFZqh1lEyGO4+C1sJgoAy5bIw+M0TOMM=;
	h=To:Subject:From:Message-Id:Date; b=R4I+s+jMtsV/D0IxJSUhAy65PB9Ivi14EgNBSCCZBI+mZ+Sr+0XKM7uMWM9w1apfDMGNY3nUL+TvhOCDorAppJtnEK6vmIX5JnOLYZ4dWqTxuqFvZt0iwuwqQZKusQFDQkxCpGsmggKmCNJsF+2QpTJth8AauR3bc0PdWPYeVCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJVqMMqB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJVqMMqB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85ECC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736534753;
	bh=Yd3Fd7pVEdkIFZqh1lEyGO4+C1sJgoAy5bIw+M0TOMM=;
	h=To:Subject:From:Date:From;
	b=rJVqMMqBDcvj+TTIhY86UhAGWYteepMoE82G6P0LPWCTm9w1Nw4KRBk2NyTLOp8E0
	 T0djCTgQ8M7LUtjc4203v2WS4sy1/yN0JfhMa+zXjrQKX2E2bF3r5NNW++eO7D5tSE
	 R2H3zyzjEs3KzmdXyn1Egsc0Bf2zJ/BHnJahx4aVZ5wgLYH0TZ0KVeNvss54zYkFrd
	 XjhE+hgkM8KWSuqDTsR5vD2Ma2n7kRUN2EKB+JYYpxMT3WGxxAXRA0LeaY0kMl7v8F
	 PP4K7S9/3Pv8T2lPC9mjiSf2ANx+FtNUaPyG4LiUq5KczbaWcjSvmz2LpUdbDMtelj
	 Z27OJeYkHjJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE9E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173653475359.9831.4571257994308420521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00f9daa80897c8623b43e99809fedab3a7cbb66c6b8b103e8b89ba133db119aa
Date: Fri, 10 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736534753
