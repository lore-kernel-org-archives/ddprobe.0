Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1C0223DE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788578434; cv=none; b=YlDYUuxRTGhjMpHoUHyH8r2nozLkuEMYDRL+aTAUv9ctSlcd/3dpmiHp/Vlps0QDvGrA2E+Vas5kPrRpTXN5HYsAAh1JjewjOOYVURcW+Bl9qxWXK9PizdDePiox6PfDDJZWEGtWlO32C5+0tjTFFrkNdh2ky8dSgIj+jnJA0as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788578434; c=relaxed/simple;
	bh=eiaKlJBVssdL8lyz37Bmuvv2XQXnuMQBQL8zvRo+hI4=;
	h=To:Subject:From:Message-Id:Date; b=RSqdf0xQT79ffkx7PS9WQGdZ6SaKtGsdhyUd/kpXJdLyKr7CYwRXRYWUeHr5hsPwa7qec3urXdC3dOt4zghVLU8Z6n4eW3cChimUEl8ZIn67n4/JR5kbMiu2aq+7dS2r6Wk6VyoAp8bytcSlHeuLaTkmy8d7r4V/GdM9GIYQfqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlyNylFz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlyNylFz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82BAC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788578433;
	bh=eiaKlJBVssdL8lyz37Bmuvv2XQXnuMQBQL8zvRo+hI4=;
	h=To:Subject:From:Date:From;
	b=mlyNylFzKRiNKOxVMAn6SKBEJjdH0sXF8GM8JhfB2l+ZgWLjs4iyaLw7iaxiofOnY
	 Y8ByW0BQPZyl++0aNHadNIHG+TO8tCs4GIzTlXM+H8P1DAdJgZO1WA3GLSBg7LuSpl
	 BnPkfxbhyh53zCnqqbq8fWY771Bb5iFwp4uZTh63atLTMGRjvnEvU1VIiictDCRpvK
	 18uAOFuVwh6ygvaJgSr0seRUsNilfi9iaFhcW1j7XZeG/VsCgWaaSeuQL+T54RiO4J
	 aX96+/kawPnIV5le+LTJzIt7iJWSwhJa32bPTs6KOAJ3DNOp/tF8KW2b1VR2QoE3At
	 1mcbHOSsc95LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B425BC79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857843370.28631.11028165841156591088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5c9a64c81566989c7471ebfe08f653471f588161e75733b6104c5ebada80cd
Date: Sat, 05 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788578433
