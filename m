Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD53190692
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736222154; cv=none; b=R+bWM/R8Kdfd1kfTuT7tVkdBxrZofQ+d0s+hLUaD5kvRWFtEL+jh81awZcCNJ0FOr6M5B6B/bxTH2s1RxedCNL+qRZFvRiFz8IwWy+igwUvIvPn64heQT+Jk3/Cv79jV8ChhtEOXbqj96dYRZOIZaRm1BCUe7mTy0un4hu1QqX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736222154; c=relaxed/simple;
	bh=muwpI2FN9bEmzuroMoHI99p9k2pGt8TLcbePcIffFQA=;
	h=To:Subject:From:Message-Id:Date; b=T5nplFIE6jY4Y5jzcENiLNXzAXxQnLin9ANQLM691CAUBETuGWg2gyXw/EBOIWddSnH/oUHupfXJDEnu5SvCkY3ellK8YtcfbQ0IXgeRTQo7dgA4HcdzRCimqHQuNj5+4DQTk6jWfYTvsQ68kfd5kePb2DtD4jCbSLgu3KHJRsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0r+q7TG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0r+q7TG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4AAC4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736222153;
	bh=muwpI2FN9bEmzuroMoHI99p9k2pGt8TLcbePcIffFQA=;
	h=To:Subject:From:Date:From;
	b=e0r+q7TG5zjGFs+XDzzejUoIx/CuPnUzK9KLbY7cNpTXBgLWDiFJH/KEzogHzPj6I
	 vVv70fEhdne5eliw5XpIv/Po2redJeKTXqQEbvuw7AnU2meRrh/hK+njxMJTVIrhXP
	 HJMN05jYz8Butq2hCbyYNumLRn7exbfhXljVIxvDl27l1C4dIG8nUJRMU8FY45Uwrm
	 ZU1ScA2BlesoOUmCmRY3YFG3sfma1ijFeupJflR63or6iJNxBtpis8/ljXsEvT28Lj
	 cjVd50AJdRawZiC1p3XQILPrWPTYn07PmY0z2VkwBDNtzgSbKrpsaYXO1Q55Ok386T
	 +q5dnI6B4VrTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB99E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622215358.12566.3659267451075650568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8425f0cf627d8521d4d180db91b03785696ae5b900a956f36938b824212303f1
Date: Tue, 07 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736222153
