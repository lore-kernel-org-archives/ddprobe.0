Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE5B26CE0F
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758807594; cv=none; b=BEuMPgUbUg3fMqd3Dd0ZBJSD+CW7fJuvSwuL0RMifJhu+9bkqkACDHmVEbqcvsYDbHreGLSwloH2mu/C1ckAkKpgCrSm44voDkJN/W4yjT1j52Oie98XVpCikmJ3X/YxuP1O2opTa+n0B2/KgZ0Za4rZ+Ndlz4XoNKR4zRwOFUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758807594; c=relaxed/simple;
	bh=ufe+bbbpnB7XeJthFcKWwvx7WOGFYawm0SdSWmuyv9E=;
	h=To:Subject:From:Message-Id:Date; b=PNQqoNUT44BIHRxIl0g0ZMh/FGe/uSCYAte+8/1ORRxZMtne/H5MUnCg54N0V0oVME8kJ0hqZ6W4REORX2t/OCNSubZqpegsQcqqryQzuNDHUGrqshhlF7z0CSQyQ1AxErSNinehiOhgVqrBhgBQ3TPQ3wrTKOgup36/qu83dP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrAQ/k+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrAQ/k+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F11DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758807593;
	bh=ufe+bbbpnB7XeJthFcKWwvx7WOGFYawm0SdSWmuyv9E=;
	h=To:Subject:From:Date:From;
	b=FrAQ/k+ftxNR4kgNPaSHTKh57Lm9ks4NB5KUYwKo7uODHGUFuhTiNUFx9IOI2U492
	 Ny2XpH9gz56GAeevVXUuDNz1iIXlVHQqO2SP2xR8PB0RWXnjnTPMHow6bLGn8uc1og
	 pMGxcB0BFFdwDx6UIpw2ho0pzyPJQdFgzAqSBdaVNT+yVJJUhmieMvjFMLDOmld+kj
	 oEsXQk2bMFFAzCHMvEucLppE0GDpRhGel9YYU40mbnVltJ5SyOkp+Qo4Tek/kBuVPe
	 9IgXy0k06qaMdT+BMZCFzvudTRJ9kKf+DyHqX3Qh89E1ZWEKLCKUioLTTij5xddvm7
	 j0kJIRTtSxDjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA17CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880759358.30821.15960151716898452661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b1e9926a3f42f26abb8989115583e8611f57333c9ea1d8faf2a11349f83c11
Date: Thu, 25 Sep 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758807593
