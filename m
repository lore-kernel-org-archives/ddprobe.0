Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5771B1AF4E9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791435634; cv=none; b=vDPHNkZygpX7PXZ3REwzJ8kYkfer/tv6fXLZ2SgsgCeZqjpnwhSURgwx2iHGmIpJ7FCaG06gJIeVSsjY+MLooW2IU2WWCybLvyIoJef5cQzBPKIgV5cHm6V8WNuuuJ/14scsh/eREe1xMbuLVqUW57+E7xfJjoyAPIeaYDyLEhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791435634; c=relaxed/simple;
	bh=5V+YSIbLKYYMgW5DFdJWlrrCDz4V60spgekjWVchfgU=;
	h=To:Subject:From:Message-Id:Date; b=OKmfJvynaNp1c7pzuChIOV9j0p0FzKpek5TuUkzndLzOfgpGUvgWG2EC/XZ15NWS7anYThlnj6DPcu03OgEdEAO8Oak7fS7uYu2jGfLrzguoyyuFFfeQSmvuwuBEaXyA09Nu9/lnsGZs0K4005NyG9geD3ZTf2KbbQl5u53rOKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IL4/Ic+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IL4/Ic+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D534AC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791435633;
	bh=5V+YSIbLKYYMgW5DFdJWlrrCDz4V60spgekjWVchfgU=;
	h=To:Subject:From:Date:From;
	b=IL4/Ic+K6nLl4C45zfG7/1lAnoxWftHJRJhM1RHODKDaqSSHhdIfabRWHvc2C7diC
	 qyQkcw9kX75TI5p3cXOh318mX8f5LBZzSGie2c6IQ4jN1UG3cn+rOccu3OuO1A3eyj
	 erb4TIVYYvbMzVN1CosxoDDmnPhadipGB5GoRK2ehznZ0/KmtsKmwQ4Xwp+4HBV4PE
	 xmqOwzkwAT9cCJCYeND5KmbplAalymXF6QEEE+pc1LDqRaXLk13+JBIGwHuItNHesL
	 7+q3xhKMXEV9C/0DnVjUCJRsGY0hMF1GM0BsO4HVgQKgQVfoCHMdTBZRxAUCe6qHfr
	 pGfThHk7gEorA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0246CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143563369.17571.15548436586091555475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff4ec3b0d195395b8f78896e48885e0b53f9b4929d2a725189daa2e02daf686
Date: Thu, 08 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791435633
