Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5AA223DC9
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772940294; cv=none; b=BGtFSFLKDe8wyzGV17EU2f9yyz8qQZ4GvLshHMU3C5glJIe2pwvJ8vr1dUC+bkKPlj9F/p16IcFfCGflon8CtMmCYdioPVFk96MzP4T5wT4qUiEN2XqMm4/Y2kIW0u/5h+kKZTluLmsvahKX9dx4HSZtDCCPGlXRgrlXEXza4k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772940294; c=relaxed/simple;
	bh=3JQzQperRs6w/k4JIwHXmToZtGXk6Wz+rUUXAUSGLCM=;
	h=To:Subject:From:Message-Id:Date; b=P8+qx+2R024MMFT4VOhYExI7XreCrH5VbF9l/tVs7A9ZL3yMAh/M7cpeoWsLqpDYBCVEfBSw+4pGaESb1atxSWjE5/4UStzV8VXqN5+7xgxgto3vhHrpgV+wGnXoynntw0CMaxsuaX/L6fR3pFPsyndbimQgZaATOliskayKOIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l55v0cap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l55v0cap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9887C19425
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772940293;
	bh=3JQzQperRs6w/k4JIwHXmToZtGXk6Wz+rUUXAUSGLCM=;
	h=To:Subject:From:Date:From;
	b=l55v0cap1B/7c/0Nup64F06F7+M3PtmLfdT1lkd40dDrtY48j/LBOf0sK+XOq2NoQ
	 JOdqjRxpP5n78f7++0aQYg34ad0eraP0VUYs4XBXqQHqjrtKuDg2XrGhtQtG7L8YwI
	 W2Q+adNdXgcGeYaTL0u0nBB5/52VaBU4mZNEOpDXDiclRwTYJID1f9WYkK7g23ndZY
	 WD9HMBHQz0qwLawFwxpa46jNz8PLZEw1PacRGHxwFJvcHhciBOQO1AK0g3+Ru52Esg
	 mYrXYT9Dlkuv4c2ze7wapsdRR/sEGPsdnVcWp32MmQzMubCObbFkh1qgba3axXx2Yp
	 1GCiMoX/gN66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95845F55123
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294029358.16384.2460999406519551878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0f1b202ebe5edd2b253ec0e0654c5665c5ab2ddbcb076fb6d9f8a5819ad730
Date: Sun, 08 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772940293
