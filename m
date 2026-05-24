Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813EA3803F1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779600754; cv=none; b=oeBwJ2c4fUaSQjIDILhhPzZy8lG4XYdZAh2maidYWdSxDqsanZbur3zH9jTgeCbxCPmJWB3k/ujZ2ZY4E5G13D6RxpL8gYPYP4P8ZAcEg5pClxLfjiVutEst7XUV2pmbcfm9udnDpmLHgMvgnPXmBAz7+XFJIeDxYhoTpEDusvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779600754; c=relaxed/simple;
	bh=mEcGCOa2aH+wJH0cg+Ju2Bdq1jxUFutpjiaR8JTgSzI=;
	h=To:Subject:From:Message-Id:Date; b=PXVItNeyztp8kOw88Pm9hyqbnZhEhyocXWzefaCp9T7qnuT80JzOAy6fay2vc9UlxS/yqxKrOTdLbHZFw/a5vft1g2EP+G+uQIqOkYN6xpmx8EIgNHred7ae9bJlMZ0sLKGyavVdqGwINCOBxhv/GSkazsgRsq0AfIa2NCHEK0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WizhImTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WizhImTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6388C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779600753;
	bh=mEcGCOa2aH+wJH0cg+Ju2Bdq1jxUFutpjiaR8JTgSzI=;
	h=To:Subject:From:Date:From;
	b=WizhImThTtzodi9mXJO77bOHf2ac28XP/jGHxXJtqOnzVdESXwcs4gq7wKOF9W4YQ
	 r0/+zZFmx6s32epq0u+/jsZHyOuFmxuTu9/JDUZyinT2Z+e5ATr4VcgVetr8+ZtYJI
	 cMIX+FkPnyzOikTaKWh47Ico6OxAaxRKsHzZaHLjx2QoiCqn96BnHK/+5xue0BUa7d
	 yopPUcZGIpdy8p/cU1Qr/hNSChScDyDN5hC1WdKSMYvs4JuaCP8DKGnGvHblif8Zue
	 pEVdER11uz+q0qmresdtHYIDStpQuO+q0tm235zJSQL8jGYRUk/pBT1KhFynbBprSM
	 8urMPAGCjRBVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF613CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960075368.22528.9200045322715755523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6627267f6260d7dbda92ab1e68fda1fb9389d5b50d88872cea46a46e48ff7815
Date: Sun, 24 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779600753
