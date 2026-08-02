Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559EB3AB294
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785668434; cv=none; b=kIOCmvh3mci+qpya1Sh1vizvtx1mFY0r5uhQ8jezldTpwY0t2bstKMcjFVBc6to+BT+G6bgHBMyQeEOPsehWFhgLqDY+g3X9D5eQM3UROVpWj67kyQAmnBy8i53r2Xw3Hq+Kch1gwEO3w+OwYdgkcPbtIWEUrlvL8rbzMlDiCbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785668434; c=relaxed/simple;
	bh=lt5Rb/frdLmo1So4zu7KU1CmtGld8AM6sLTnlVFLzyY=;
	h=To:Subject:From:Message-Id:Date; b=jjKLWmhmTP5kU6iAG080KP8u+/vKleyZXlBJ5W9Zb5nrW3FW5O0vSCfhQ0HuF8pv/V/93QpdeE/yOfTgHHclHQp2+isaCreqWrwdKBGRFQZL3f4/c6SVP82FUnWqYNixuHek9pc4jJbpnJIXEj2M+G7IBBMIhqU8qTTpHI+A+AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ3WVucB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ3WVucB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4AAC2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785668433;
	bh=lt5Rb/frdLmo1So4zu7KU1CmtGld8AM6sLTnlVFLzyY=;
	h=To:Subject:From:Date:From;
	b=BJ3WVucBOWENKcpLd+PkDkoKjoR+tg7Biz9FVE1CRdmmqW2KZ/US+g5QaRgWA50Aw
	 RD5sMTXoovavioiNuWiIPceNVmxyRs4GdICEQrpEWtwABUg/7TyrpXn7mTlgPN7eEE
	 QuxfddLGfoKgv7F3KULevKgEBkss8ShRWcHOC0buae7zygQEPAAQ8MZ450tgOfrlIt
	 lI+2sewYZW94CJz4csZ8PJPo4Mb1xaIzSQ0e++KOF84FkjkRXcyY7iKpMaMHvbNh1B
	 igDf1Tz6krGRbxy/cliiMjNvo7JoAc1ybOGP99pgZEowPF/zj98nKZ2v+e2CrCmWuW
	 +629Bz9LGMEuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB23FC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566843368.7431.4422568362744348332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5b0fa3b17ad04cd6e50c16bac6defc4fa4f36bf3f2dd61079e7ad49603d650b
Date: Sun, 02 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785668433
