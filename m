Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB533A7F68
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776369454; cv=none; b=qIKrIyeLqmAPAS7Wu/K++ZYqE9b5AaC0Pqwg85rJyyE1APg4vUr0LkeQvFlXdiQfXewdJmKAR20P/Hnz3MmFP3O9Ee072iWDfZ63DM2RURpBGj71+D+Vmf1YOaVkOMebXuAKuRvZ6546bOq7UOqrQ57rfJqu/iYpjZGJcCZUmrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776369454; c=relaxed/simple;
	bh=ihI4RJzqRlofSzU9RujN84n4UGz8k5o6LlzPPEGLNP8=;
	h=To:Subject:From:Message-Id:Date; b=L2FX0W7T4THWb+EJyKvFYhS6lOltwvoKHH6rqplQH2fmFRVYAE6KDi+mWCUAmHwPWip/lF3pHcNVdt9p5thTU3n5K2AOFXlq4Lg1/NscrqpBdLjtHYqS6ilt/xFipswY2G8AZxt2WVaMv3cvT0caV8Jp12IPq0cFs1J5MexkxDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BO7MCWcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BO7MCWcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD247C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776369453;
	bh=ihI4RJzqRlofSzU9RujN84n4UGz8k5o6LlzPPEGLNP8=;
	h=To:Subject:From:Date:From;
	b=BO7MCWcuk8/jHhOZfe5ReWFh+8OUTk6XKc+VmqamMsUcwUjK8xcJK7PhxnZpEIRYC
	 ntXPRhBWP3/jcV5e3vqmMGHO7iT4oaU6sptTdKs6NbPoYQzcaPqwJc+9X+jwcw+qLO
	 APRKHPvuZIknOl2uSPi2qQTk5nnGjHqp/SvZKy26UHXcyCj8DCWbkw2zyw+wL2PYXR
	 D+wUoaQr4sGv/ludbftXbSJBGNHm7/YkOb6pjYp16sC6ISOrzNPK2HKu4gVrUHAn/Y
	 2fkCfPAFQvF7FEFnZGMgat9o1jYOY3cCeKiI+aIY2+VCFRapaQ/MPjSmiXegYoV6bg
	 BJeBe+IG02NWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC06BF8D775
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636945369.16429.16429297877346474433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58206747fb30cac1b4049aeede3acd5c89f558833299b558548e6a0a81ad1b6c
Date: Thu, 16 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776369453
