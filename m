Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC64423783
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790257234; cv=none; b=I0h3HBVvD3yaOwkewYm/0hWMxDhYs185DQr381fiVDpt6pwWB/7FnZ1zpocktty+gtU9Apw3EhGjy43+1jzyHDarGhFA5PjFxDbn83Xiw5Sq3/SRiKroc6wJi9471/Hh8GKDeIjSu9OpWjJYcCiE0/z24PIZsj9biayiMfq7mjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790257234; c=relaxed/simple;
	bh=6E8xQf4PiD9qbe81MzAAoQgbb/aFnR5lqD8fG3AoFV8=;
	h=To:Subject:From:Message-Id:Date; b=MpjQu4j8j6pspp6CFJXXNPFIsA2y68LFdqSt6kNWhTUsdm+q/Z+PmuIozxgQqcSlIWqCcDZicdgPexOWrbBFShlEA/xD4LqhsJ4Kj5eHzYz+zjGcLTuWr2HudZ6d2e3SiFtyrpPdQgB/lPG/zSTq/2/0NZGG5H7RyLvH081bm88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPSyn7Lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPSyn7Lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D613FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790257233;
	bh=6E8xQf4PiD9qbe81MzAAoQgbb/aFnR5lqD8fG3AoFV8=;
	h=To:Subject:From:Date:From;
	b=LPSyn7LuimXQ+1hHWHix+sgU1ILmUAFlpwC6AOpxjDG8Zq+PvpPRGmoMbWmnuytxn
	 X3I+9owttbduEURed9rfULdkUhUroQcUlPpYD0/1WxWZFFEH34lkLLSM+GrH9+9fxH
	 cQ9aPDLSS/P8U1NA0Ss4zZRvwknW7/iPDuUjtcP9nzLDW/JrakHw7HpndRytq1SBgh
	 C7Nb8crnLOiPoPGCOOFelY5yyROyBVqFVNI6q/kk/jHqSYPRuZOCAbe6XCOV+/g0/Z
	 Ymu1MECj0/gG8pIHdfm1RiXAi+J/gTygklsZYaB5Hx7RnZUWsz25ATEIPaQx/5svky
	 vjDkiK/LKtpEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35C5C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025723370.18933.7006111616651525115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3408e928c5092a22f621a789146d7ba120fbfaced1be41c0b1b779f55ff53b4e
Date: Thu, 24 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790257233
