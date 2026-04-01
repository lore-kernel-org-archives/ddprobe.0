Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FB31DF751
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775009694; cv=none; b=nq1FA11wXpBg6IsLF0WLsIYxrffOURx3cKNBBFrNGx/JG/2fQSlACQR+/Kg+p0MSNRQY14mV6NXBFbtW9LG8gbcgEJUULIxJqXYUlUDgWXrt+RXxfkIxCOHb9rIQxNfDBsZ6wnJzfuIUTY1MHoL6u/FwhXcTcdYyORojZkTMJV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775009694; c=relaxed/simple;
	bh=31Zl7oaY672gdRLOfnfCruyh//cKsGU0f0mQd0mlCqY=;
	h=To:Subject:From:Message-Id:Date; b=RyoBWY46jh8xt2YH4AgYUOXbsjtE+kcS8A2RDb7ygPL3OhiIrq16k5jobW5una3EUl/pCZ0srIh4Wql6HYrAhfnjFW7ZnJzSgUHXf7dX5+XxLNtIKGDe5fIjBg1G29P+ipaOEHwxaOubf3CraH7dYVLtmNLZ9FazK7TSLxM3r0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrN99MO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrN99MO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADF4C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775009693;
	bh=31Zl7oaY672gdRLOfnfCruyh//cKsGU0f0mQd0mlCqY=;
	h=To:Subject:From:Date:From;
	b=LrN99MO7r/GLR+isEdls+W9nWQPPmPWckz2kJyi1RzWZ05EZo897utA1DqCUSc2r3
	 zk9VsJxNDRIRB6xcn806+LAOqy0JGj3XbCaiV4F6xBGub8gUSLWt72LXUDBpY0QdZt
	 6EZ+iRRGnNnFH1b1l57EGmX9Mv6aZgG45aP+jVcBd+KRynQ2e/qX8rG7X+nVaR0/+v
	 lFB0sdx+mKufkz2EIeE3lqFkaiDIk/D7DPoJ8ru9t3YDXQf+bTTzT+DjJCXCnUDVYy
	 GrnOyZEy/DKuuyPU0lgZuTG/XlNLzqU3Pdwp64S5tEKPE9FD1I2ojX9ecDhPnfNK47
	 2VZTdPfZCoQVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE710F92EC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500969359.10890.5104354544505066949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421cbbf603f30e3eea93ceb5d27b1b99dfb09b4d262e60e100e0faeb35e2adbd
Date: Wed, 01 Apr 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775009693
