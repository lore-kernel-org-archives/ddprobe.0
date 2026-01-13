Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1693793A8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768292034; cv=none; b=q7osannvPVo9Bg0rjrF1KQM60XMaTqQ/XkBSJri7hKoPRHOegH2krL77vzKzLcPRj/YuJOsCnNVmCbyX2Xp2xnQMp+y5EDmKQ1PVN1wYYyhaOno7lLiV2T3j5au3qkDyBYoY1w9U2K01gJICEuaoYeZaFQOWlNTYHGhwYBkHfz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768292034; c=relaxed/simple;
	bh=AAqE3eRomB5tXqMttSiCtYdUeHnUth1vHxkQ/6ZnuZs=;
	h=To:Subject:From:Message-Id:Date; b=PriHLy/IKOY3EocrhYlOJrjlPD7sy8pEkcC59Qq+2mKOOSd6XJiMGxBQzCKq4oi48DfcxlZaOIwpz6SGPdsU/gfne/A8vUUQF7R8ynQKgsVnHT7M9hs1Ydk81JU34Dr4bYIYg2S4yJD85FMkVeJTb/F4lJNTxUeifDPijJtuUsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnCDhQn5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnCDhQn5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2443C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768292033;
	bh=AAqE3eRomB5tXqMttSiCtYdUeHnUth1vHxkQ/6ZnuZs=;
	h=To:Subject:From:Date:From;
	b=dnCDhQn5tKtGO5ZxsUruDp5u7WBoyt6CJvnciW7KyDrTE3lKw89vJkql3tc6TO7x9
	 7PABjpN6Ybi5WbEEFFSZrq4CxDIZlbBnLJtSHuyTz+XmOCf4JyTAIaIp+9ZPM4XO1i
	 erpDqIv+a2smO5+Ms4BHHuboEmLTKfITrrzOkwcqpDhdzC9ajTS2TKYKlQaFkia02H
	 PW7wf6x62KutiYMo2zfy/W6szDEIVUw0E6se6pDaAAtEqZLoGTuBA8QLP5Xl8YH5MT
	 DgYZbN29N/8zPSXom5aAB9zxEAI3zS6ms92bPvB8GALDdHoynLKQQedACpFCU9Vgqk
	 Xbhv76LFnr8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90563D29DE4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176829203358.19878.5019984392790169333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec31bd9eba8d402191b6c81ae2d2005bcec02579c58367661affc1d62d22acb1
Date: Tue, 13 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768292033
