Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38483288C1F
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749218394; cv=none; b=pm+798jAyS38Xo2firdP4aY966wuBQ0/S15n54lm0umVnNhVdJ2l0VlsXYedifcnjFvcsWqDaNQ/AbRu0W27bjyXzi3rA7kXILC9nckpliCHwaPUGsYtoudK8tV0UQvSQp9l7BNZvsIIGJRGhLYexwW1lwGwCm2PBY3nfedddZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749218394; c=relaxed/simple;
	bh=YvmkkntRl5JiRbswTwVjEaN3bykSpEHLXECKXPicJVA=;
	h=To:Subject:From:Message-Id:Date; b=a3zkX/1iYO4pVzGMBF+YteRDEzVTKrg5YrAJjf/ItRe+80v/y6gRHxPCt3jEAu9i6uxxxHmYb7VRk48Yk2ivA+rV3ALfUOt8R/cYt+nru8DSKRPNzzrZImOTYzuZhWTNC+I+JMgBougqohdYCSp2iR4XatUdtvXx9ptfSE/GNoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVsxkmhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVsxkmhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB45C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749218393;
	bh=YvmkkntRl5JiRbswTwVjEaN3bykSpEHLXECKXPicJVA=;
	h=To:Subject:From:Date:From;
	b=jVsxkmhOYIwx9+5MPa+E8FUj45DEtb6SSJuwTjsmlO9Ok5Fz1VYRhjCKolJKsaNbJ
	 UdRqCqyyPGjrtNd4zjWZEVq/DkJtj6XqJp/9GfnR5hXgsCPhVPAG34XjnQPx/j+OCq
	 aAf2KptJM+ivckn1cR1SkPzENr9cwhYb+BdUdoeGAoqS9JdgdzY/W59lWjjp8u2jRV
	 yb3VCe2WwmkSEpbh8I9meMibqXjd583Geo3IAKQVf2F2049e+RG8FiObCGC4davgeU
	 cFjYt9EMEKzB3K4WhxhZx1z4EQ0TZ95rxbldPl5cLwpxU3PrvR/fH6eb40E3vwIn8e
	 KoZyIOMf5UB7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F596C5B555
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921839357.8074.14498020475589925558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f102f881b721b1d47dc182b7b3b30743d0a46057e1387562074d4208c9cbafc
Date: Fri, 06 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749218393
