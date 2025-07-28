Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228C5273D92
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753721394; cv=none; b=MiSl9as80qWrDw7CruS5bojSovtr276MUa/87Ib++xQFafrK/zewg9LWk3zdbVBfy8p2EsJaWUkNdzpsF844ka1IhtUIQzFrW3is7z5rLi+sf6wY6Xayzxo4s2gdUc+Y+QbY61Ca8pGqAF5Vspkdhih4FDZTLU8Ey5d7jQ71aho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753721394; c=relaxed/simple;
	bh=VXMoRlcjulw1nh6E2DkcHSGkhaHyIyoN3MND0dOkymw=;
	h=To:Subject:From:Message-Id:Date; b=UMhYkKnGe5lPIJyJcWtHYd2mKJoJeM6PDXFzL5HOurfxvhUEKcqNh1gumdtTR2i+Ko8uRmZN63PEW6pLRU4JQWqXUbIjU1HajRKZjYgzVavD0G8p+Tss/4lEQvWseGKNdDKlG6PLuVCqxU17GaXIdtyrm+4LLuefxF/Us+Go/fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQOxkHuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQOxkHuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB9EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753721393;
	bh=VXMoRlcjulw1nh6E2DkcHSGkhaHyIyoN3MND0dOkymw=;
	h=To:Subject:From:Date:From;
	b=SQOxkHuAuP8AhAKEU9nptFH10nBx+sFrSDVMpcvfwEHM310OGMfWTQ6MgbysPRkTQ
	 3nQeC5AzVaCi9mh8iDFzlZVuqq7lyVo8r8uu+I6uJ6i81Lx1ymU209J4DJVnnR1mSQ
	 hfEwzWGpomEzFIyTO802PvQPDadGnA6O+qu5SmlFCFD2Uobgnb4403jy0ZLE6VX37A
	 /0xQhrBnNnXUctIdMaVd1HXDOyG898TH2QQBFP6ZKBOxQsKw41WgNl/cnRaU9eNU5n
	 +JBbcHudyUJI5z72VJnQMU1R4ybhP0UA+CgGEzokqI1w6fWIFu8kzlLKFrr+KMSgYM
	 0nASETMP6WMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B8C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372139357.32246.12248507010783579171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d19490d6b1d6a92b6c3d7a35c718cc33292fa7b22d385efffdbcb78c263b576a
Date: Mon, 28 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753721393
