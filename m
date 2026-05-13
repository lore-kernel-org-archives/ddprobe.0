Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFAD363C66
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778635235; cv=none; b=uYaUvqH8QX79HAmU3P236GBuhmWZWUjizDTYoEDIEJtDMIA+WmKed/JeTBMpet54pni2WFBmnFnG4dcn9OiNXT7SyDP5TWNS2b/tuiQKLYtyPPAKQbav6Yx4n/79I/oQcXt7owYnarMf7AAuiAKKrulwhH7oTQvYRaT2196xVUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778635235; c=relaxed/simple;
	bh=kPwkc/UhdZ5wuOY9YXGPjB97zcjyNU5wbtVX+0Oah4g=;
	h=To:Subject:From:Message-Id:Date; b=k8HP5L+IPaZWZL2fq8vWvQSFD8BdUiG7J1gyW2McpTS6c/G46tPVB+dgOUCcFAXficnDvlbwNSrZHYuIicBHRlWwQu+96cQkB6gFGe2X61TfGlCPxbd3B9e7p+XXDzHYsgihltU90iYr5oky+AziLj95vMmtmN7WiZgjCD0qYzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSuBqVex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSuBqVex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA652C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778635233;
	bh=kPwkc/UhdZ5wuOY9YXGPjB97zcjyNU5wbtVX+0Oah4g=;
	h=To:Subject:From:Date:From;
	b=aSuBqVexJaSOH2NaqISjJDqLunHWGOOt5jN97qA0/Pq1ffw35abQL2ZQdj/S2n0WH
	 bAc9uylEY88GtZkuOr6oVHjUnHKyw3/k6siWFPsdgs4nXYJmijCrshqcKcAsqKmXJ2
	 4r0gg+zmVZpowsogvJgGxazMgZBbObEvCKsI34+yfRRa8/qs0aTCQGV4/atA1tRsUP
	 vnSGDKcwbvSv1AIjkFl77oNrK560m5XRl6OQzgqbd0o+Bfih8CSoGZmdaiebp1xLUL
	 ht9hJBKXzps2YI88l757EQ7SKpR6MKGuU65LRMQLQSdLXD7hbkCqwoySqILcSAT7q4
	 8LuXbuOIYZQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CC3CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863523368.10876.16763834331022862776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf7b5d6e3e5e61969c64bd9d21340af7db0979689c882d00a1052c46447a4f8
Date: Wed, 13 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778635233
