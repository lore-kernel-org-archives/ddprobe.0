Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3104130C361
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761314394; cv=none; b=WDxp1fb5PgzDGMj9ONTGDdo3KAoTKFQl/nDQsM2JGRoIazPBQBiZwfWD6eImLQN37aWu8epheh1cAC5bqHdS1YYKKHOitXLed2js7grP6be/lLtf6+wUY6GinBQHb7SWX06YBWX70tgqBYCbPPhItqW7A8kBv7BISTbbwQA0exk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761314394; c=relaxed/simple;
	bh=5BxXAcxsHK/mi734is37tAcUysyl8sdcE8FMo8FJDuE=;
	h=To:Subject:From:Message-Id:Date; b=hQoZBUYAmnviKHk05/vnZzOKVeUm8g0KDZZ0znkbFd8wUxZk3PS0GMxI/0OLJfh59HqNJEFCvr538RqQu8DofNuvtY4xBlk7ixH2tvdVNoqZpXTD2OyqYxE2CyXtXTdsvnEXqQUN+L63kmCwSjv14qE86RMT1cqLtXadvBSBMcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pffoaoiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pffoaoiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5598C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761314393;
	bh=5BxXAcxsHK/mi734is37tAcUysyl8sdcE8FMo8FJDuE=;
	h=To:Subject:From:Date:From;
	b=pffoaoiY2GN6obILBW+9fRF93IhG62zxZ6bi1ZQugL54X6+DSUVVp2mUA2yjGCY1U
	 OZqChqpl+6vbG0HhLB/QMxpeXZXkPNzPSngR9mWjXWNSmQnYPIElD0ssxVJoxIL1Tf
	 6Lyx5heZ4Gzvltpz0q3a0GVOwCGCzo5rPqrDICDjGLMPgiXrbGAVX/xJBT/aD4LAlr
	 9glsmp052TFcZtu6THhkjYlXbrIlu3qhGyaRwOfyyjaj4K6PMYID+5jvf6Ky71fiNV
	 Elfm7qJ20tMwqj2opxTUgjUfMiB9DH+tPl8NtJq3+hrzhH33pYgFEsnYMymi1rxJyv
	 BfAFX4FVHNQCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B35CCF9E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131439358.30552.17049833804325429373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e53edf3e25df8b0c861359fa3052c0f5731d656138fb2cfab8c198305a4234
Date: Fri, 24 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761314393
