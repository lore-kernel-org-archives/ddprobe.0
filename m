Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB1B1C84DC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784795374; cv=none; b=tj+uJuVxp3h6+g2d1DnHATfm3vXkC/AkmHQ2y2b0XHf+cIhLxL+TFHwCxq0yqqhqcXKmPU90H05tewUFYVnz/8ZuTWVHMjuAkbTURpJgwVq1He3EHNWa947/ZfmthObIAy1AJkCnBGpNjQZbHpkYRPsZusALClkiqDrpoHhDJ7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784795374; c=relaxed/simple;
	bh=aOoaoQlE0oW/r1xDGT2817a6b0CPrYHIkF5TbnxwD8o=;
	h=To:Subject:From:Message-Id:Date; b=rHseQrXaIPPthnc1EawLB0z5NconZNEkfGMCHT/Az27R1oc4jNDn53jf+9ZYJHLrBCtc64SV8whn5UCAinVgUx14iWTkSqIkY+0FjqyVjixb316pE+4RYju8wDGkoWB49jd8QmQNBncTQ7KVKRefBO4gNq0SqnuFjtsDYO4thEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJPyuB/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJPyuB/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C26C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784795374;
	bh=aOoaoQlE0oW/r1xDGT2817a6b0CPrYHIkF5TbnxwD8o=;
	h=To:Subject:From:Date:From;
	b=IJPyuB/jmMGaVCTDO7cVZndcEKevaCT1sAZvGy6Js48mPaOPoAfaG9wiml6oIwGwv
	 hc1abZv8XSUfArm0dEZduox35MLkTcSDyAJFI8tNJIKsh1Oshbla5xTpraN068LZMo
	 RE2dmrkOEz5sT9/WL0ANPxbR56gHcav5uPOzACg0+SWG2z5jVlT/+8excCj8GDuZS0
	 AtatLaTzfdh9sSUj8088ZRQDGn5KZr9BkUS28r0LEpGml7zvJzn6VF1b8QpJvwz+xq
	 reD8a1Q74Pw4Fa6LlbQSklyGPh1bVtDjrnqjjxlfZ9/jS3W0VaozW0kkjJBbU6vARX
	 AQg8/BRAw4GUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1506C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479537371.20526.13619121930298491922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9ee857642b0421f6cf410937969b011c28fd74f4705903112f3aa6d17f611b
Date: Thu, 23 Jul 2026 08:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784795373
