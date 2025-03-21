Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EEFE1DED40
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742521194; cv=none; b=qhCVtQFZX+nh/DmUq8LV3B8onw8CxDQMHQxsAYbhClhdfKGUAT95ofQ42q4UOZDcSPsGXwALoehYnHT2tXdBXJPh43b5sz76vCxcOtxHNTZMHaCZ14rTWoN9uqOLwxiMD1FLMrCD6dRZzgSSgVY/MFig/u+ssEzC0hjKPI4gvXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742521194; c=relaxed/simple;
	bh=dKuAPXR0Jq/4QLLV93yrlObvP1uStxI+46c+zFlyhuY=;
	h=To:Subject:From:Message-Id:Date; b=Tkr86HRGZpr2ofqgsEVY2rXAuZrMxwQptyVefdhdD6r59CpX5Mw0XozYUFN47jHM6VSXODpbkhaXzSHr3apEDtsKq+FIreQzreJxLG+DWaEpUSgDPIF7P3GCJeg+0zXHCjxuJJYLWW0V62K6e7gIwVFFyJ9J7D+P0zTe98UA2F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMlMrutL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMlMrutL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D77C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742521193;
	bh=dKuAPXR0Jq/4QLLV93yrlObvP1uStxI+46c+zFlyhuY=;
	h=To:Subject:From:Date:From;
	b=MMlMrutLXFENtOrEJRdgZGxd3W6JeNOn7oHjCea2Zz9VP+8M9nqpCaMbVdx3VC6dB
	 +BQI4QPs+fGAMCRASiTQN46JMzPv3BP1j4wD+KYx3pOJnbh71M0/1Ysy4jg3nHSXmI
	 uaWxrBtu7r0FT6YKsmgPrX24cctf6+Mykffxybv2tG73riGnEIGcBheUecwPuosLZ9
	 ep180SFl2r2G0z3UkXmh2aVQAv1kyhzuoQjbB7HIH6Ko2cYh6zlAij2oYUaq+Vkhnl
	 ZbYOPN648G1JMwnCTlxQwEVGjWjiBiCKsDB8EmV+bI1lPjmPAP5IgkCzxYykUldx8K
	 0Ah8K7QU+gTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99988C28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252119362.31537.204506650829896965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2b02043e18cbe257f8df608b403c7992d7823fbee494873ce0e3aa62de003e
Date: Fri, 21 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742521193
