Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3111325B0AA
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789207834; cv=none; b=haDj4HEC80p5GS8oY3aYwc8lH2mYR6WX0geIorYwXeD7aApgghC/GYzk9l0ya9o+7UnUEo0RqkExuz1bHvHcG+ueKqMQh4uHBdbyJUrKnrE5+yUDWBXqsmunRT/K7CIgmDy8Vu2s5D/kEy9RIgrywn8O2YKBkzsI/UT0yy2rfo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789207834; c=relaxed/simple;
	bh=cWt7a45qR6rN2agOrz7zB9bUXHThHWGIhfWYjUB1dBs=;
	h=To:Subject:From:Message-Id:Date; b=A/wVARS2QPf42a8Xn9ug/r9uZgWZwEnDt7+7HiXBJTHMEWyNTt48sBEHoIObT058wAL1ZCqdMKzxUPUn1eAUduEL5AGWCxfl0hTPVo6ADWTa53ZlOAKgplvPT4S7sfsn0zsPjjUpCDKjrYTmU7jsl6PU4b/wTz/g0nWioDX7ZiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twvTrwVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twvTrwVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0709C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789207833;
	bh=cWt7a45qR6rN2agOrz7zB9bUXHThHWGIhfWYjUB1dBs=;
	h=To:Subject:From:Date:From;
	b=twvTrwVlGzzLylSFmEid/ONS9RYnHSbU5CFA+HFpJEKgJ1HJ+rPHp5kDXH65wt37k
	 nxDesB4Eb5qn6vkTdkmNESoWmTPM6bKXvplP23izgXYLTRO3Q2WVcA2VKAiPBUY16o
	 F4LlXbHlkgZFwXWxxjOgqbzxRS6Taqqir5mJncy3Axp6Lb8UI9O6X9U/329gJchvQL
	 LNW+Btlqy1ERjbKrRamx22U43+ux+jd8JQk6eVGrBSVKdPvjQCdX/0AvoB9KsOHLFB
	 AodzdQL8fHnR04A62017/C30OmyxHqupvELYpWxIatJGLnDsNKd8SVKKMgQ/WmgI4q
	 LiVmfal7QhI1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD044C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920783368.23346.15573093852404919164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0414029a269c2b9184952874550a2e58e72310c1e62514ac7f80beba068915d6
Date: Sat, 12 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789207833
