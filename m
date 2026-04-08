Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C23F37C939
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775641534; cv=none; b=gF1Gm0o0kP+0xCN/jJfWQ2c2GVcTf1IkX12fWq9h9cWDmEIU7LnhYGLeooOuasLY4evgrjSJFdnTt58IH4kcswNMenybPGaZ6U2kMidEtycy7zb0prqIW8r8QhHAAvhEgLLP5GMMVF0swrBhYmiuzTD8rDVq9m4a4+b4UAIRCh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775641534; c=relaxed/simple;
	bh=oLBauRJENTlJBjsDSaSTSrmzCEKn/MRbttmEVJSY3n0=;
	h=To:Subject:From:Message-Id:Date; b=L3FzeiMbpDMTPxJlmPwRYgLr/M3nNvZ6S4AzIhsO2Llv4MXMXKBjCHWvKVhyZd9vVW9MCvXELLZI2TqV6gTCIQRxjE7HfgEhE5uXedkrH/IWJLREfA1AKSynu877+9DofR/AEBO+3rx8KA5sgHd9skgos0bsqy/2Fli9CbAQUOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+qn7Vy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+qn7Vy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3871C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775641533;
	bh=oLBauRJENTlJBjsDSaSTSrmzCEKn/MRbttmEVJSY3n0=;
	h=To:Subject:From:Date:From;
	b=n+qn7Vy0NSc48oxXsbzNQ8hTHR+kWhiPhO5FUd0jvNyj/vk3Wu0rGx7wTmC7ccRfr
	 pxIsnEoa71KvNHTV/uFG3gEhCVG3zW9NOVraGhJ+P43fKvVRXRgVEWqqAXJoVBTUNY
	 8l/KYy3CCjtNM6n62i4ANuQ8wrF1ao/YXiSnySpQeFP0TH6iZe7tMzjaLsKI+zoJCq
	 ppBd49Iv+nyNlBWcpJxZoDzt13TQwn8RVtGH2MeEqqtskGCxPIp6TTeLJgW55tu89s
	 xPGALqL3jK9PrltXLvzAeEXcE73bYJ3+368xdVNEHHxdr3lwdjytzecE15YQkGejgD
	 evyrMm9F3o21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF88E1073C85
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564153370.16884.5804185582859536574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c57c003e592a742be95f0f65f51f1a4f731bad27a2ab727fb8b46c8f4b9481
Date: Wed, 08 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775641533
