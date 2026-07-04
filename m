Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A79BE36A372
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783178314; cv=none; b=YEYQTvNhrshDThedmxTMfAdXSA+hfR0dNznM3WED041yvgg/Bwi9VQDvufBXevvkbnPCL1mcNViIYCM/tRdwQWW0jqQhRglcLgWBWvxmPmtSaqrwXpiUKulL2RnNBO+CRo588zzpFlBT2+KBEQ5q+m8hvIjeclkiecRML4kpKVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783178314; c=relaxed/simple;
	bh=KBSrYFwjKSJHydlSBVv1yw4Grn56HWcqzG0zbLsQW3U=;
	h=To:Subject:From:Message-Id:Date; b=BAY3juDy4nEcIhmna8OjWVJrZLkf6DOCdOJ9vqLqICCNuNRfJa51tc0L98BMaQRLxZ0w5OAeByk28eae302Wbf+GNGfOeeK0/hYSvmvIwoDh1804wPt+0iS/5O1t5Uj0198qTMXy13NWhahEJpASkYTpsZimevBVgpzozQltO/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKQ7QYK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKQ7QYK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD4DC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783178313;
	bh=KBSrYFwjKSJHydlSBVv1yw4Grn56HWcqzG0zbLsQW3U=;
	h=To:Subject:From:Date:From;
	b=XKQ7QYK4o3/q2lSxO9VnDhXMb5a05IGfj6UPkWFPrF/3UqjfR9SVRbYoxHGNheujm
	 AYo0YQiIXCbOZTia41haJeSkoRBc2kSxBqQFJPQ89vYocT+93qoSWH0g/cT6ZC66MI
	 fqUcH2zNkM8bTYQ1I+PQxf8HZl/JgMJtoSxIMy5kC/hIgdQp77Fm2Vumsc1tkR3orK
	 dB8VPvPm5jx34zvwgcFlQsrc5XebDQ+xNfy2JOdcYbmfyCg+iTZ7uVISXRkwUgx6fU
	 3trxnm5RZoK4WzB5pMIy4i6Q8TrqJ4po/ebstTffVBAGsyusqUUgaI2dEGBhX8y6Ea
	 sn7Dl7eZAe9Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF78C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317831368.31765.864783138060973482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e7700b16dc7c7df1ab8d63f5258be49c7a7802f19480f2f485dfe80a051c9e
Date: Sat, 04 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783178313
