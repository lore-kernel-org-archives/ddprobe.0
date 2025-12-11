Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43098313268
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765460574; cv=none; b=opxRqOm3sjGrUBcNIXFMY7TI9c5WOBtivanJeklhvnKpnD+6z+SmGUNNMBCA+lf2cv0YGr0vr+98k0vncI/eCyMx8nKeLfVoGqHnVlD9PeJ4bsoT7qk49g7/ZD3ktzxLkIF4TMnu6swr4uTDYhD9iw39/LIfpL2cI9qvQMBFIDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765460574; c=relaxed/simple;
	bh=uaqAyhSSR62/9TCkFgtp2zwXJu2fV49xgwOwA/7p6Yc=;
	h=To:Subject:From:Message-Id:Date; b=Mb5inqxDmNlkVT53nKAKq2ECKih2Kxec9KjXZUt4o9NOWcvtjgcgcJJTMJafFzenC/gq0V5MZSj+wXTFGKg9VvUsD2DEt9wb111kinRictSixoAvN9QjtN10eYryu6JtgaNjYpiEGvd2dgh1JIa0kRf7ZBg1PG4LoLnhaHcUYU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffrR5u0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffrR5u0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C21C113D0
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765460573;
	bh=uaqAyhSSR62/9TCkFgtp2zwXJu2fV49xgwOwA/7p6Yc=;
	h=To:Subject:From:Date:From;
	b=ffrR5u0xgosrq53Q/+xDDIeuwEUmcNFwIrK9IM9rsy6g4/ijEuVq04Ccz2xIBL1s5
	 fcf5dvt07248vyAqp7TS9pujdN8AbD7M8ztwizzMBw21g/lJSUGgekeLqDgTjD/Hjk
	 gBkwV8iUFQQaF04hboO4pqpNGvyDVhvJL99LnO+gP+C5uyQZAP1+JrE0agKCCpWVih
	 wXvT216HXVEOJWrVQZNqj3VulbwAQ42PwhM3YYEW6IWtpNG560Q/N8bMZamzHkwCh4
	 Ciinsu9BjsvUSSXLDfHeI6G4w7A1+eXwzirhDMF7d7xu9927NuXDoCmuAi7ifDX6v2
	 QH/4AUY8hkvLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968B6D41C35
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546057360.3358.15540282330977024452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246b0e07de596d3e2bf80c06087ce81d38a7c5c7bc50ea2866c7896d47ba3327
Date: Thu, 11 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765460573
