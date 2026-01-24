Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217331E487
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769298234; cv=none; b=X8Bmb5W0pIdDxvbDUmUCc1BolmV4orHV8RKLS1C1h/orfB1q2Ccj6fyRIg1cRc1lCsa3DVnYZ0T8OiGK/92gkDrP9mETbX+ROFxdEllo7vRFzzTVh1WiLN1kwAgIdDw5TNoAJ35c4MQGTsxXlyRbQ/4+XimCk4MWHMbvIvsxKRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769298234; c=relaxed/simple;
	bh=2ESboJADnHft8vZs3Ms8YEuWuHYf10VoTkG8Jl545v8=;
	h=To:Subject:From:Message-Id:Date; b=IFtQl4tiFfgYsIAZwUzq/KAwVDqwyiNR3GoLSFfL0aHfsliozJ3LOQNgWy+nsRhpNROHPV9sG1sHidnM8jSywyKWD2vwFBOnGjSc/sEdeBnLA5ZZg7UYOEOBifFtD4vi4qA3yPeOvsUJsf9PUWBNfy3HMhCOYJE19pAS+11hRog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsVwz1hl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsVwz1hl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD4C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769298233;
	bh=2ESboJADnHft8vZs3Ms8YEuWuHYf10VoTkG8Jl545v8=;
	h=To:Subject:From:Date:From;
	b=DsVwz1hl096prG9PvSYozI4C2836TnVnL8dJUiUEfwmE25CPuiqUFcRbqZjjRrKon
	 stNmUOhe/xzn+QPZCewVBPTyZPNEkbAwA11VnuJr6zxLPqy7utCO0KBxrxpPRa8UAG
	 94okRibwn4YDcvCJ4E9yadubhZLLonHuAWjIPizyBYDYAwWTAzMz+zIaoBOtWbRzvu
	 I2WCexZP9VlWykdYN/e5uOEX03eyygXyqcht+dWa+XE7dOaUrS173rqwJKfhhPJAk3
	 p6dOFB+UzAPLmnf5gAFNHz9vHmgvIwYZNMIBkTr4VPbqfjLKmHXPAji6yTXYVzIK3L
	 59CQPErjVMhCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BCD715FE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929823357.31331.11329540095565246600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6bd67d3cc60bf85b6a5ea66905f5a53e0dcd933a06dc95bb0360ff9afd3d4e
Date: Sat, 24 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769298233
