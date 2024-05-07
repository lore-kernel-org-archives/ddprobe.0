Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F76114EC65
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715083343; cv=none; b=uwXrgQi4Dznru74iTdt6eVqS+O7Nn84rKTftCXJnEk4gA9Fx4C1t/zIRpfvEGGa/zHesdvh1KqlRm43N/x4vt8WQDaGXObv68k7DVW1wl1cneYCid8cdp19bm+1DNZeo9lRagBT7hXnTh/23kV6lvyx2CwyKZam5f5lkiZMZOZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715083343; c=relaxed/simple;
	bh=RjDyzASHJpEsh8J9Q26OT5bjaBXMx3fEaAf8e1RK4sE=;
	h=To:Subject:From:Message-Id:Date; b=Qnam69WbbFDZfhZBSJlFHzP0s0Cd2rDdyFuvqIH21LSbZi4lAcam4JfElwl/EuxBvvpiGWl15TcN+5CosUMOD/IZhLwW+yuDpHoSCcoL72cg3C4qgkYU7iYCT4X13CVZNS9Yz8TFQEApdxlPW/LNAg5eh7QYY/6s/SSOMLpWecU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgSfemjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgSfemjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40F7C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715083342;
	bh=RjDyzASHJpEsh8J9Q26OT5bjaBXMx3fEaAf8e1RK4sE=;
	h=To:Subject:From:Date:From;
	b=jgSfemjW9vDcwgvtl6x6Z2I10BQy4rdFvIe3647LDW8MG+yxFPBWMzLmbCdftolzu
	 c6ITdsFevhEEq8qNjYUf7EdRf7ZhXfJkQ+AFQ9Q0EjBzS99v+jeXi841IAHolzpAv0
	 E03Okz4KyErL9f8iUQRmNYCB+IPMspjJTnl9JlGGU7t/nD4qPGbvm2pHTMBPJx7iJz
	 5DnYwqRaU1HcxEudpeLhETZx7IFbwsvDpjSt3k0vtR0cT0wfK05PaZlUs/u58DE/VD
	 S7zY6Dl1jFMRQ/mQ4tjmODH/zkXy8lR7f7IhHjH1+oDuy79K+ISHRyVsqyYZ98c6zq
	 OlaWELpYjUTTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15D9C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171508334278.32655.18217639734628661654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010ef76daf11251f87eb8295b649d405f413bfa822eee2f81ce0d084be375b89
Date: Tue, 07 May 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715083342
