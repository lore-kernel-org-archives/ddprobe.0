Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1189626AED
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721580354; cv=none; b=t03gjcwXxH/NL2zjny63BjUVKlH4mObs4D1RCiGAXIKNXXMazEYpTCDgfK/AE4biotR0gzceLSkOFHje5u0gkT+6af5XLlELVMiZpsPmH8g/XvxfitytC8tDGwyDzV+Th59cx9xXJINZvPsousqXnZ+voh3HBw2zTXMukMf//wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721580354; c=relaxed/simple;
	bh=cLoPyDKO7+F22q3jaRtBnjo1Cu7ZSTi0PzH3fC2lXZs=;
	h=To:Subject:From:Message-Id:Date; b=Wl+D6vIyYeAhUUCg39Ym4E2uIHoM1ypkbc1bJpe2Z0RNYQIuZn3ra9ICrjR5iDrHaa7evR84hrKPnmhn9xCq1n+mIcE9AOpi8t4iJIlgqqtNcYeR46GDRv4Q9xjch0Zl5gSz6A9ZQQ6BT/8z4CF+5f2+8kLBo6JhS8KxchJ2hKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bp/kYoPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bp/kYoPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D5C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721580353;
	bh=cLoPyDKO7+F22q3jaRtBnjo1Cu7ZSTi0PzH3fC2lXZs=;
	h=To:Subject:From:Date:From;
	b=bp/kYoPjRou+ECX8p+MecOOHE/bMTPhwMQPXRMkQS58VtzX8EB+QKrJ3p165sDK/d
	 CZOWNDmRConoPrt0OHDi9XzcxAZcq8FajY0tLDNQ4lcEWluj5fcq0kw4aGVRrqvbn1
	 D9xpvuW0UyCwx4Tr1DdobGbXu/gJ/JvW4rbTbeawrm1QsDHUUDCKpX3YVeQ8W93oVB
	 4TpDIFgcACpmEl42L2W3+rvM5TR99zk0tmhzfvGU3pKsFVqmPBLv/ppzElB6rx7ZrA
	 Jrqe88jcV2MbgWesr3PmTucITK2ThtrxyPi+xFWG1p+1zh6Yv/OcE9dkpY34qWjG4i
	 OVa6+NkAui31w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E81C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158035358.1994.7395869591365877464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e10508461d278d79bfb47c15221098d7555b8d740f1d3b31143fd01596b244
Date: Sun, 21 Jul 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721580353
