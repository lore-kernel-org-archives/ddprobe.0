Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402912110
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744346994; cv=none; b=PQgxU4qparlba1Wy6miGrpPBC3jDzGPBT5kHjRyaWsUTSXpnU4slyVHWbx3N7UvRCKfeGMvWnjkkLb34bEUWTSQ/Tj+RoIyxpxQGaSwJcoCrrgofxu+pLGWw1w1dI2PzEn05U4/dscnYbiJTe7X3d7xc01NnMWGQBsNHtkF5gjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744346994; c=relaxed/simple;
	bh=NqN8PW5bvBjo5waySxRnVwQDms9fcSMDi789qV6Z+kg=;
	h=To:Subject:From:Message-Id:Date; b=vAVfkdT5/DZBGt+cbGZka5IaI0xE1CvuLWiQly8hX+C+4+d8XTo3LXXDn8rF4Q3UMRyEntp4zoUNH06pYuGeCQcPBRWm9ie8kb3RdrJhayjneV1DbgBHbO1S3v7LNSN5Tx+V6ZBi9M0jbMSAWsykp49kiUFBC+Nv2XesAimubFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td1N37Rs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td1N37Rs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B20C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744346993;
	bh=NqN8PW5bvBjo5waySxRnVwQDms9fcSMDi789qV6Z+kg=;
	h=To:Subject:From:Date:From;
	b=td1N37RsU3yCqaPhm+6US46a+e0vA4xGQjRvJVM+1KgbEck2fqqZgcW/R/l6FwEVF
	 7Y8uhatQfsnstXHOxzXuX3IH/8ucIHeGrVaIJM80S8UfBYTpa2u4KOvVw2Fp81InhY
	 R43JcGIBYO+r3J35uKWY+OIBmyUPgnqcyK49cizum08Hg5EzCwAAb9NRoh9KCMnBYY
	 cTSdwCGOTuQl4c16HdHYSl86HRMA6hBDuoAiu0tufxIgIMr37XXa3XLbC0AbfsRU77
	 9ZBiYbVMe7zGZCZCoJXwEaCiAvsuyfh0vI3aE0db+VxACHDMkbpYD9n0RkfLqD5CvQ
	 mgdo31XV5W9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B1C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434699357.23304.13904242473245016116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8389ac27bdf7d944e347735d8af0e1c0341c912b64d9c58536fdc0bf3c4cc703
Date: Fri, 11 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744346993
