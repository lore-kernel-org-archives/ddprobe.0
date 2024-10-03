Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F75D19F422
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727967354; cv=none; b=m3AouM2zccjFBQWNItx90iZkBYN7PR6j70qp92iGpVAfbDhDuPzqPBb2ZbGYVgH8I41ZXpMPe+z5cg6MQ1mkMu9AfF9HlbVNTUg3jDqsnlsx13J+n5bkQCpy2hGRXV5yUgCx6ps7xZIN+K0Q9N+siIcapGs58KaBOA2i4NQ9O64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727967354; c=relaxed/simple;
	bh=3kf9t4XHNJAZAQ/FC3zUi32Uaxq+PumWZ03oG4WYeo4=;
	h=To:Subject:From:Message-Id:Date; b=MYeD+MsxXBFHuIzAjMrOUdV2FKK3ak3Va6GJreaIDnWyShxENpw9WXZ4PrEAVhYrwFO3hHM0E6TNwZA2qLnbL9d+hpsP+qtexNT8JnNw9DEFaHUX1onsnSRPMCDbg4fGYCIVFV2YxS74PKDXdiifAB9vW/+DyCfFb8w4B75kdCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2ttotje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2ttotje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B3C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727967353;
	bh=3kf9t4XHNJAZAQ/FC3zUi32Uaxq+PumWZ03oG4WYeo4=;
	h=To:Subject:From:Date:From;
	b=M2ttotje50LDIddcrcw6f63ZUm6U8ljfXNWS4wc8tylAt9e9120/z89cqfHlxH4nM
	 TEKC1rynBrgQwYP6Qr1apAeNvGJn4S2OEctwa6caj1V2i8gPkbE+kcX4q78AxdqbU8
	 SX9RTIprlGGaqHe87WuBmGNKe1ouDv07mskSxQm2lFxpjXOBRi5h4vkfUr/9+UO3Bg
	 yre9IcMTjdpHQXo+pstv7Fb4OytPMyACVM0ijiroMXe6orBDZ/b37vDfvVAk9Y1Dvz
	 sgoFrTKCy6fYavlpX9MU0dbLvClYLTIQUPg6vcXDU7J0MBYAVNTkpUSoH10ralTd7H
	 e+BwJgieJOwPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95422CF34B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796735360.21611.10283659064317963042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2348561fd11bdd9879fb100f5359312419a109de76c1e32bcbe14eb275a66e1e
Date: Thu, 03 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727967353
