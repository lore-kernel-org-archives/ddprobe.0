Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7E1E0B6F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402354; cv=none; b=ASVefL5LImXrPXCtj69os0+KCkP3c8yQSg6yL01Lg8OvzpKRKoqn+iWLFr5r2adKhtcYeNtu9+9LE+QEtQOpVmUbNfctmBNL82f3t/tOE7dzzdMZOaivfM7bcu4W2Vksdfb1gkbS6IlKmckEELEdkDcdS43iGQGYzdgyCpcgLjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402354; c=relaxed/simple;
	bh=Pi1TJHCS9kcjdMpID5SyVH2AH0dSQjJRdMZCG2HWxQw=;
	h=To:Subject:From:Message-Id:Date; b=QlPuoPYiQrYj+Rm8fe71ZBuw+UG913CEFDeH/GusLjMhXfIYTg0luK96HpQ8Mi+KvTZTA61yKNanAfx5eYemCg7e6aTwoqJ8vrcKV4zOPenycbo4MOuvNS7uF8Ja4ibXHm+nryXoQYxGtiTXb5CukfDuyqLoFzFInUWFfK/QvhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDz20pyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDz20pyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BE6C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728402353;
	bh=Pi1TJHCS9kcjdMpID5SyVH2AH0dSQjJRdMZCG2HWxQw=;
	h=To:Subject:From:Date:From;
	b=FDz20pyb4jVwxvi6PWECnKn9aV5S96R1ZH+9pgoBC+D6vVexHwdNhI1wOSvEF2lna
	 fC+oF4NTFSTsTX6ht9oRwp7MQNFPynzS2YZmZ2FcRAyWD/RHM9TZ9a/vGLntiJBE2G
	 9NlffG8WLDRBBSGFNK19dnZKNLuBrDEgdsKtMUfc6lDeAbQ62u3jXO3O0/pmS56mzt
	 a/CpRWfX3rSlFcH4+yGIcyC0bLnyNrVkP6mLpZVfK67yc0unnZ23xmnREavI877rxN
	 7v9QJm8fMhq3sJSTUJx79tZJ3RF4EqmGIRS9U/X+Og1Cnk96g/BW5qcdmpTqlQFRot
	 jyAFQMZufy9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150ECEFC27
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840235358.31872.4922623396515137708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61b94dbcd128ba28d65060aaf654d76242c397abd21528e29ed6d096545944e
Date: Tue, 08 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728402353
