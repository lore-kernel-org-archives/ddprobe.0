Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6481F3F4839
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783721914; cv=none; b=K1lfUzcEWXZ/rGaRcesbXrFDqxth4tpwDHGfGsK1Eq3Lw5vAyElQ7j/UHBC//jcGrmbWcUmHzFySYfFwMPv4CuAcBjk1gkDmZwR5NPBH6lqYPWqUyYw9cOQSnIDYqHoNW+DiO1oMAtK0G1AnoL1rOCq0qAUIdHW4Et8mMd+BUpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783721914; c=relaxed/simple;
	bh=FCPZb3DCH/llD/VjZFJqQgh8gXobPDnaF1O5R4tr6p0=;
	h=To:Subject:From:Message-Id:Date; b=MBi59LLaVjVoazgnegWrmfjDL6CaZ8Ug2VzWfyXlZgoXCtfZ2r/1owWIsG3kfPO2p0tuEVro0uc+fg7VXObeoWO4EzLWb5Bs6zgpAV/vkjni+cPzLxuBgzCw4vvphELXhS67XoE/EQ5suFe2sozIWlR2hShFAz/xLusJMxp3+54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szPcmYYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szPcmYYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD536C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783721913;
	bh=FCPZb3DCH/llD/VjZFJqQgh8gXobPDnaF1O5R4tr6p0=;
	h=To:Subject:From:Date:From;
	b=szPcmYYgx5VjZ7T/j53zNy/7I77JQpDuvlBRLmRLr7sKNha3v4v/pWQG3kCAbmYHc
	 kFuS6hyMCnlZBe3lFpnANbZomRjAdvWq8TBo3tHlTPLqqsrfjy39kcCqCS+M+MHVcD
	 lm3/8XNPem7JTee0YsCTcF7skk6H7zejrUEZEuKJHbFWo90rczNRQN4Hv2l/aOQ0LU
	 z2CBTEnwcDpWsJEBhd8wJtET8SwLGDn6QAPX4WvhK6Cjuyzyy1+rsajTvWBbzJXuTa
	 X3qo1Akzdgve1OkwfcziukyBYYnzitREXnnAl/GtX6doyOWNwzE73wg4+r+9jU7CNZ
	 Wxs0rWdrG/mtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A894FC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372191368.9833.13952377206029507165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e14ea6cec3ff739152d54f4f03dc1553d65cd621f1519e6f5a5cfafcb51f4f
Date: Fri, 10 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783721913
