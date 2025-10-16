Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16358DDD2
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760640594; cv=none; b=WcQ+lKFxneVKB17vhb+/pFo96mUUgmlPd9nKP8niN7adO4epeHeKrgeB4w5ZLEQYKA3UgPjgT8LvlzXTTZBra/ZGWgnkLcrvcC+xI0Cj6zJE6zYf1RYtlPuOrr24NIZBlgPw3Sb+M9vXmhMcFFLhwHXUaB18CYhLNhRHB/WWH8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760640594; c=relaxed/simple;
	bh=RupOjYwEeiaQuh4FTi0N+kr8iq/qNSPgssGuBTyz4Hs=;
	h=To:Subject:From:Message-Id:Date; b=qCSh0vluzG0fjo+NUYY/u9Z9LxvZRMs6rmonj95mcItxcnUHpAQbA9/zBodiaf+V05qZ1otTz1tYv9+6H14xkwgbiDXfDE3KuVaCc3lZSwqEYJ7Dm2SlgOG0sH9hi31fZYyWQ4Qig2fOug6U8WeorKnG2Ae9R12DIldJI8I+FmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojtwLt15; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojtwLt15"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760640593;
	bh=RupOjYwEeiaQuh4FTi0N+kr8iq/qNSPgssGuBTyz4Hs=;
	h=To:Subject:From:Date:From;
	b=ojtwLt15MXW2R65YqhXcgR7Tl63Jr/h+UqvKi8ldg/VSbb3YO5w6a7HQ6q1oHQDsK
	 dRQbu8xUARQggwgqeOACXUeNW1ifk3zt4j7LMxbXSFvHXmDJC+cxZMP2tzB8llGimo
	 qMTH4kauMcFk0UH6evinws99i235tC5PGsT6Z2i4kNDubsEoYx2Ub5N5DoqEKoJGBw
	 p3GD9QeSX++BpX2AMAG5a85u/UCu/d3ALxZQr3ZNTkx7WjKJi0YfKdSEZ48WG7S0z4
	 JWg4OZHeWZBYPsrqakZ6XhZ2eE+w8Fg2gyUlq98W/rdEdHqOBaVOoUwa5nZCizVbV1
	 O2fJcVvb5abcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9080BCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064059358.1023.9226574611948239139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff66a55ffe478a3a799ceeedea317bef3d799d53003447fd41c70831b313db8
Date: Thu, 16 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760640593
