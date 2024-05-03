Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513CB1367
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714726943; cv=none; b=GYU8ElPrUD/P+lOODaoRUKM36IDpEMfSBGkYe17PgqjxeTjo0EMBsRqBrPojJjqHuP+Dop0Wp7MKPJma6sskFpH8Fl+gBpyHbmq4vx9H7VaeD7VPlpvRRdNGmYCKG821ANs89xRV/ZytRBGDE0F4LK4DDYEXGfA3CA0rulgk9gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714726943; c=relaxed/simple;
	bh=+16+cS5RzEnlYOqHvI03eCjcq87NIILOu+mpN90H1cs=;
	h=To:Subject:From:Message-Id:Date; b=DQF+vrxHsOwT51d91Akj810d9q63v3WQCSz35ZnvEz1bcq4X7SER7ac/jVvM0mjGYoTPpsgo2Lgz3hN2+5e0jhVI91AgZSowlwWVBh1dkZsdw7KThotPI3sJF+UO3LovX6xf3W6S7wnBYJSt5EhrrNABisaQ7tkuJGhqZTjO0c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSVF86nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSVF86nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16C9C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714726942;
	bh=+16+cS5RzEnlYOqHvI03eCjcq87NIILOu+mpN90H1cs=;
	h=To:Subject:From:Date:From;
	b=OSVF86nfbpozh6OIFMPBSW+mguh3SFbyOzkeRHSfYKaCJ7iBWu21DFFT9elHe/ZOc
	 +bNr2npwWYHU12qlLnGQBZOivVHaeBH6xc6Sro/AZ5fQjHTPhnWjipo5dHo0Caaue3
	 WugB8IlvlIwaqD9+2Ev8cifOP69zCCcMJ1Q/iF8OR3XHsfDngxVJNuTcMq/hfjxOmO
	 KYjkyQZ3wCOpgtwqy8YczdlizJd2jH5Xqf6LI0Y87007Z6V28hI8X76YNLKXnw3s6+
	 u2ScYcni4qPyvvGsXl6Gr5+n5aLZ2EnYCxmWmqdJhdadP2MGEf6mDbog8YedQo0Bz/
	 HgucsMgkBm0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC88DC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472694276.28066.4438540178023403516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e644f8e3c7a45aec6f16ac766e04706ede265b9a93f51d9cdebf716699f39bff
Date: Fri, 03 May 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714726942
