Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269DD298987
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766611434; cv=none; b=Rv7AJzK2jvW5NrXiVn2uLRwxUAznEyVq8/iCeFlX2cGy6etVjYAQNniCbcT8s9mDo4D9x6ZXaE4ikwreaGYOBua9VLD9LXCxMilS1mqUvagnbFc078nT5fc+bYWRkJDvFDpA6MSJzo5C1lFKLvf1qm1GtrwxUjm+K89M3pdhAgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766611434; c=relaxed/simple;
	bh=NAa07kg4haziLzFhgZfAJsuD84cROBkmVaX7ZotN4lw=;
	h=To:Subject:From:Message-Id:Date; b=WUflkrABs2lxbC5cU8lwAGJOew3uSgNmYh2lTNfkVEFX+0bEkT3A1W4s5PZO4jxylVdNJbMKvFvCyXWtmiWicKWl0aZ0Ob7acMQ7mV9YGFywyegPWiCb2n9UwEDIphpo9isKwa4tSI5nlrvaeMeWgZpEeWtsr0071R6M08ov11U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+K5Z0w4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+K5Z0w4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EEBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766611433;
	bh=NAa07kg4haziLzFhgZfAJsuD84cROBkmVaX7ZotN4lw=;
	h=To:Subject:From:Date:From;
	b=X+K5Z0w4P3nyyAgk/S0TR2b/cuNfsUr2aTW6FIkjqkZukg+0BrFyhsEDpRA2hRHXf
	 2r/hG9MqpOtB1TyVVvTWoAhaXMIe7eRxtaFTNT/gZqvAv0dI7xvEGGvqlcYMGApdnL
	 jotb/JIDBObMZ6VmK+tXB00xJ3e0er1W15+rdc0dPRQM6DQO4P6CkosqYJjYDEs2oI
	 A2PXtlAXTiMT+JR2bWK0V5tf8VSKc1zM1CmrxFoQId4m/uvmLSXgYcK53E+7oppEmp
	 IZQR2IVRJrHu3X5tsu2xen4Gwgny5u11Bwe0U7L4zssNi9HDsJt2DIm4DhbHeBcRA2
	 TRei6jdUXhhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C3BE78497
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661143357.5944.14464155131815281340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a2450e0829f300391c01c03629184c3477601d14c753b97c5fc95a854fa01c
Date: Wed, 24 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766611433
