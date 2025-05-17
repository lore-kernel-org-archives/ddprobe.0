Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4587276026
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747469394; cv=none; b=CXnSDWxRnKL059aRVNv+H74XLxd/lfYHXWiNnxjmb2tCou8lAwJSdZ+kJJHFrrzL2NUxhdFAJcAbHJrubeT6JqFkcKXtI7FJNWbj8LyiiCw6AQLN+OQxg6Ue7YFlD0CWX9ToTEOiR8itax7GagsgwqsaCiJiociKRm8+EpZcA9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747469394; c=relaxed/simple;
	bh=v6EZSeDh998R3DmmJSCNFTZ5X9wfrLSQFsgNdA7x3mw=;
	h=To:Subject:From:Message-Id:Date; b=Ge036uy/TgZi82ZFcppgKKOwMRT4ToDbPXUI+4pgzvdl6tSnx9/GejY70cIuuxUF8GalEV4u/01Ps1OgKCJpT4juTkMPtPoxViRWlLkqYRl7lKoCACnxQglwKKAuDoQMdzJiY1O1WbC4vePWUF8Xw9/AXr2hmheiyiZodTDiXSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GE7y7dQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GE7y7dQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68CCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747469393;
	bh=v6EZSeDh998R3DmmJSCNFTZ5X9wfrLSQFsgNdA7x3mw=;
	h=To:Subject:From:Date:From;
	b=GE7y7dQBAWhOwbdKCwunp7FWOTgAi6+sWwyKmLpM0Xfq8yHIpMFJhv+dKRoLfMYms
	 dtdwExTyuLfmNptJTOkjOcF1qQanbfFNbHW/pDqXW6U/5CoNHFPsmNhI+TXaSEMg7l
	 pQU7Xaql09PibKtOmeLugF39huLrYWrBqHlPA0UCI4J2TwYj1weZ0qbWcqj5sm8Dm2
	 O+Sksoa043roOroGlVnL4+L0nb2CKeLt4Zl8eo1S9fPevT3maqW/hjmvDYNR4kzin1
	 80bs+ZRAO81emiURbCCVgUrD7b3X6xTlu1qx459jtd1hs+SWDzRu9pHEArgR1PD4e2
	 2Qw4ycMePeTLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFBC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746939357.313.6793348908370309237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2710375eabd2d9cfd05e374af1426f8e6b81748c913186181673ae8f50a35441
Date: Sat, 17 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747469393
