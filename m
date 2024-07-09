Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFEF2BB1C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720502183; cv=none; b=toax9btatjW9G344KCgPQUKWxTqKTDEBglcDBz6XuNLsX5q1hCZGuDs+BjAz5wpmTYTNebPVM57K+g5ZLQYkafKoAicdekkUlGVmmx09zv1XnAp1Fbx18NBJDLJTyl4JmLySBoFdH4HqOvjOHKPCm8a6vvED3KOMcF4IXjmil2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720502183; c=relaxed/simple;
	bh=5aqNQFZBUMK2iJWaCPDKuDPGKtxzNThlHRJwQWPX0OU=;
	h=To:Subject:From:Message-Id:Date; b=LhJ3qNbVtJbMjl78z2P9oh5WIY5q44RxlkxXJrSagrY6AM88SZWKSAF0IxR7rW3QzopGifDHzCBeRuTBkfntQYN1Jf0DZOMqYJ57PQSstSaCxMf799lkVbSOlUSNWQrS014cU/DeiS9FChKqbuIsCIarhcwydx7i15Tcou5VWJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OJTwAu5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJTwAu5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD213C32782
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720502182;
	bh=5aqNQFZBUMK2iJWaCPDKuDPGKtxzNThlHRJwQWPX0OU=;
	h=To:Subject:From:Date:From;
	b=OJTwAu5BbYiibV9mut6Ci0Tul1mvl1JXnyGkamBT0U3IkHS0Mml1hcbkpKJAhhrFO
	 Zq/HEPHjx2CTbYWqvGUs2AeBw0KpPruGTyTW0ebi4wDkx0hFzTJVDFbTC4kkdZoesx
	 U4b1lTnx+Q40i439xUw81SgdZ66+eZWqIB+1rCCVu7wtG42XU6x1I55/FXqwlr47Fw
	 BWjG0xJM9Hd+VqSnjx2EULhVBCmQniIXrfEO6jRgRtuiiyrGPjzl3+hOyXit2bnZPy
	 2t+3mPydnni/2/wuw6us/kPtfSLkMWD2j80CzB8QQTjtZ/Bx2wHGkAuPxpEtGTsJ+Y
	 Rktm0xfDpZ1kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C69A5C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 05:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050218277.5198.5898789312481794585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ebbb25579b20f01b9bf6f98e8ef741fb1a3cbebb1a7c3fceba674dc8650de5
Date: Tue, 09 Jul 2024 05:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720502182
