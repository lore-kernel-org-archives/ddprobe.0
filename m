Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1722C2144C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760110794; cv=none; b=M1zcYZbDHzWO3LK/xvc8bzL3Mw4AXceOBS/poNJtRcpyja3C2tk/NtAr1KoOxc5gT6ZfxC5smeQ99J0Pu3oP/jRlUSk6UwQS6l4JSIuFa3Hdz+1I6C2OEjI344KtvJ+OuA+56BSpR/H3coLpKMP9SUUVk3nO+/MH2oFe1qGtVaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760110794; c=relaxed/simple;
	bh=rgxmDgurCsHBMRVot3haPhMAsWgzUzdCGGJwQ8IiEFU=;
	h=To:Subject:From:Message-Id:Date; b=HNFXKY4yHxdKxQL7EwSTwv4JtkbfQhcdLeJZe86/VXLG7NVkOGI5pCtCuGVILxhIQ9b/hs4oCuFcIt8Fc4M04RT7lleTzS9HJ8w9kD507fwhPiRZOJR1A4oV5pwltTodkKQmMGgYex7JzEE9wE9Kx4GWt11/ELmlFCSyvxyyHu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq5rYEmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq5rYEmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760110793;
	bh=rgxmDgurCsHBMRVot3haPhMAsWgzUzdCGGJwQ8IiEFU=;
	h=To:Subject:From:Date:From;
	b=Wq5rYEmgpzeBJ87iyS3zTG1RGxkmwvXdu95iswz+9NmOCRhhTPhEM/3BFaD7Fznv6
	 Yt32/BEKcVUVch6vD/tq2oht0Ov1mindi8qFEreQnzFMBASYijeJvzu3gYJommu3FK
	 OuIon6mL8K5uLwZKydxvjkL/Ls16lpsuYOw1TJ/nsGk4iMuyZI80sFdpuviWBCg5Fk
	 /zHMPM2jj0SZReyPd+AYrMUBxLNGPIw2YonM5YwRkJWMf7NdFvzBKXjRMbewoa/l0M
	 v6Y9sPaOpxF/Ae6fabxGaOiVBOIDSOFOtFvIoVvJSDu0EOBp5v74MKZpRC+JCImY00
	 MBYg/dU8LMGyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F791CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176011079358.31623.2352855986325150051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df544f12ea89f899b2ac77613bcb93cbb866e2a580bfe1504f1bf7db629f2dc2
Date: Fri, 10 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760110793
