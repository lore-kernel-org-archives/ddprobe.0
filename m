Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4051FC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753554594; cv=none; b=VKmrkxPfW2vZZVF7j0coKaGHZm32g5D3GEGJ4dr7LkfvIqP2GD3LTfBkY67cmASxRON2GOw5CKae2GgT0pk7AxvkRV9Kxr/GGGxhcxdk8nSDahkvkndCzj20lYcObAfUGlq2bGfnZj0p45/KxTCjuGaX1QOEagKnw+vH31j5IWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753554594; c=relaxed/simple;
	bh=dE8mJ7Fbq381sXhbIJBluSGuUeV+sUXyDsH69/8HjJY=;
	h=To:Subject:From:Message-Id:Date; b=vCKR40tFk1aE+EOqxS4XbagcABASwxXbCz43lbNT6l9hs9x+OaAUbHSatoWSK8SsSbZG4DJbUMbH0RiAwnjwQC2kyLE+ADybWL7VpMD/gsv1BGK0kQyXLOjRaJRQgh/3Jr7mSHK+XgVVZ7HJuOSSZFZIAe/2BLkHTeYBsgNlnlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9m41iTD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9m41iTD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABB2C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753554593;
	bh=dE8mJ7Fbq381sXhbIJBluSGuUeV+sUXyDsH69/8HjJY=;
	h=To:Subject:From:Date:From;
	b=R9m41iTDcQL9VXJrlY/Q2UBAdV24gln0eIqSxzOR44rzpRWWW+2uh5mmdZX6k8BVy
	 QjQ+7TNz+4TgrGgZgGuKdm8HrpoaeRRK3VRTjrSmATz1Dc0ASizD7oyScNtIiz96vK
	 JYWHT4q0abujebSIoxc4IW2Sv7ZYWgJr7mU99Y3jSkWss2DgDcFn4Rd5ZL5EFYKiNg
	 oUpsjWC1WAXSMLk+G2w3Ik4JMsqsCxMlWTYNtEr1Bi5v5AhtfBEx8Sc99dcouHM4/S
	 s4M1wvJOMBBIg7VFWPvCU/nXxGbWzftB9C6DWL0nRz+FlD22x2Vwm++11d1c87dvQn
	 23crpRXTwhX2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6EC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355459357.16236.2309292597045665407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbeaa33293579b23cf6a6b1533ed677ee553be377c851799f36a174791debd79
Date: Sat, 26 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753554593
