Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4FF175A83
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785984634; cv=none; b=YGpyhknp4tbMs1BcS5gjsaA373E+AyYuzO9Ooc3vRmZ8Jmr1KhHZ/XsqjmnTQYmxci5gpIHds1aQdDzQLlmaRgSG8cZpPcw5P8e65z9iykApB64nc8ngrCF79qR5iEy0w7urZJ4A9UZr2O8fvl6DEhObdXJk/GjHxFHQ4qcKy8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785984634; c=relaxed/simple;
	bh=Zz37hy/SRmFUNhvQNr9L/DQ9UzRn9JvYYpiVPO6IT2g=;
	h=To:Subject:From:Message-Id:Date; b=gbV1vQ9GVEVAWkLr1ddC3e8fnK6pj4yw6K3i9fpe2oBwitX6MnFw5qbd8AYwiJMpb0gsLO82lfooQ+1RXUlmQeYZkOkfBZom0WetQX5qIzd9ly5qn/kYyIIzHVpOvtmSgaFbncpJIUcVRqMwNW/GIhX3Eb9j6KzRWSfUKWbehI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAn7ompD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAn7ompD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34D0C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785984633;
	bh=Zz37hy/SRmFUNhvQNr9L/DQ9UzRn9JvYYpiVPO6IT2g=;
	h=To:Subject:From:Date:From;
	b=dAn7ompDMb/PWQM3aeHR40pzW4I7jVgfoxsSW7q77zTrULQhFucJJW96D37s9XUYL
	 cjd8cP0S1hJBaFOJOsuZojN0IE7GeZtlwmh1HvQPIAYFnxz7SR3pskUYIIKMw0m0yu
	 8taOhvc564NP4TvYHNEPDoa8xbQdGu0b7GVy95jnIzYM3MILoLhz+NwYwhRK9/SXq3
	 iSns7hsU4Ab19xTLJ6FDjhg9NA8Sg15Nvk0ZYTwW+bIHBRpkKuAhAUtlv+UMIXrAKd
	 +6wbko5oWAUJgHwm3JrUz2E3BTLI/U7xNvDr/G0Y7WzjsnioP4OO6YNkpkSkN3F4V6
	 bQQpJuxd50Tog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8DDC55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598463369.8771.16426381659502545998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b43b83a928903a3d020c737bde814943a6877d1de161f76471a59e3d6b7d25
Date: Thu, 06 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785984633
