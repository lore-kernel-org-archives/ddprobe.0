Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3865C1A28D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 08:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726128356; cv=none; b=e1RpTtq47rvq9tffAJMfhx0zDtfP+WyvNOkit+8zII/wo4paF/U3LYgmvZlBJ0YAAW8gDnVcoKztUSe03Y9DpXf2THDcp2AKCO3MYNzfQ4KdY1H8wk4PlukRX8kll4DTQWqGAAAhfBj1VBj9fjk4PlB1qSmbgKfP6SNeAIVy7Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726128356; c=relaxed/simple;
	bh=FnQpifzhoszcjAaSPyKtMfnlZh3GmXRc+saYnGpd8G0=;
	h=To:Subject:From:Message-Id:Date; b=bJnIayadH48JKcN50wnqH9ZAylUYOYW/qtD+8nSGZPy0M0jM9iY/4Flp9kPB6KtMsKw62GMqO+TiozOG0csWbcy6N4kI6Mz/6Lp4tkN6uVUOjiIo1vzHZgwvS8JFuJ7zLX0gWny46NsBro9GvNxFXwEXHLSUKwxY2it/nT4llUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ+Iqsz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ+Iqsz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1998C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726128353;
	bh=FnQpifzhoszcjAaSPyKtMfnlZh3GmXRc+saYnGpd8G0=;
	h=To:Subject:From:Date:From;
	b=FJ+Iqsz8knSE41A1m0+Rl9eHUv1nkPsi4gFPCDd+Y4b8Stp6GSTpaqH79E9Smz41D
	 5y+VT4zrfpC6uWsLamSwSdwapJTTmIayEQ4Rg347lxeSPYvoePpHE/CAACxxP883Rc
	 8IRriNc7C6ikcUtXEadq45G8FCl/YAV8ZDHyhJrUmFVkFx3xhiZafIFMyx1nD72Zh/
	 xGsRT5OBOe3klHTZYlFckndwHVtwj+CVsFz32E/66gaEWaIPW7JcB4UbY4XFt1jKA8
	 HJnMnGMPWEA2iTp7JaZ7Pm9asaY9/p2PbpiKhfQ3M2ep9YjV96syfxT4wHmdee8FTG
	 10W3rU6jh1w8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C54EE645D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172612835358.24024.17001522499483352605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6235627b62f1b43a31c4f666af5adc1b3de9ce436a017dce576306eabd222a42
Date: Thu, 12 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726128353
