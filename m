Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1130421348
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753548594; cv=none; b=u4silX69SnrDFQFt/Px8U6xoBuYt5P58uo1rcYrU99u6uIsiFrGSi3j+DMMoOOoEHw7YqfaO9PwceMpD1zzuz8udjdab16i+iyAGqNr6aQ7SsOBRAMElHsW3VfSKR0BiMJQVy6R4cBcFQ68VaOctTsV8H9ArrRgJ3awQ7rpty0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753548594; c=relaxed/simple;
	bh=1DIKy90eqqMV98JvvOZODdyYNJ9xmTCOj/y5GONQLXw=;
	h=To:Subject:From:Message-Id:Date; b=mGCWVmVq8uiD0xr72g6oAw1TPCySELLAUJWtH63mN0J4h0kYcfunLeeojxjSVp28eeEL41LxAXGNlJKkf130z5VnOFpazS3ffN6qeke4pey+i1QhcZKSW6qOmIxo2npDhuU9U5lwVWNaTaXjWbAYXI846A9mgbI2z/QkcDQrOJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyWu2PoA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyWu2PoA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03FCC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753548593;
	bh=1DIKy90eqqMV98JvvOZODdyYNJ9xmTCOj/y5GONQLXw=;
	h=To:Subject:From:Date:From;
	b=MyWu2PoAcm/Cgq9j7OZY6DaHpz22Qgn8ajh7DI3DS8YMoyOsXRoWpjAJRFSEKLvwZ
	 bSksPp4YyhBVgmbadmNA1LlGzziVo6nvr5dYtpJQaK/Z3xZmE52Vrdy5vnkh1MyK5+
	 dsbMEs3FOIW6p8bfWKtw4Fb3ICF7orX1mUOP1QkoNkVzbaSAjHg+vewW7TBdgvpKtm
	 KF9iEAnpeHQ5mrstKoiL+1LvqGD9qSBUpsjsgCOOhOt1R3Cj2MQoNtRRHsXfswrZNg
	 EAANhng5DA40wcPUkA+SyyTLE4aT61wuOzeQHAJDqiY4HyEbeVBUkey4dSrS5bfru+
	 vvC/HxkkvW7Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF04C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354859357.11494.3271331640721779190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539f148daaf1c64b5a28f23c1831e2f0f2e480814f364b97797b65b07f11bc4d
Date: Sat, 26 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753548593
