Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A054849C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728288354; cv=none; b=Mt9fvihEolhpXqN+mdbZlbF8eGipnPGIeIWvtjDowHO8YISXugWsVkCcpM0OFQNMwI+5yBzBih9EBPPudsAczgo84T8OtHzmci8u+8Nvvl41062DCr2h7CsLMcExK8XdbByjluib4xR4Mlh28xyNBZKmXWzuwN8XhiaWsJwEzEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728288354; c=relaxed/simple;
	bh=ERoKNi6IPmDTxfUBm0qF7cqaATNw9lbjJR2rI1vAPV0=;
	h=To:Subject:From:Message-Id:Date; b=GddvE8MHHV/vbADVOPY5a8DeQBMmVvNXuZzKdPQxgYWd+H2U7bJMYMBotCNi2Vu1CWLl0QePLdQbk5wEgwe1JaDgpyI8KGBLZ1ROBoFTflexwGnqyNZcu3JbHDq27lttMq55xJa1tmT9B2u9vly5ofYqhqKk+PF4FJiU3Vmw4iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDSPxSoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDSPxSoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C4CC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728288353;
	bh=ERoKNi6IPmDTxfUBm0qF7cqaATNw9lbjJR2rI1vAPV0=;
	h=To:Subject:From:Date:From;
	b=WDSPxSoEFVQ95WilglcNiELtNlH96p39BGZ9viPFMBI0h+7LpniCxLzXeDyfGWBHZ
	 3m3gr05vHwMFH6WAJxCHEzn99j7gri7FYwN2LlYmDibEx6goVkJrJTWibQTrFrbdri
	 C2VxHPSXd7YT7MEJBc3aqfnTDTyIl6NtlPK5v1MUoyxQifLb4Bg6KhVXEExUbx7lyP
	 Cd3PsSAhLKyaqpr7nK7diCD5MeFhCTz8aXARM4usYasrIPOt9Q38jnfowH4HVO597x
	 4JQDezpouDqhjjvxx4JDlXq3PDpnCz7dPy6f1xlzeuG/WKscEr1H+sq00zRiDaniQU
	 vMpuTsoYSl8Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2379CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828835365.29607.7665168348665559256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c909d9d435f6ffb6ddd9a490f1df0beb35ad385f50d6e46437bd99a9ca8a606d
Date: Mon, 07 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728288353
