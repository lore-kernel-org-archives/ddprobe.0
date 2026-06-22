Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304E7370D52
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782114994; cv=none; b=MZ8Skcn2aOZF1F/08WxL/d3FvgHMbIBE+dUFm5lxeAsk+JniC9mLK/QCqVQUmkXcWENfykkGqIa15zYgZqHO6zxFkvwZQ1pUo2QkLAU8TBGeAeGi8wbtcsPhoXk9ULJdcQVcA5PYd3c4JRW87ltHSLDbxgPQykxx4ghf5aWxTMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782114994; c=relaxed/simple;
	bh=UG81hLSKsGktR/HLR+qy15aYMNwZv20HqULZRTUmEfQ=;
	h=To:Subject:From:Message-Id:Date; b=dYdP+56nI2LT/cYKWXAO51T+GSO5INpzZtifLrA65QgZLkLZJhItqJMBD2rudvpDR1jV/1zOtenr1U04ct1Z8Peip8p8TyTD48ZrZQrRnw1eHzd9q2rYwxXB4jmb/xL+uepenW5wRLgPGA3NW1yQ2PCwBB/P/weALk9IutIyLZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu5JsDUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu5JsDUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A36C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782114993;
	bh=UG81hLSKsGktR/HLR+qy15aYMNwZv20HqULZRTUmEfQ=;
	h=To:Subject:From:Date:From;
	b=tu5JsDUPjWqeD1V3lAFFLxaYrZkGl04LxLRHLX+UdD3kDhoxpE3rQfxN6yeelbXc4
	 Mtiolo7e2r3b/jCOzICTLAg9yhLTQbt7DBLfuVFfbJYksppm2Rml1hUGbBDQFtJeMQ
	 MlxYalJlm9+N3oUwLd7f8aVwhDn5jHfHUiC7hBr5dXBVQdU6YbGbvpwYHC0+kUQBqL
	 RJQkqoE+nlV/GqoxLPMuHRXiN7LKdDO4elEciiQpQ+ojku0tvCPc2b48WQtM2EJacf
	 wvml/nvBNrxksgGvjocjCzQNh7xJhAMGuKA2SZSdCV0fEqhTTtDigYlcU2HQ8aMozU
	 +L5LnXvKV2pAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7FFCDB46B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178211499369.29133.15541269156487679706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee71076048fbfcc0f2afe73c8f9b2b13dc12eb7c6a2acf25fe4be34cbf9482c
Date: Mon, 22 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782114993
