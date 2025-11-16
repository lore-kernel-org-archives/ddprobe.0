Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCC8248F75
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763322114; cv=none; b=t7I2tJbfJNbGYl4iRihmCzLL3kjwtP5UXnGUEqp3Q42jlcfsV8G3rdCaPHYOt9vC0D1EDUxpBs4eANzlLKprxOsxQgRc1PvJiVr+yiYB8La77s+oH0R9uDJ05StCjnjrIuRYI+u1adVx/jmTsWO23+h/jvyNEzH34nvNxUwRnzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763322114; c=relaxed/simple;
	bh=8lOx8QWMjSmg44qeVZYhvCme9b1i4sbsfllhx3WiNg4=;
	h=To:Subject:From:Message-Id:Date; b=XbU5WioMmWwsmbgfYIKHdadLU/lc+rzIpllZFaGATQtXTi2G3kInxD6NRqEu7ZZkrC0C/3/FFV31fXUoM/5JxwzSUac0tzFtkVDwss0LwDT3ZeRaLfBpZ75Od/M0qWk+BN7JUSvq3dMzlvlbRSyboSIJ/FaSGZ3Oi5/vQGgZf8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIXTlgZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIXTlgZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FB6C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763322113;
	bh=8lOx8QWMjSmg44qeVZYhvCme9b1i4sbsfllhx3WiNg4=;
	h=To:Subject:From:Date:From;
	b=mIXTlgZ/EuFSTHQd831EC9jq+EL8siraY3GjFAw7vlhqrBYQEVHME3CpVQ8Yie755
	 bPr17lZhu7JEkKJW4ZnJnzbXxGQ4RCHCnNJ2v9l6KeNVrXOpLOFd0dIYInVCSPmvED
	 hwcF/E0hVAd1sQztro3mHddRCNANtu9L98bJZCLg31yGvyWaAQfN1nq3Y9E9fhnsZL
	 NfDx00hz8BxBz0jbL2M1j6rT80TV2dPyMFR2fjLHrwG5wDx6VWeA8H65WQ1pAf4m77
	 IsYebyOERVzGmmONj80tQKi7rEsfX1UNpUCNY9VqRc4PwGeC8K4g9pWb6ngjDYgxNh
	 tuHevIsNooZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C633CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332211363.19618.5962140900561078175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb82601cc282695f434d52e6234eca419398e05dc6e4070d6e6c96d75faa31e1
Date: Sun, 16 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763322113
