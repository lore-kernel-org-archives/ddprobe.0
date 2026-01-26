Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EABF26299
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769471034; cv=none; b=SKQE/GT34OGuO4V01eRGrabxD06HsVUjyJYoc7Q/wpTCQvAnqqrqHjf0SF8pz3co603wzd4XlLnl53UqTP/vxd//gi9MSCLgjPg4ayvkDhVa/YIqzQ5/nW3Di0NuoiDu3ZHZVNtxBTg8iTflJfZHF5nS6/Id13ZSqpPzoDnlGek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769471034; c=relaxed/simple;
	bh=a0OSWKtc2XoR5DkeCIaLQFZK0k4cGhTkhvQfZDPkt68=;
	h=To:Subject:From:Message-Id:Date; b=lg8tjYT0E2Uq2tnNMe+FC0TwWPCRU+zPq5mc9jHLXS/+2SH2pApha94oVeDCPTabKQIo/Y9xK0DR3ZOcfYpNO1ly4soaRg8uUBWI9MWuxN8Q00o/s63eCz2TnfLcZ/5IOErwFlH4kVUIgKmIP8Rr/KKuUSG3dy5VbH8xtcV755U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJXbf83j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJXbf83j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80D8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769471033;
	bh=a0OSWKtc2XoR5DkeCIaLQFZK0k4cGhTkhvQfZDPkt68=;
	h=To:Subject:From:Date:From;
	b=oJXbf83jp0Ag6+dKLXwHcDIrnmh6zyeGbiUhuFb8zKN2yt24ol7kCaK6paxcVoI8d
	 Gjwd67Rqi3HIopYKy7ypwVC3wmaAFrc80YiwxyJ3QUcwnxljnhcJQ6CAMzI833WUU2
	 xl03hFws6eYGXYM9gqnAawhWr2x/TsOOQGJXYeDQ87No2bRN6hFiTD7UYMw0Q75MOS
	 t63SsB8kKp+1Ffxl4jR+UlU0RWGNXDDFTlTK2BfwLeMT5lPdrgcWvDqTmT0qsMiHNP
	 EoNwov712R6uLlJGqk/XdLcR1W9zl5Nr4GqsMwz3mu74rvOy7NCxf/o+895vxEtjL7
	 LXVQ4MidoDr5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94880D19523
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947103358.30120.5936563159591402348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5a3f6d9ddd8089f661564b065762185b3604c42b21a72592594676370e7795
Date: Mon, 26 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769471033
