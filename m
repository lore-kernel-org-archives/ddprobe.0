Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252C3806C2
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773305694; cv=none; b=RfjRVvkiy6qE1+5PjbwOflxE46i3DCXWnY22cuMjpFmP9nA8tbdhaduJUQ981vZqgUjlH5yqx4e6bjaFNLg5MX2ZzYpFMagSm8WzdlPZTMJXFDfI0pBfKgoQcqgEicToKvqEBlYq95KfzkYjHF4y//uhDwBCY0R6cizfUu/vFdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773305694; c=relaxed/simple;
	bh=UIRMQfVuzyxnit0dI41lQKTKW1nn8WqhfQSx2gozuY0=;
	h=To:Subject:From:Message-Id:Date; b=Kcqwpm47ViMFKI4FZOyiwXtsBUiWXPPacZgYGoCyjM+BrpLjKnGAMlV/e+o38LLVhnDKKDG+GIO4MBA9da0wK6JTX2boxDdYh7vgo5QCXpR3+I37dm1pDKHXkCR4ZcsyqEWDZC9eCyF/dW/bYdKvNioQiVBqEkoSdGZ/cIN1VgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8+v4kpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8+v4kpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EFDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773305693;
	bh=UIRMQfVuzyxnit0dI41lQKTKW1nn8WqhfQSx2gozuY0=;
	h=To:Subject:From:Date:From;
	b=q8+v4kpYrrEvSIiqCmzdxeMYrjWB17DsOCQelMSGP5uXcMEOVr0y1udlBPOdj/bmB
	 akGBC8iiMXaylUQWOxmDUahSBk/51+duPfYNr/FoYtkqRses00Gf9GixXrrVuXznL1
	 4jo8rpQ5waNfKzhY7ZkJ9RG+LKWh54xPwHzznFodt51x/JdS7U647GfqSRDbsoyCp+
	 TUaO26R+mgphFIPKFFznPbaEGAw0f1lSA8b2FVYsfcVgEb5KYUKStd5cB4P+L67T5h
	 7WObpErdh9AbRmEkHzn4dHaHaQxkX4DgJt/ea1+WFfxzLsrWtUsx+tmWkArkS2bW68
	 NiN3LQq9EQOow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C0AFED2F1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177330569364.10612.11215193116448196369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74172e32e406d6d0f34bce98b2059dae7ccfab300fa92147183ccf3904187d48
Date: Thu, 12 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773305693
