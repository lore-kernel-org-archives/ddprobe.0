Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179BE1F4C8B
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756344594; cv=none; b=QdRIi0fK3p2u0LQII2/O/hUc4A9jbWaOt/WiEaCJ7ITRIVsFP6SzQK41cVDV3mZBolQ9QSX6ilFhg35Ng6INP/zLaAKjVKBAZ5ymZZb6d4qVJ1y5Igw7iqu0xdUa3D5itaB4hNAdDH4dH/KPwYNut0xpU/vJcSxl6b65A1M2xHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756344594; c=relaxed/simple;
	bh=J9BxVouGZLfK6CaFztEW78YFWSOUkkVy14ea3jF+HQw=;
	h=To:Subject:From:Message-Id:Date; b=W9e74CixG+rPYrCmK6ApQM/Cd+zTV1mnHsznDfpSlF6xSD0L1rX5mxa2FyT2A+NE+bWImhGhxYuIMWznV6hbpEWAMKrOtU9kRaB2g5GUAg+m473Q8NxU5svSCu4sGS5eFKskdou1r0HMbZUiL3qahwYVAiaRJV2M1OK7f6qLvOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CV/kcpJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CV/kcpJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E67C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756344593;
	bh=J9BxVouGZLfK6CaFztEW78YFWSOUkkVy14ea3jF+HQw=;
	h=To:Subject:From:Date:From;
	b=CV/kcpJ54ktpQmRCdPxYihop4TQ0OSCrPkSqe77CZX5SMBwbRpO2dNPSvG3QTB59L
	 nIH4xxLStcR9hyZceJKr/aSiFES0UIrWHUI/wu8I1/xQKZ7efLpvChaLSiF9gAoiaG
	 SS7g2m5U5yUqJ1H1aVpxuKaZLQ2CgK+AwPIpAfWBJXKfUfGMyypFas4OkPGm1bKNYl
	 TOGb2a31Gy7l2z2z+uPlshwVbkOqO/DKJD93dIx3mvbltKiehJK+k3zcZ+f2Sb4zL8
	 1qT1z260QExneWBBPykanawfgoHaOORZRkVfLRc94SXMlVRq1U/Fruyt2aHxKM8DVz
	 Y1PinPwESXL2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90297CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634459358.14503.4078470176069307209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9175543a31f2c2254e0aa31ccb59de973fb1e5be5743d43f01e4cfe7055623cf
Date: Thu, 28 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756344593
