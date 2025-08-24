Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3C7393DD1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756045194; cv=none; b=uLxNXf89bArIaNe2UgqX9nV1PT+TYYd9UGWJyca1pL8iGF/2SggSX3Bm+nIJfmE9hMSAVCnIODII89Cd4gJ6mIWWqVsMLumcukSxH30GToH4aSGWS7cIo4ouIZpbv9FvVvKpzxmYlF2utwc9QetvHTMxqhJmRqmY6pKnfzcYAIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756045194; c=relaxed/simple;
	bh=VxXvunlCe/7EsebL34kAHU2TVanv75S0ONfOiFe+SVk=;
	h=To:Subject:From:Message-Id:Date; b=iJdZnDZeanV/LR77WMxl5pHyZEM3huRf3sE5vBRTdYuDYl4lSOo+mudi00lpxhcFON2SIabb+hse+gEUnXlHh9Zr0f6zOD1U5Sm1xKnHL9MCRhvnHuNc3nDo0Wz1VemVSo/pgYhinLsdjGSvQ6nOnb6FW095Y/KSRoA4m8OKc0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGcvzIQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGcvzIQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECE6C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756045193;
	bh=VxXvunlCe/7EsebL34kAHU2TVanv75S0ONfOiFe+SVk=;
	h=To:Subject:From:Date:From;
	b=bGcvzIQGPiqP6nLNf3j3fwi6bcmROy675B6+xRg9Hav4HbiDJWW3W7PTo1NdieTZ1
	 XrCHLKNLO6Xq9DxRAArf1EqHmd428+LQtRntJCySdy5hMq2+o8o6Mwy2y0/uWlIrOA
	 3dP/qQliolKo1JwZiINwdOxlbggeZbWjLGSemlHUIIi2M1lOc0Sp83e7/PPpN6bdbx
	 pdSHHfTmTUbAvcVPjB9F64aQKFP21mXcsNtUeWk8moZfwObkzQTpws2645djaQWJn+
	 05VDtC6+gzwYXxZ0ON0WtoWfH1a1+PxhFBPBK/++LsWjemkuPq7wl86weOp3MaASyP
	 jzGSdDJrzpGnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12BCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175604519357.3903.10482054350284560633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d6472876fcc32799c923a41897f6bf5c8ff06674bb27f37d11e4768c1e9727
Date: Sun, 24 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756045193
