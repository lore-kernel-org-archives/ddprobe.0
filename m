Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218411C1AD9
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732184754; cv=none; b=SupurJmJ4lhxLpxnKX1L6UjtbzK+4BRVnHz0wsLxWGW2BFd9X8JBbAiadOo68Gj+gSsmpeUYaODT36zvlN8mu1xwC+bA65rm4HemwW5QbvW06VOSyfLivSE149uVDLjXzgT6VrZV7FTbJexjlDXQjMLxUw1hWjOJpCdE0A6JvYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732184754; c=relaxed/simple;
	bh=E6NCNC1qdfHfI/51yvPfAoHvjVpnNfBFfAtg1XRVQN0=;
	h=To:Subject:From:Message-Id:Date; b=VLsVqifJQk3ZejTetbr/Ncr87AvIg/gXdSY0sScqPrDDUFoVSvpCjGFChZqmfB0LoSS5ATKe64KJwQ0ArhcTPcAG/8yvIppJMdHgus+dsLCaQWoVOHGSMEtyD6MoTxErh0fHIqoOokitquIWgmeo8OZESlPhNsF4yGgZzYBZi0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXFQDxJ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXFQDxJ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BCAC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732184753;
	bh=E6NCNC1qdfHfI/51yvPfAoHvjVpnNfBFfAtg1XRVQN0=;
	h=To:Subject:From:Date:From;
	b=LXFQDxJ87wKztXFWzW8MHO2uQBMFyZ/oXEa85QYscGdPNMgx4m6rTBARu5iMLB89q
	 N8o3vrV7+z9k5mqEmepFDmj1vv2ED5Vq/9RbKxv3Pb8652hLbaGYv50g0poo2zEMtp
	 L+LMJECsEjlbLbLSEsY+Hnmgu8dmQ2VL5BK1VPzgajzAGz3E2G1enIqXTXAl+SGBG2
	 U5vjv35ufpXOmMlf5JfyhxWJULqj7Rcww/Vz2kDfT+t9G86VRKWh08fHV80lrfPBWF
	 K+l5nj3jGecAUlgz2yKRiQJ6m1UISYJDA/UQD13VxKIRh6iVOVaFNLIWlAUU/DGrTb
	 Unz8Q0u4L/nLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B846D711CA
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173218475362.11920.1968345037085576919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa413b576d2e52ff0a0921d73606de3c27d1b6b3a23bdfafa7274ba0f6601fb
Date: Thu, 21 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732184753
