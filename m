Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7194F223708
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786300234; cv=none; b=HStqVXOyOAMhkF468UAw3DBkcxAAxdOk+sG0qV+uFRsqMwyjj3jwHxAc5ktXYP+Lxpcx7h0+L21SKmCBXC473DwqPFkP0U0e+wYvOG+r8Q5bhLfs7d+Kf0F1jlR2Eu6k1vop33BoVuemKzhHEO9bGvb+OK4vWdKHlcuYSo6U0Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786300234; c=relaxed/simple;
	bh=Oncsyfs6bE7RIpCmTlfVR+AcP4hugFK7nSCqkKrLUu4=;
	h=To:Subject:From:Message-Id:Date; b=icrwBUTg2bQUy+Xirunsm5cde7ZUG/3zuPmZ8vBV65E7cOFsfoqob3EwcZR8wOQSTLvtR5vZgpFsMtWOzxWMJBD1HFXnckGgTlPJHgq13/q/NSic64sTQrnO3YBr4igdIQ5xHSqGKikIdB5HouAaDOMe2GUGr1ylqW1o8bby74A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m7Bnv5Hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m7Bnv5Hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D3BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786300233;
	bh=Oncsyfs6bE7RIpCmTlfVR+AcP4hugFK7nSCqkKrLUu4=;
	h=To:Subject:From:Date:From;
	b=m7Bnv5HhY8GTJBQEV3BGxdBxupLTtUykYGMmjVV+AMjLLF0O7JFYbA1qFGSeNtHPr
	 TxLwsZNsSBalhmlRbbvf7An4aooIax93gwfJiFxIPWRAOiuPPvJlVGXplbQNs78Sx4
	 dmeMEfp6Ayi13YM6JmYk1Vd0u64zqdsnCxB+RMggSTm4iUWncKgVPBW7TS4jBUesHu
	 qw2a3U5EnuAEYYoVu7Ki0cxeFy4OQlBXq/WTGpq2VssIjZPHGyivhrzynp55OEJKI6
	 EgwIUopS8diJPrVg8ItIeJEoW1Yk9+mvxa7NR37tnoTmdXXOZIJfPFpNot9n0FtT7y
	 UiXZPBvBmg3OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD864C5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630023370.21063.8867267795384201543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce87069a539d6acd8c324d67db23e4dfeb65242dbf2ed6c72fa976ff716433b
Date: Sun, 09 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786300233
