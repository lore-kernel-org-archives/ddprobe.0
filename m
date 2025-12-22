Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CACE1D5151
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766367234; cv=none; b=I6yAy4+WfWoP8ibhkd1FJGhhqxyxNgRyTFmGBhonmD69c32oXnECKbSnR/NTeOGRHOvAN+E8xRKQF9u3nWwGeqpdvh1iFb4+jEmL/lxmbwQQEkShvXQtpE5C+2B5sgVQRs7Y1U6BeAvxpgnTrDMeJwG0r0ncJBK20poaiT5D9pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766367234; c=relaxed/simple;
	bh=e8+O8pRTkx+APH7cqWNuM3MmGaWxUHDiP2LrnuCW2sE=;
	h=To:Subject:From:Message-Id:Date; b=tlst/XGws0k89GNq1JkSIqYY7SUActC95AaCvQZCk0rjQkOw6cIN4fuaOTm7C8k6i+K6DAH3UMsSeB1XKDWX1dYdxvFI+1aVJp8otPiXyQ/AsHp1FC4sj4W0I8rZ62GT6ktUBuenm5R8skZ923LVqqTtiJ6nhJF5HRdYNuVmNyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/BILCAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/BILCAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D60C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766367233;
	bh=e8+O8pRTkx+APH7cqWNuM3MmGaWxUHDiP2LrnuCW2sE=;
	h=To:Subject:From:Date:From;
	b=D/BILCAJSrjO7hn+5fCGJpcI69JC8Z5Qb8LC1xw+HOEB7eYHSjx1zsDStGaXb9xzA
	 yjUa9vb69bp2ANKincmBTxR67PGq1Px2cVA/WbBpgYG/JvRSYF37OxMpKdu0L2sohr
	 ZUGsvP7BATW3P7RCAIKsEc6hO6Gqn51fCDi/DQq3/3TOXsnYxSuVHAKqLk7HcPvOdG
	 VwiDg4eMhFx1H6i4QcfeuBi10Rv3a3Se2QFstPPt4R/92cwNvmeO7Wz8F2gnbg5S4N
	 UkckQ+UrduS7KLIcZmS4AMvFxgg/Cp5ewl8+qSOBwfTCLeyzCM6cpkuZupdKdA+Mky
	 JGYiXrEIxJbHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95201E66886
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636723357.16081.7938200187675231448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebf037a2759b2e02190cdc6252f2430ea058bb1f766bb3fa27f9d5763f5331ba
Date: Mon, 22 Dec 2025 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766367233
