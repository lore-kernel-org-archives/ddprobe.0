Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE719401A28
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773346494; cv=none; b=o0FH9tiT5x8kFID6ag9zq8ADvZoymmwCQMvIolch8aPmzmN9tma/HgSQx75JEWd8roCU7XqD86Az0x+oJ1w92H1ikp3vAMnuHb/lsPzzcC2PPi+nBrg4W+UfrmplQGKe6yBQPSxpvPfzpvTAgJYoa07NiAN7UT9KZ2QlqfQQg6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773346494; c=relaxed/simple;
	bh=GqP0GTuJSDR894KiNl2TCNxCF4K6r0fTxb7KhlXG5m4=;
	h=To:Subject:From:Message-Id:Date; b=nFBN0o/wvNXUDf2JDkerhY6OBwLo9QUl0cRCsHMQiT1iwGML3znjPALgmUsJkEI4hdldnoB1PoXqgT/WU36t5aTTMGEPgX6rylheWH5RimYd5Ubd8VQZZP8pGlb+3f2G5FA/R78ujQELVSRsSxatQW9178IEuFxAotsJncbKVoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAfWGWQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAfWGWQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6FCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773346493;
	bh=GqP0GTuJSDR894KiNl2TCNxCF4K6r0fTxb7KhlXG5m4=;
	h=To:Subject:From:Date:From;
	b=dAfWGWQiUn0vy31rvy1oLZnbjJP0QSvM53H9KMDPEDX1F5n1BUwLaKNq8THRCl4u6
	 Xdkj5260AZaMUfeJPvdRvuoeP9zWMvfvUtfffnRAkR2sRjLQUYSLX5W9e9QR9nXEPm
	 dohMDP8X0iZ9w+cZDG6AUgq4Gc8bnpAV9HWbe+h/cs571lV+CAVciRiTVeDitARtb9
	 /EQlOmev2TLDG8jpL4kzNtnnvbsSka3nK3XOnLDIsfE1jdbjuqB7GQ1LLiMJUgQ7Si
	 YchmuqkbceykzOOOznPZzIWEGT+QHs1qIGklNolHan0Aoc60puO9xJPJt5fjG4UAjw
	 UsdWk7jMPLngw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7C106ACE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334649357.15243.328136240807163187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b028969d54cc846d15ade0ba00fa2e9ff3e06fb1511ef3381a4d8fd2717d4b71
Date: Thu, 12 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773346493
