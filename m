Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255A57082D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775990854; cv=none; b=EHqbUJnK47kRSJR+z04cSlCL79abPYP7ZM9JL90GgTjCgNrba7/2T08N3s/K0AUU4wh/6ppQUdpOEe5YN2Xb1iRaghsuSyrSsOsGMQ8PkwPS5L44LvR6l4pEzzniS0iVXNT7NdORgJIy86qAnOS84qqv3XdzNuJE0BRJEeZ4GGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775990854; c=relaxed/simple;
	bh=W7m4D5XvGFVHmxbbOB/urRTR01ft0UxIQeVsftaIRBg=;
	h=To:Subject:From:Message-Id:Date; b=lMQt3lGlKTAHVm+9209EUsq+dnqhFg2mPwq53oD9Sj1CsQFqOgpCoYWYqZ7oBzwnro9DsPZEDHR/ktkz178fTBx8sEcaz22Wlpe2Mj/GcYUBF8KBllYk7bBnfm351yejrVNFuNJM5xsmb+bRSGJWbYrvWlLpgJO1Gi+dzev6oG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4atXGXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4atXGXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD07EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775990853;
	bh=W7m4D5XvGFVHmxbbOB/urRTR01ft0UxIQeVsftaIRBg=;
	h=To:Subject:From:Date:From;
	b=Z4atXGXcNQi95gLOZaJWboAidXrxYy6FARXMAJjo6BheFQW4t/q149ryFOW2gNR7e
	 7RhZ4scKZSGwHadUr/AXUaDpIhU+vBtHbyQsI7oyo3wEe6pHi28VJhgMetINjAe0lr
	 I3ViE8aDz/JItnckQ/vJJJdfjVj4CQKn9xql7a9RzGauknsVyKbdJzmKrnEiIIBrBO
	 bk0RXg67I/26nZC/mRQXzsgaOK/3VAR2ZfsYVhxgUVcs7J302WRgCbnkre37yE5owN
	 TMZq8wMBfASePQshP17zq2JUT6s95ho6J0UiGuuxtCTjE0aIo1hh6r9+FddJFpZSvl
	 Masw6h6Kcl+QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB5EF45A18
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599085369.20062.7613895952349107138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e07727725f02d8cc1857a2cd114da74e3f169f543503952bf1747feb6fe6b7
Date: Sun, 12 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775990853
