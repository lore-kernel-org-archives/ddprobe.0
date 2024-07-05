Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEFD481AB
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720166723; cv=none; b=d6p0kSfI6Rp7+Pshv+Sf4xp0LkLYBmZaCuxZSMMlewBE3TjY/8Lh6i4OxbraPm2DYCYrilZRK8TblEgDesGqGtEI8wNLddFdOsxfQDcDODwctKp0X2wHRvsGEKZnUTgadyspnrmSRuKHIpnc0uVQJB8Mjh+8SahuVA1je6SgsHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720166723; c=relaxed/simple;
	bh=yThS6fhHYkKVu6bdYIDp/t4zZUodhcYVY1V5exXTYVU=;
	h=To:Subject:From:Message-Id:Date; b=kx7A4Wm9J+rflRayitxoCY5ycCGlCgwYs45KnD21u677HnTKAVc/zos7rioQkSxII1D1AeyH362wEHeDtaigcqFkKGHc9xL3tNj13SX1gjvTWeqrU90sXFJv92om0reojNGg7qi1W9r0zZ1KpNp36jLvmT6KF2X5t8bcqdw7etk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0LZfWnQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0LZfWnQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1AA1C4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720166723;
	bh=yThS6fhHYkKVu6bdYIDp/t4zZUodhcYVY1V5exXTYVU=;
	h=To:Subject:From:Date:From;
	b=Q0LZfWnQXGl08dRkvx1QzZgZ1B5NUv8zzapw2lsThjIhA5mzUe/LEK40X7EDI7wvy
	 fxmv3r5k3KLSrnF9ygqFlY5/0g8mcwgHFqsyNluBf2eWE9H8S0gAfrtHqZK7b0TdR6
	 DIcb4OcVPD2g6Qb6sJMKUAysTMCbLfxFazmFye3v2SGULZeDuUxPLjjqtoaBP6bsXy
	 7LLV4EM788+rR9d4Qw4mfkYKI1vZtCS0L9sqWub2Cvf3t6Tv0HnWA9lVYYPG+BkI76
	 JBSgZpClzEBawD31R5s4X9oGT/66p0KdnWyqQ88UTkQgwZwrJLYopCpnyczLIH7isf
	 7W58h/IT3FUrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D609DC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016672283.8895.14959643453411091084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9350f89a5bf271e3b458a920ca418fd0633e8eda105e2add0029ea4feac2cb
Date: Fri, 05 Jul 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720166722
