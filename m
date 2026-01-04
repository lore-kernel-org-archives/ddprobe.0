Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2718524DD09
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767506034; cv=none; b=bKOkIm1oo+6M0G72rDc/8SFNG130AMf6Gur/jH24mlB6G1d4BYH5Gk2Z1pIPx04xZcPHwHo6brloEoir8qMhtkM6JCQWfj9ePnchlodvE+jKp0aXKTnvCiL2LSChOKI5/tibsgkkGMRjw8YLM1mAFpEIblp5TkZZjAx1O/MDn6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767506034; c=relaxed/simple;
	bh=J00NPq32zqDmBIFbwZxsW3tu9w0d/PMzDx7GXGMFF6E=;
	h=To:Subject:From:Message-Id:Date; b=UbDOglsy9B1OlhUSySGJfIHIA48M5+Cyy0FZPJmURcUc4y+KlfyMLuYvyq46INOlQOywgSGUMQLm3O2Y7WYKQ6wGFbOi3RTfbqzx4jX0UfZJR7zlMcM7+iRDtP/5d0JTCqNMPYHXF14XR4Xjs6FY4v6k10F3vG073tsxOzl7duk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c46I0A8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c46I0A8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E05C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767506033;
	bh=J00NPq32zqDmBIFbwZxsW3tu9w0d/PMzDx7GXGMFF6E=;
	h=To:Subject:From:Date:From;
	b=c46I0A8LF8JDf693BP81P5bRD4vRkqrvYdOWWo+GajA83G2ngSPWQhEeEYCQ0Zngd
	 6KMyY0SQQzWBMkpmu6wI9oHjzomDYSV0xwqk3sS58lbhENt8wPhLNKkTu0XOqIQQDN
	 iODOIHKeaTuqD2mSWjUlMTioad62qwji8bIakA6mdBzTBRjHSHISLMs1tui7kl/FPj
	 eKymYUb7rTWQpBb7r4YN8Go98+F70trn5+GaMLSC1MitYSuHGX12R2hdlbXbN6ToAY
	 tjzY6ODkuWD7lw8zzhmNZG1A5sMr8rIHXwww6sZCWjU4gUZQjtOc0oKGBcANo7MNSD
	 mCYLss3vYao3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9187FC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750603357.15976.1622228939281723836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2245ee1f78eabb9381112ca7c2623a43abd61a4a2e28e4940f3d3b35de9f12d8
Date: Sun, 04 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767506033
