Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB4E2ECE93
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776659854; cv=none; b=a5F0BuYBRgS3pdSypvN/R1rvsbGgEFbS+1QqOYH14mKI75cW6p++ie/XCD1yxlsZmHCSpRZW8k8huWaI3VvfzeD7YF4tKWx1vZtDicfHNs1aUEK+GzL7Zhi/eDV7KZOUqcbQzbDXBx83lPvdKVBrEQn18OTjsyq7ibCqH6boEJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776659854; c=relaxed/simple;
	bh=IdvaI3c8beIqCVc8DFeMIgO+NXRFJ28L4r+ZGrW77+0=;
	h=To:Subject:From:Message-Id:Date; b=NgoaZSaXJJgpXl0jLLUpT7QJEBh8OgkZKszr+hPDsAS7nG3WjZB3UDEkqAYkKyKm3aiCmVmNAsfiwfcdJ/G5MmJzG7xRua2YHHGw0/z08feGrd7CpbNKv2Cf5se7JgdrzzqsVJDdTKli02odsWVZXpuPAO1CkqyDnQXnuCv7/eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJopZ3Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJopZ3Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E99C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776659853;
	bh=IdvaI3c8beIqCVc8DFeMIgO+NXRFJ28L4r+ZGrW77+0=;
	h=To:Subject:From:Date:From;
	b=MJopZ3IksHN8LAXhw6cVK0bFLAciRuT2OmMysLMGU2hvtMe3RCE9CLleLKLtSEywi
	 fE/n6G+oUKVXrLriuu7FifpUoWBU3rxOJlYAWPxcvXISl5M3IPAT7+YvGzJrvHvODj
	 vBvU+312XKduNKJB/6pwRFiLDhEBKtwiENIhXBTFGIWzUF2XJvinQsDgnBDCrN8tcH
	 ZwdGeD33rpMrbG4wqhnycqG9dk6bxONF2Mk9iweRI7JBQ4V7nWMnspzoSyDHKNHYC2
	 e/0xGR30ABV5oTazfkFwg0vCMtV4qZbFrdHwJnr4oYEPd4M3JYV96Euu1ss2W6RWyI
	 re5TmZEh9n34w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD94F3ED71
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665985368.30469.3555802854791446056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2061f2a271b23bd3dedf5e1f7325a42c43630908c051157d1d9c1fc7e656ec
Date: Mon, 20 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776659853
