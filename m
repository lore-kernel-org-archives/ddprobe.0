Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A9E3033E6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784893235; cv=none; b=iqbIdn9qo9beVfuhGIEdurr512ciZoC59xHSdd+KlFlb6Pb+QgLWBFEo/TGoFcoOZsKikHzWLDJHhogirqcK7t3V1cE7vkAGQxmGLbwReCx5MkUtQ0mgTHAzx0CU5mFq5rlC5ZJa4VB6ig9Jn6QDjDfjtNBzteIcRjAI2kBsBmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784893235; c=relaxed/simple;
	bh=xjk9a/rNr6eXJ9IWUUwgGCulXH34txLtb11AIWN155Q=;
	h=To:Subject:From:Message-Id:Date; b=OwJ/57EUv9YfSJwDy/KgWJV56LC+cB2KP0swVrs+EUxu7WGx1tuGbp5YpFkJBuZE+lbA0s64BtSVAgQHwbinK8svXwW9C4FeSTbNvsD3TKoxHkFda0h5Fs/OPowY6RfVvz0Qk6lF2Ky+KL/K6eE3g9PGqEfsApQ7F5BYnFwvm9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elK1GlT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elK1GlT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3A0C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784893233;
	bh=xjk9a/rNr6eXJ9IWUUwgGCulXH34txLtb11AIWN155Q=;
	h=To:Subject:From:Date:From;
	b=elK1GlT9KXChwagYZNdniouzDShEbBfo0GTbXMDc9lW4ASsDyhIoWYbKqlJqdlNed
	 LaWvt/XKH/jz1duND11zSr8KHl3z9zZiefXZik50Bm+8NgUHYvpbtSL5X1hGHmMoxN
	 eVP9FF3d/dVyZBHYemoX26yU0uQbfvIgVMa37Jl4bNOG7pLeziSnrO0Kch4feI5s8Y
	 QdvKpNwfOSzXyFbhrzoIRQzOwlnR0KGlTosjfVzylVrJttpIeqYyEOBveTCpe0BOBz
	 0zzkOg9vS7uetr9s++AKJlSzywgPBW34aHBBfoLEFKO73c83dsiAB8RneSqvfmkYUf
	 iCsrHgyCUh1uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94DBC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489323368.7947.5156553574039494052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c7c546ef60da1125a3cac9a54556c6a947fdac6ce87bd3e2dffaf5b685f301
Date: Fri, 24 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784893233
