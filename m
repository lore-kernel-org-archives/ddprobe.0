Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D121CC8A6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727795154; cv=none; b=Z5w71u3AwrKnnJ6YMOxMr1UXcJmz61CI1q2xymn179ZIT8l97Dm36k21vXBeZYjmAFpgnbhGtafZUrp5NieFL5FrQqXDPbsXgUo77ho6BT9ogYbZxW9+89Rn/gtSnK5tDdM5PFBhdyoBkDoC3CHMLRrUkeKdumSaHg+vgpMs228=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727795154; c=relaxed/simple;
	bh=VKUzUNR5eZCi8HcqHpbJg+Rk6GYVuAgNhK5aCVYMJdA=;
	h=To:Subject:From:Message-Id:Date; b=rdtsezZt+vh+aYCjTWo/ZB597D3C3pS/H+172sD1dMFFUEokI8k2KOp7/+FVtkyBwSbHPalWwQCk0nyH20QwKsVJW338D0j+mNmWIR8GzcZ/AbajzZ3XJ8l6LoEuBYePuGc5sBQT/oxbVHzjTB/3FunXp0oBsLpGw1mV8o/iTyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dapcvo0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dapcvo0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A804FC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727795153;
	bh=VKUzUNR5eZCi8HcqHpbJg+Rk6GYVuAgNhK5aCVYMJdA=;
	h=To:Subject:From:Date:From;
	b=dapcvo0c+hONurUbnSmCsmIzOqRcjxFu72RpHZXOVfPjPrb/xtTqaSaJBV2rkCLnx
	 5i7XLRpRLfUazAgAIW2okQ4ComKB76bA57gsZPltaMxGkUiCdCZBlhtoXOFldh+UCB
	 MQreJ0Hnho9BtbOGlsqfKedL1+tv0wNVfJIaOD0E05OzFTblLo4c12Oqk7kPeMDE0u
	 l/0ktrFY/yQuLtEosc/RiTRllioowFCWSiPz8jPwVOHALTpGE/w7VsCVKdvTzapXyJ
	 HuwH4OH2NvKa+BeK7HYby+I+i1ozPV5Ml4nlvKPX0rSJkyuLdYHtscM1XQnVZnOOSv
	 zC03U/a4+KrEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A007CEACD5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779515361.20490.17340858545061600004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac6023f903499de291075e8525102d84221be89c39f75ed271a25d472a0c86a
Date: Tue, 01 Oct 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727795153
