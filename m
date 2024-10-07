Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C749101C4
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728300954; cv=none; b=n5yvbJk7hMVURekjh37c+5MLR38PDXu+6C/mOaeD9+LXTAjqHJdHHe+9Dm+C+lFCw0+Ehk0mFCsCktQ3jys1MWbwuUcib+NIZ/I0Z38ohKJ2v2k1XRW/nn0XZMzldcS1RmE4KJIzG+IzI5jLye9R+pRMrSAuY/nJFd41DTflMYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728300954; c=relaxed/simple;
	bh=2fv8SHTSB8dw3xsCunWLXqE/eIJUvMLXZEV82Y8WDuU=;
	h=To:Subject:From:Message-Id:Date; b=ARrNz0cu+myG/LgLvPWdvfGGxKFI3ZKp20PzPmnblfYKdliIe2nJYh/DxjvcX3OLme7R2KdXrIlALNmm0tirFGycvGrnIoI0C7e+J77jw92GaRIduWcQLsuJs7FDD9KvneKzRydayCEZXCUAKHjUf9mTTzlskSXVV7bzGFTJgpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLXjBt8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLXjBt8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5678C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728300953;
	bh=2fv8SHTSB8dw3xsCunWLXqE/eIJUvMLXZEV82Y8WDuU=;
	h=To:Subject:From:Date:From;
	b=DLXjBt8HzAhcO0y4Lcuo/aTKYb1s4C+6QeZ7LVu/F+J90gbyPxU5HRzN6zAmGLguo
	 6C3zv1czDfSMlGwHM/JGVjnEJi9oMPyMJ0t3fe2lwJNNGpfBDAKwtz2/s+giv/lKhf
	 pMdLHEJRlBZ5HP3BYmx9kSVqXhcsl0/xMW2lNLRp6b1fBOpb44r3S1+iLpu2U/irf9
	 sLmGBusZ6v474H5pFMQCx0K2FbrEpyZWafRNOOhQdrLrQ9FSonCUQZxdaqGZqmYDks
	 QahIHNOBJMEf33ALXclF6iTUMV13XMgwSLi9tBIy8q+Ca5K6vpM3FhU30iV548xIaQ
	 BZLktLUbw0v5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B91CFB43F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830095358.10881.4330356674435725437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a12f41640f182e9866e166b356c7119ed13c1ceba7aa1f5ee369d5c4e571905
Date: Mon, 07 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728300953
