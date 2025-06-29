Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3022B2576
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751219394; cv=none; b=XvBMMIzXeyj1C+51X4+fStyiU8isP2ADnpxTxFxUDuBHoO6WO2cPo+7hBufVQFZRo96gv+DFpO5aCm0HtjU2Q0ICd28RZK1Z6n4KoAlCQcFtZIswn8AlfeJ6XJYW1T1CYbqT3K96WA8J53uvA0XnM24T+wX95a1P2uDYVCx/tAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751219394; c=relaxed/simple;
	bh=DLjMDH5EsaxdWVsxGj3I+L3moWPz4jNg5obCYKD9kxM=;
	h=To:Subject:From:Message-Id:Date; b=qfcy52vDt2NGFzK5MZYssXRQ1qje/B/l6Ddgyf0i/D7J0tR0AQUHDMM+aRpOWHpxB1sdw0PAZNvmmSWy1Q0LFyL+jRnfe/k65qHDIA4fRKrvuaZsWhrMV4se2aBrwXyfZeJnbVb+rsz/t/zNza+gFisF6OIin0qM7eqZn0FFzHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA4cMGEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA4cMGEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC58C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751219393;
	bh=DLjMDH5EsaxdWVsxGj3I+L3moWPz4jNg5obCYKD9kxM=;
	h=To:Subject:From:Date:From;
	b=kA4cMGECd7Htn9F0MHYECiEyeYtb518IhUVilki4TZ6rCQKDb/rGPDhMCno+47mNy
	 33P1LAh1Pfv+QK/kx/KXj6/mHbL0ZGLCUp2vtjgOowmJy2vrqGyFTGKFuPMIGxeEPa
	 ZCiJcREuZivvR0Tik8gbiMyScE9oD48vWCy4JSNPdsMxC+I5WMcbmZfoihz3Jvylyk
	 6X7xJW0Z/CMQwQ3MPeKJT56rL+8tHf2Ddd7rIV6dMACk2S1+fkmstlQTjOSqphetnr
	 AG2DNkN3iB9o+xB66OKXpp1Ps6bcgbZnNDhBXPW3LTnTjSe9JhKDXZX1VPwVdkSbgd
	 Cc532H2Fr/s8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7E8C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121939357.4289.6934242273094555654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5b1a4aadb89699962fc9b8b4cdfa259945dfadca53c1819d0b7a907d4bf436
Date: Sun, 29 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751219393
