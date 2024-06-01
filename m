Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6758914F9DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717258463; cv=none; b=DIMUEPAbUV77MSnr8HpfbbrTj7oD6Dg3vWiT4xLkyv6+bogRnsSBQ1YAVhi7vE1yAricwdHqVF5sEvMWoZcqqidTbFUofm4IjNdcYM8hDc5TlPPy9bUQYoQcC+sX8n3oFxd7JjUWRh27qNN0RMKrpd4YAtMCdklv6YAvX3PPypo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717258463; c=relaxed/simple;
	bh=z3niDpF8qXg9IGTDglChdEaYtkPLEe7F35Cmm2YgmL0=;
	h=To:Subject:From:Message-Id:Date; b=X14r9KQDY02UHslIsvHLztbYJ69wJrbeSRvo6URyM3GmnDbIkTEX4GvEe9KK2ZAXDTLvbIqKx14QIYLP8BYSzOGehlND3Xv+Rh1+reOAGUtEqSMRyJ3wzvMTBbuAp38ZaYbkImbgI7eWFEIU7qpiSMoClO3yPVAHDU0O7CjORCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhVze5wE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhVze5wE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC65BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717258462;
	bh=z3niDpF8qXg9IGTDglChdEaYtkPLEe7F35Cmm2YgmL0=;
	h=To:Subject:From:Date:From;
	b=EhVze5wE8uBi1uSbknHwYjaHO6+Vx8rg1owAh8KZmGt07jSNu1Y1SF85uNkfDBgK2
	 3+aHYVzzHnwaQn6npd3C4ekdDwcyKs84hP0oRiQbAsBSjvEwaf0PIkOLqJ6FhAwfdz
	 AFNmhW85isGrGUPPF3KIk5g/M1RhjLdYnLfkw93gshREoHlUEA1k6GnjT218oJYh/l
	 OPVOBTusdt2neEvCZ5ct5dywNpBn3A9tEEEhSxkdI9hKhMQd3g8c7JCVXaoWszT2qY
	 uZ3TvBIc47MTOAtDF4xMF8PqU5pvkRUc8AEPA8YbJeWUO4HHcGMAIwpiBwSBuPkYBZ
	 ES8LcTbxNKA8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1837C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725846277.18426.7413728024794252269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1fc360f136a009a65b4d348a959e2a026feb03e7b2525148c9cd1df6eea37f
Date: Sat, 01 Jun 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717258462
