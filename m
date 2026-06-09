Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578ED3A7593
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021734; cv=none; b=NWQ33Dx6ng0lUUc/slurCcM1/xyZSDMlrzc7Wi+42YXD1cK8R4kyrMbM+IF9ASd+Ky4dJp6DPcbE6gjf7iIEeSX4gpVgL046Mcns4G/O9MbHUGYYIOcvqZHQiXo/ZUskjDhbsTrYhnww6/q1h6q29eqA6Zrg3rHbHhEiScshVd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021734; c=relaxed/simple;
	bh=hs6wP6DkYZGCetSH4AraBdhD9EwYW8/4C3YckeYkAU4=;
	h=To:Subject:From:Message-Id:Date; b=ZtPSj0dcD/W9+gg5twgoiIXic135WYKErpcisxvft8dcvD+aLiVzKMqWVpFL//QZVnZ62UqQwQq6W0ZLsyd4VbBOvrv+SDtS2uBYiApA8z3eq3pA55crSrC6nmOShFwqTRrICrMtJrDB81adGdWtnjTvinj9ke32CktRTQGav5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9olvBrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9olvBrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2A6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781021734;
	bh=hs6wP6DkYZGCetSH4AraBdhD9EwYW8/4C3YckeYkAU4=;
	h=To:Subject:From:Date:From;
	b=J9olvBrAjEmESYOGjLazhE9r0gk1lQshmWATiP002ZM1itZXdavK4f/cx+gYM3aVf
	 MnOtZrRr+TULk9Q07xvDes1mmjp+4e21P/TyolKWphrtrDR3YPPr4OR1WxID6EVSQD
	 lae52Jgdl7ctpOoAmWX1CUDuz5WILzm/LR19IpT7KYALvXshvpOTa+GNlGigh2zJ3S
	 FSZPq9D+ED0UMT16sRYVh0nTzz4RLB7d2qf1Ci7NPD6uz2g6MdecVtNJmlksI10P33
	 pRhFT5DLslMgNQjfKDKoEbA5DAIDamLEiO4dqPDzteF9oALQNn1Trw0dJaK+wNLgli
	 6ZhJT2uaioNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0D5CD98C5
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102173377.23156.5939360189162417383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f950eb3609e1cb2b48696277647f7fc22f803942cc659daed1a56a573a6553
Date: Tue, 09 Jun 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781021733
