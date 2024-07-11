Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF2D15217E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720741643; cv=none; b=sJe/CYBay6rAVFzeCe1EdawGSVmW/yXScsRA4f7VDZUqvOivgf0eWakjdIDoi6BpxUah4tdAKbw+smtKtj4HbEbYvztxxpidj4aYJqmI4+OEbPwASXTcneY06GrA8WIwidf652a0TNu7ssa5wbMx5kUkFrHgEtNBnRCHydzdXvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720741643; c=relaxed/simple;
	bh=V94pu/Zcun2lTafSZeTFI7Xu/IM1lK9x6Q3Gjyg7m9s=;
	h=To:Subject:From:Message-Id:Date; b=ruGLmj3ncjjkqNFD/6HyAgCF8+EoWTxZpNjssq+C/3BYQyCulOihHiae4jlk70vE8Cjexrj2FGR5vjXgcPzPunhJTRiELYx5JxH+HcbBWiS17vJewSx9C2XR+8OZgM8rSWUy1B4XMngo4da1xfhBtvXUgR76sM8XEytAFhR2lCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+DoS3bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+DoS3bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 010ECC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720741643;
	bh=V94pu/Zcun2lTafSZeTFI7Xu/IM1lK9x6Q3Gjyg7m9s=;
	h=To:Subject:From:Date:From;
	b=f+DoS3bgafES1Fobqd6x01jNwx7i6j0ihxJBjyKF1ypa/9dO4tCrsYlES7ZkRwHsv
	 lN0w1zsHuEj8+CerbiBumGvyLRNtBdo4y7SPs3r6vMfOJcIeXP5k0DFzkHw4GuoLUU
	 WuWCGK/ZVf1YBmrWI+ZAkWZUX66+LBI5PpyazCI/SEXH216msgJMfc8kc+YkZ/jHFf
	 JJ2D/MhMnN+DftuGcAQ8wWZ5MDTuPwSvjR5yR0Df+asMwkpv5CQfG8rTcUNEnJ/llb
	 FEpFW8FFeI7lQAOYE/i5lq24TwMjrwa8j460FnV2FUfjDKzah0d7NVbh2ygUDfA8qx
	 mLZmZbtvDM0sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE725C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 23:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074164286.19332.10110441971015013428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6b7aab7552e2c229af25350eaa5fd75d5ae9b8af5c77ac5eb05b1b001c49b1
Date: Thu, 11 Jul 2024 23:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720741642
