Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBF04A3C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766734434; cv=none; b=Nih7OIfKB0SROLayx5KlU8gYU5iz2/uxNu3z/Kk9PpWAHCh7L977Ve9mXl0EEUWJqcBAqVLPDfJVkPb8+mJbeokNktLuRWs48KbNV6zbvLb/uO8twgB6AwtpWWIqOrD8IVAQwFhHc26Sa3NcpB0WV34dhCMVuUWn8ISizqNwSgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766734434; c=relaxed/simple;
	bh=DSKw9WCFUBaz/b5a9SV7h36lWOG3kA9MOCdGyMMjRqQ=;
	h=To:Subject:From:Message-Id:Date; b=VGPrCtRemYvhhED3jt6z60Bn7X+WIevPsRGCWdoEbrG+tUjL0ZkDT2CG2RNslXPPYXWrjMjqW05yDEmVSxzHaZfQURCoxqFDRCCWjPTwrlpYZkn+RrigtCIDOlxbHrJAtouvMX9GBve/vB7Y3mc4wqRCg75qBIr1fEJJMaNm0Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyd6uKcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyd6uKcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FBAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766734433;
	bh=DSKw9WCFUBaz/b5a9SV7h36lWOG3kA9MOCdGyMMjRqQ=;
	h=To:Subject:From:Date:From;
	b=gyd6uKcDdUURkSvf+XPZ2wUhM1p6Quy3pR0KiEv57DMgbs/yZo/UYLEk1sRva33xn
	 3nZMyPZSrjutjhJ5m3SYPZz21y68/aRvN1l1xmkqh61/EYyEkNjn+CEG8H8UKkYPsn
	 ViWHXcoRiUhHPEN0WBSz6g7Opw06+pqbrlOhQJ3zvFphIil3/91hRu0WK51hbZH/P+
	 4oqcGNTpC/vF9IYNAXYfoeEPSVNPMQQCCBERyq3SNn5ISZ3yQM9DLgLlXmzU7Lrupl
	 61GbUKUOA/KCgz5tCAQSoDjQfZlva90vrCeIhVmFsQtTp2f6hOGCiYE2zQ+yaIXlPl
	 sjRZ1sxuspBdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A2E8FDA1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673443358.8603.17782252039631479059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77acb5a07ff6a182acc1969d188292bdeb51804a6da4dcccb2f21584b450b374
Date: Fri, 26 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766734433
