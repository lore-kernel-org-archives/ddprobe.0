Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E99527CB02
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749157194; cv=none; b=HBvLR6clP6eJFZSZk8FiBNKdz6F00FrtTHP18ai+dX8f38QlLgh6Hf4DCZqRH4mUeedbxuUjxPZbK7VUPWBMq2yLKT2RKIcdNPR6vMSrn6rFJBCg6NOM/E7aJHHySFfMRYzXI3nLtpmp6So6KY4AaOjkwrnQfphpcc//k/fHIGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749157194; c=relaxed/simple;
	bh=q561BN5fLp8Ug3dS/yR6wofoJ1pmeojLWaWB3EVFG9g=;
	h=To:Subject:From:Message-Id:Date; b=d4njAIJjz+5mYgW+E5h1srSPuhjiVfF+CnewWU8YWvNtgxP2Vpr9xmCGGCJ8I+Os/yY8fJqHx/T7pvENZKaPZGtsh/GDvxq/IOjBpjaS2UUHZLCfdMsyNxVHYzucgz+fZoJIGaETL+4xdtKrLbZq7KYgzrRO02PcWotOZA7CqK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhcmQVUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhcmQVUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F22C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749157193;
	bh=q561BN5fLp8Ug3dS/yR6wofoJ1pmeojLWaWB3EVFG9g=;
	h=To:Subject:From:Date:From;
	b=nhcmQVUlqbkmTdZCI5HSfksNqGMtYm2m8oZ7Mx43N0tBQMfZe4BP/cK9HDSroRU8u
	 KT1Q9ZtBtkM6rz9hiVy3edgvffs12oqrDWaS9EL0o6V5kesE4NlwiKjsfYR553pvqv
	 cuGHBXNIxXQRbosk53rNSB4RK3PPNF/ETgpbttzOZA2VKwGIFJTtUI2oYOMQ+c2sps
	 G+nEEByjYh1E7H7u4xA8I7HiBojyOmZTpnxWS6KJ/LMKSeb59/+bpKctYch92c12ch
	 fGvQ/YEmuSYAUyhOwrViLao3OLsSTglS+Ra9ziRQF2m0gZ1ihqJGviULzfsj0DNpjv
	 wQT2nXoqkKxPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029BC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915719358.20036.14408198955504947325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7d047fa12a7ed3ca95769a1ca9a98143357ea3586bd9acb17819c0a19cbc77
Date: Thu, 05 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749157193
