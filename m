Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3322D194C96
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752719994; cv=none; b=oBoePSI5FE1i50TNM8uH+8W696tOB612IOFzkP/co54wqLJff3wYv0ViHeQwfscSnn9MMSbWCC9MnIu1ow3cALxuoq4SvSFEXzUP2mDZ3N4z4m0iZD+2hR3eGLfSUPsPti9WhBtK3Hkwq01M2GOvVMS8JANv4OtLbMyfz5Ussmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752719994; c=relaxed/simple;
	bh=0KhmvIF0m1fUKq/KPke91O6OozxKSvDewkP5eKwTOB8=;
	h=To:Subject:From:Message-Id:Date; b=OPjCAgeHw+biwPATPICTZ/SPHmsL0zwV8g8UP4jXS2O86TwZhVUGCoquO8fvNN/niRQvsrRY5hH9zYQ0DodptZnuLjmMArQwLUnI5QGbfmbgYeTX8eOkH45FqAHzDMI/tY+6G/j8ACTjbgS0CDVpmW+BG4PVnX7Ofbm0YXD4vko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYbsbWYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYbsbWYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BA0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752719993;
	bh=0KhmvIF0m1fUKq/KPke91O6OozxKSvDewkP5eKwTOB8=;
	h=To:Subject:From:Date:From;
	b=AYbsbWYmMiGZ5UQyJ/oGi7rccjSCjeNqjuWMcELIp7bHPQhsQFtFyiUl1Kl4N30Hy
	 bgni54VVOw9XOjh0LKzjznZ9jhYIakZXmbeGSG6qsTYCW7Qk3BYH59N/WvseNo8PI6
	 Sh2nelax765z6hG4iDj4LMBV5HVsZBV26M4oRXHxzB1U9WMVD3Ej4lI5tHZicXOQt7
	 /e9Eg9gSJaCZu+FSs+1AA/Wa9Ewb4cL2KUdVb52toXDyeX5lyLGeG9tBJvLlsq9NPk
	 /kws2+nGRQItCFej+dfq5RNIxJYJuTLwo6OSl7e7PmMfmkwIVZraCuOux6NZNbpYFX
	 8TnWuu2JN+u5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD1C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271999357.7983.11099145047487165046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04535d8b7e5b6f09e020ac199bbf1f8bbd252306948df348082067ba0e7c8cd5
Date: Thu, 17 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752719993
