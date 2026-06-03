Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140D3DC877
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780455274; cv=none; b=a7Y26QoNHWjQZA98ncewJDbLII6vvoY8SXeM0AMVHj6+wf9s4vUBi02oqO6GBcYchV4eb0VWIcgv9yOEEg3uImM1NkgtkPFDfQW8n/a27tKR4mTQWSOKQ7PArQCqCYwVhbN9Ixa6b+sfkfkoScCO7NiJTHXJL2PpPcp3qE1BiHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780455274; c=relaxed/simple;
	bh=mP4vyLWH3XGwZA8k0yOVVsLLQSP4NMiESl7wyn5zYOA=;
	h=To:Subject:From:Message-Id:Date; b=sXy6tD2FRX50PDgZokYV7FrDKClRKvI3DlafoGLSb+cR15zb0k77SCJFzEh6re04yMCKIJ9dKn8t+McknV4jzCyvJD3v6rQJZHwt1orR9WvTnxXm7d6N/T2YTk5Xj70Fffgzk4MWS+SLExq5hvIXdMbwWAqnl1PMUoo1tLDSLnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHnpeNM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHnpeNM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C9EC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780455273;
	bh=mP4vyLWH3XGwZA8k0yOVVsLLQSP4NMiESl7wyn5zYOA=;
	h=To:Subject:From:Date:From;
	b=PHnpeNM/v2rVKg/IPVMzXeqVdwGUx3R+lKDgAMh9QCZR1RmELYvAvRpv5SoUtjJy6
	 U7LluGZWM5eZVVPCvDEbMIfnfuaqLVcadIq2kHL7ueaf/Tc+0ECAcUMh0VHQF5md37
	 /1J8L7oC1bzm+2qfximyGblqlrzIWs4oWs8vahmPTAoRxbfqQMetLP2+rKQ5kExpzr
	 S/Gn0EIogbcxHsipMxyoLVcXL4hFIJgDqRuSDpCVAp5CsfM8PWmmtGLt0/kjXluGKX
	 kVWRe0e8PEDQofrCyVqS6+zEF+KwFs39jqQFLlKMmIu6gVm4CoWhXDC2Hzck9hI1Xi
	 maX+KiO1IkJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BABCD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045527367.8362.123153346308970039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4750879010dec75781cb259e516e1f44a591cbf697f69556b3826ee1837836b9
Date: Wed, 03 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780455273
