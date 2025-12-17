Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDC73D6F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765929834; cv=none; b=j6AO1uL4L+l+I5BEKmFio0VAas6PmxtyuNcjtUG3WdIekgqJbJ0reCCPN5414XFcLnMnTDZXKkQxIBHm3XCgxoazsfFfXXjRQz8/8v3G6XsyFR3/nR0hP6qYneCxFvgm7cnlYy0Zy473FWgO1BbHs6NgyNy7cYTnOxMC0H8z9F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765929834; c=relaxed/simple;
	bh=MgQqbAFxcYHseAEH4RZr8CZuq8HcnuE3C+qpXvZVVK8=;
	h=To:Subject:From:Message-Id:Date; b=gOKuKKodvJzKyFfMkXhZtde8eJzec3iQSEtkyAtYLehMVEfOCHVvGiGB+f3VztL0XTqAWyFW0G/uakafsAkOgQPCDBpDrSswPjZVXhI/OmMHUYcm++cA7smzcvJBHRf4PUhIe2F6qq6+PY7BgOjee3cr2TIlZfsBXtM4/KzWnbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkc8R3A3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkc8R3A3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A561FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765929833;
	bh=MgQqbAFxcYHseAEH4RZr8CZuq8HcnuE3C+qpXvZVVK8=;
	h=To:Subject:From:Date:From;
	b=tkc8R3A3V7t2M3eVV6Fz3EXRnYzkvffgnfnv/bKLDegzYRxFik2A7b3zBUeDQCA2K
	 /1tT6aIK9JgduRuaxVmfoAW97GU45Cf7Cp0dJPu9vxeAXpENU3+61n0S0xkqzPBjzM
	 auAnjgIrP9+peiMkD8nXQESE1gRDjK38+xGs2rRKsSuJiSLN9cTT1p8B/8gTCq92iW
	 VUUiNUTwY6DaV9pWce7eum+CIp6AXjH6c/YkRAw6O+VmnCtnRsXQDY4RR+lEw/Mi8p
	 S7R7RidaJtLYmnimwGS4tY4hfMJgFGtgVqB3g2cw4nnonqNIPWdtKwN7uouS8lHCu6
	 hKCR40cm6r/6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944EDD64060
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592983358.12211.15316791506912001959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4394ddd6b511858c0b0b0f75d03bfaeab5288e91ba1b2e49f7bda3545c6096dc
Date: Wed, 17 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765929833
