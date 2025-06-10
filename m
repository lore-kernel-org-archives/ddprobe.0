Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C68722D7A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749566394; cv=none; b=eiG4tto535p96rO1yOAvTRPD+9jtji3J81U146r+UCfz40bz/8Kev3mj0deoIYHJn2OMAV+kcl5goGd3Gogwyu9CPJarEEYwr9kWLGyAyu+ICy6qo0ZEg0L/YrgDZvbu8mr7DsWrMKyp9aVeyuKRIsaG66Ao4d28KrgGLECLNx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749566394; c=relaxed/simple;
	bh=oRUPiJXWu+9QqoEtwFnkLfF12Bn5pdPndmR8PmNZclU=;
	h=To:Subject:From:Message-Id:Date; b=LrVpb22MPAOQX0rQ6tyfn+skVe+tqoLsdq4W3qZduYEfiUxOyEK5P8A1OffwY4lk8j5gmw3l3OR3OHvfVPmMfghVZ6i/BxFYc2KEFRcOXzxkKk83XGCuoyMnM+hB9wT7oxxJtBoSPDy9f5dWwgSJMuC1RGIqfJNI0i9Qk+h2NO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBcoO1pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBcoO1pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A062BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749566393;
	bh=oRUPiJXWu+9QqoEtwFnkLfF12Bn5pdPndmR8PmNZclU=;
	h=To:Subject:From:Date:From;
	b=PBcoO1peRLwup5TtIWzeRVvyGCdJXXfM47rPBBiJpM4h/oSDO7sreKrRiLQNCcdYj
	 E6davN1d57OGkE5sJU4jXy2aD5m/C8jHvHyWB6Mt7AGtYjsYGaPppMduqwLXcV+arW
	 60T5J4mIvsWvM3Js1tL7GixdVitWonH+OkU11YybdCFrrD3kCGCTCemMiRg2qCidzS
	 AEW1WZkTwkbo1d87NmD+1BHuksTdeRnbMEiLNjOZrbG/KrtlNEIB8p7JeKPKiZqnon
	 sbvgP/RAhKXxz04qS+kd43npagHVaJf1NtB0neZRiyNRlBephKfnmKiO3WbEqKAAiK
	 /3Qqe8zYtDQ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61EC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174956639358.22726.1742253194695113237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a142f0460e149ab0717331c441d41dd4022039d3c9c7adaee83b2988c88ebc48
Date: Tue, 10 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749566393
