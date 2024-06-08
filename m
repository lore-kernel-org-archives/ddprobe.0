Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ECDFC19
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717880843; cv=none; b=J4YmSmDLH0qHraIC/1SS/CWlOslqmWlelpr+9UnjABjKb5do2RaXC6RqbtaCXyVGzNok6RSBpLXcftMYvrxvcUO0trT9cTEaIKzz/dPU0H/d6kWTXNEoURpdGjcwfePhicamfy+7owwFRXFuYfAIAdafCBO3yyHVHEsvHcR+sUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717880843; c=relaxed/simple;
	bh=h+yRPS38EDWabPI0XXInIBnqW4hG+rqHhU+apwzNo+M=;
	h=To:Subject:From:Message-Id:Date; b=uxz3Z/pXxImZswEzuAQqtgABDIuhPo2/D7WV6rkh1E6Y6GHQ52yvqbLNJnCeAvkHly+TeATcBD8nC8sLTVm/3lmUWuSNim5Bmdi8n1JbKn1PQFkr/dqzt0ZAHI2NG/aFzFDkzI6T86quhrINxVc1guY2W+ckplvsGnkhDDjOt9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnQCUrx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnQCUrx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7766C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717880842;
	bh=h+yRPS38EDWabPI0XXInIBnqW4hG+rqHhU+apwzNo+M=;
	h=To:Subject:From:Date:From;
	b=BnQCUrx2Fby5PfiJMhDL90at0PdJXavJxtlpUDniX8AOgdZEI94OILPq1TM+orXFp
	 HvnLfkpiFodm51wpLTQ75U5B1YoF7FFG2gYrXkfEg6KXjed6pdtdg+Gm/3vo5jxk+D
	 gEpHvGNL5jD9LCXmGYGjApQI55r0MCxEVlhLUV0ehdqH7qHD0zT8KU+ZNL/EZHokuy
	 HXT0aYzmEEmAhKdAAIa4Vt+qhsySVesPdktjf2StP96WX6pb/WpvEoclxxPGebt9w8
	 VjBZExiuGaoXVS6Df98F+eGf/YCyTDDm6lZdUl47Z8bgZZZvpJLQYIGmh4nYLM4QDO
	 c6AP4Ik/mGVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B09C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788084277.7212.3665832673616027233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f6ee593b952bbee1ec3007586a10d03cecf3f4b91a1efd75f858c384752d60
Date: Sat, 08 Jun 2024 21:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717880842
