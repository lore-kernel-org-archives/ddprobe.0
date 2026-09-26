Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3020F29C328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790380834; cv=none; b=Y/LB3VeGbOE+2p0QpUxi+0WyqJxWgvNXL5AVkyMdfoKlb3FQzCJQXz67HAAxqGPf0rF5iWIqhyNbGWsFTWTngUJsQIvLyJldZA7vXuzKL42AF5hm6ZxqzxcuHxb8zu7JLH1PdJY45ifYhVsL1Xd5GYeV6jgElstOAvx93DnBoBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790380834; c=relaxed/simple;
	bh=2ThxFPCzZKeACfRiKX0qgVPVUE/MIGBHrBPTJyM3yUM=;
	h=To:Subject:From:Message-Id:Date; b=ox7vF94B5Fb9uaNC8n65HDStXxSgtPs7e8ZWu84VylTkIurg9zQ+JkY5gW7NQPAWnaxnUXrLWEpxshhm1gm6dAwTm4MJxzo+yZRWulteQSvPzveagXcD8N1uo2PxqfTvsnKJofU7kPbYvIRJctyWqbo5oVwz0loGxZ8bL1m69S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iaLvgzaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iaLvgzaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8813C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790380833;
	bh=2ThxFPCzZKeACfRiKX0qgVPVUE/MIGBHrBPTJyM3yUM=;
	h=To:Subject:From:Date:From;
	b=iaLvgzaAqVMYNqwfo15rgIlvAtnv+tnvnp45PrsP6wr5HW3t2SWToqr/nWXNdlV6d
	 nBvtepyzvhDjDy9yZVytixe2O5qwqX8y31D1yxJjr+6d9FeL2yQ/XEqf9+PtaSj3pN
	 A8s/LzIWVomkrcZwIKnJHGkrLmydTJKMnUA2JmkDyiO9qZLEHXEPW1eW1wecKC938q
	 ZSofnBE9FEyTAMoLs4GWt7FDwKsRixA31Sg2uddfX8f3+VEuawLCz550q4JiXUROpL
	 mksrKSJSN8Z/Tw6Qu3OWiW/L61F0CIOep7/Y1d4bIEz5hw9Ddm6vtn+Hk/vIA6kseG
	 jSiIEijrQg7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF847C9830E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038083369.19270.12060601849971694489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6dda76956e46bd5aa14784e83bf0db3b90ab29a2337305785aa66c3fc448f92
Date: Sat, 26 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790380833
