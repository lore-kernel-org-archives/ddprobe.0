Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B19E2356CB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747904995; cv=none; b=cWnf9ban78yesKh4qx8ffUFfIOeKaEPbBVM7kTVdTe9BH1s8s+WsmfNsyxbdUXplIPO5jkCN/9bK9F00Tr7pJcsBGKuECB/iCDjqlNxxFeV+wXFr0+YvF0gSWQ4HAH6WRMsrbU30If8AU3+mkRgbEUPfOtdsNhEtbdrMYN79UGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747904995; c=relaxed/simple;
	bh=D/XRPiOy1ThaSb4ztPTuF7AH01rnD3hjy6MbJd8bbuM=;
	h=To:Subject:From:Message-Id:Date; b=az6KMfqeVwWSiT7kmlTK+3aAakA+P8mtJGvladD/CDRfNc5cr6ytsxWq2f21fpZcL6pmAdsEJLa9uRUJPl7Cgmz7xNmAfyQMbYFCstZBFuNq3zw2hfWUxn0sRjPV2lLCBS5c9kUWIELioL4vhHhMUO9Rwa87cWN0iKJ294B/ev8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzOtTP6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzOtTP6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443AC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747904993;
	bh=D/XRPiOy1ThaSb4ztPTuF7AH01rnD3hjy6MbJd8bbuM=;
	h=To:Subject:From:Date:From;
	b=RzOtTP6MmK6OMFnx3UzCbnb9LS8Qyt88feWq+eC4bZJq3Rd/txp62U4Zg7z7o3NQr
	 YQdQD4x+VvBgsbyeMtCJ2WqiyzV+7kP2jxSkWtbvGbaTAkQIY7Ed317c1dLQGhT1Fx
	 ThHdGT3yuXIt4xMl4IpWy/6/HyGKZpyD+oD8OdgTAswyO/bg8NbMOcyhRGm7x1z7ew
	 tq4nh6H7cjfV33wf4DzkFF3IKwyj3kLgdCnOqGtnJTQ83hUAdtii1wBDAdGwNwXopT
	 LuEtHNvzNezDMpN2gEcwDgq/B6jXtA9R893339HT4hybP1ks9AX4ho9tkUzUMWf/SQ
	 iLu/Gfqvy0buw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907AEC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790499358.26326.11304751637274105932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3992432fd2a78c7243b372afbed55ea93130cb3f8ee69b1cb50ba1e54d8aced
Date: Thu, 22 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747904993
