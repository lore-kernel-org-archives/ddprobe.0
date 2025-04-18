Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D8925335D
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745017194; cv=none; b=NWnwXyJ9E/ot0tr2Lt5+Ndsgt9SjAVjLQ4PyKYrcnW1VIvGTjrlUcHG0MP/wdlWOLAm8i6rJ5G1v5Kl1jzFNnALhzutxjLzDugv9b59sOeP99Q7PoXCub0yYj7KYFv+/Sz0wPIbBKNal0rv0eP7cPeMQiCJim02dTNi/5H819RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745017194; c=relaxed/simple;
	bh=FEzadiJWOoScDmQ+1QLfsJcvMhjCVsK7FEQ+NecPVfM=;
	h=To:Subject:From:Message-Id:Date; b=YAi92AdD5qYRu3FdwFEG1yrMDzqBTD4x/SJ+Lh+vP1/YnrR/qsr74lgeHXKqzOx094ewNHAWdHpXz+VQzD3uiNEwjOLA5ECiMhrq1R6FFLWZpS6DHRHNtvvlbfLPfbPaPCkqmzY65QaeQogrMXdrXCgWXS2UmGTxp1btyfmk9jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hb9v0vL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hb9v0vL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3801C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745017193;
	bh=FEzadiJWOoScDmQ+1QLfsJcvMhjCVsK7FEQ+NecPVfM=;
	h=To:Subject:From:Date:From;
	b=Hb9v0vL1Zif4e4L1kjewMsitHyHuQJ/TE0bPZ8+mLR0AMPDk6iSujBspV5B6WCEiu
	 GEmb3x8tW1TMIbTutxpsaT/G0JQUcS2kQ0PrE3dnCrodz02wZjaHFfyalrVGXNM9Ia
	 vYtP51euin4xjawdzd5P4Zy5cFLJz+y4Wn7YDnViVdccLALwy5+w+3Xhf25qywqYrl
	 68VEghukEhTSQPdTKg9qQkLqhGcgvazeJZ3Kw3RwOJ38YjtvOgwRwlvqaRERsZJXhk
	 1brwv+EQ7j0x6kIsrfWoPVlSeqjcCQT1uq4AXVEZbM2DPEMXtjqwsqxqgTclNRtWNY
	 V5IEA18+N6MoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147CC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174501719358.16570.11178208838141438548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4f8a2a6826e367e7a67287010b6c92e26a2181ffd43b195e740c1ea8c0da92
Date: Fri, 18 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745017193
