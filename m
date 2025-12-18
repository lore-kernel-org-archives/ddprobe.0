Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2E81E32D3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766041434; cv=none; b=izJZvbgzPeELaZo4rPcDTT4aEyAmyZ7rFvZVDrDw4ESlSbCmFRxqBKkgYsKUVwNpdWstitbQGQ+cBusKdU4nGwMI8EtAOotWJnkehO9C2FrTsV4UxzZKKonrgayyPPOp7OodMUMdNiqKDQVk/hPEIm4u86OfOZkXm87KpwpopKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766041434; c=relaxed/simple;
	bh=rO6xTdUU7SA8jww+wmP46oCrmG1Gx5iQAY68EB2825Q=;
	h=To:Subject:From:Message-Id:Date; b=GxA2GsApZtvXTQtdV5YPnDhzpZXB4fFDcTYFGfocETEc8vLq4Ou6ylwYmXFzJdVUQ36OA7Q8oT5y96Q+rNrJ6L7fNdvr76CjpMScf8r1UFJqffEU3CPShrHEDE8tUwaetDdDoHVeEATqCWd1p/FrsVkyh2+pVHiT6utd5NuhI9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abn3pZwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abn3pZwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEEC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766041433;
	bh=rO6xTdUU7SA8jww+wmP46oCrmG1Gx5iQAY68EB2825Q=;
	h=To:Subject:From:Date:From;
	b=abn3pZwo2BRmkpIAbtAF8SHkA+hX7tlKUjcQqogXp90dsAYiiGvqE9kogk3KPwy6R
	 Wh7f4c4vBEI4PHAYBCV1rEJ/8uPmNFjTz9Uqn17aN38J9D85jzp5vrun5g/iOQgY86
	 uuX6q4pVa4J4dnUOQvoGSqDsjoJQUPKc1dkrF5K5YQOj8Xfbt1sS0KxROU+Pb4sByr
	 UbsU7498ewL4mvCbvOkz9NKmmRcCYtchalfYEbvYFlHdAU5aV6j/2cT6+HdB3QAE3g
	 w2n9kK0U1OaPaZKpYHTjrjhS0WIkhZItJt/7i3XLgKG6Bum4P97NvX1sU/Ot9nFXqH
	 CER9/bhuW9LDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A66D68BE3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604143358.1477.14626416084963011264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5422f46f2767f3a14f7fc5c4924b8d7cd626d4b3680ccb950f8bc744f6c64cc
Date: Thu, 18 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766041433
