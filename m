Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38367195B1A
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754800194; cv=none; b=t5zj6G1znZV2g1wnlHwBjJndZbTXmreKuVuNye4b0HyS85VLD7RBJN1HHWaE8f58CgeMNswaJCDTl2QgiW43KzgSNxXzayrsXGZNO0NjslnPCrNZIqcXQTj2kPmgfsSWRZUb0wXwqlyJfMsiPOB3rghP46EXFgt7iiWxWBvN0W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754800194; c=relaxed/simple;
	bh=btXAYpesWu7J5ZfPuSPn0TpK3Cw/0H5BY5drrlKsdZM=;
	h=To:Subject:From:Message-Id:Date; b=VnXctH2QDP4Uiy8qIczEeHMoK9eUQXxqqb6bpKYqJEgYiVMLFyjCfP14/ziSPrBDC3gwMnY27zFzfw67HTiUqzctaBsrWO113dSXCZUASqJLASEKuV5/r8QsAlj5/KOV1zbHt/P1uM7WBtKA+tmCAJCqpetoIDyjoojLMtIZ1MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afIixcLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afIixcLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B72C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754800193;
	bh=btXAYpesWu7J5ZfPuSPn0TpK3Cw/0H5BY5drrlKsdZM=;
	h=To:Subject:From:Date:From;
	b=afIixcLRdqSYUK1GoWHwyleoLwTCe/TstbGXAZSbmDYwSceTEMY5H2DNy0vL5WURf
	 T3u4ey1IZ+2McoN+xThh4imcK2scTE5scA76hwzdyo2ezmqdNzsgOUgJcG69J9A4Vi
	 CtYw315XrHXLCfOBHHKpY9qpFPg6pMRCNkDAcZP5Hs7TRHjIRvYB72C8YrodstVlyP
	 /llbWSDtAkWwGCrcvJP5JcWIlP46pBuMLVGwEt0lV+hhmCcY3M6yvzCSAZicNVVub/
	 DgmnAfwqmlpjiLRNhYjM6cD5KcHBFl5CYBr/N1wR92AQCCvXl829NILoOUS/4d3z/i
	 cAXNsxh+SW0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C6C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480019358.18786.5890381948070087571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda314b1784dbe7d46c534b41a8f56c01fa7973a48dd53e76363e0b897a227da
Date: Sun, 10 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754800193
