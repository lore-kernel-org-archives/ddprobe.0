Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1602C9D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737257754; cv=none; b=erEVMlv0skWdo8TWaG/+MfqTzktKRV51pu+dgdbYGyQwsuef9T4RdcSy0REKq9DLDbSh76g8j0tokqcaPTNdUHFjl1dD43OPyFEOkfq1tIqMDQ/5ZZNMhgWjeSoCrMTe1iN2kC3VjuHSMWmwKqO6Bh4x3cc4Dv/GCy06kulP7tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737257754; c=relaxed/simple;
	bh=50oQ+VwVp0DSV0/UTjKBFH6j99VeRwiHQ4HLPsCzNow=;
	h=To:Subject:From:Message-Id:Date; b=ks+TQ/3SmkhRQGI+8rQ8tEFpcnq8x62lUoWs4GbZSLJIOpP2EsW5qlUbb1SDX1ui7XPo5mRvlVJ4mLRFVU0kzvUEQCaTZcP6rpcIVG6dDcxSmoT9yJ54jENwM5r9LDeXVXyjQ4lWw3VSEJlzM8Xh7aXncB3RTHC8Mz2yMOC+kmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DbXYs2VY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DbXYs2VY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF9C4CEE1
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737257753;
	bh=50oQ+VwVp0DSV0/UTjKBFH6j99VeRwiHQ4HLPsCzNow=;
	h=To:Subject:From:Date:From;
	b=DbXYs2VYpvJ/kYvrl8RjeeT856CUAtHP49w080cpIm37wS1bK5m9jNWsK/pphkdab
	 Si/JulILIa56yKnfDFCb8IPf3T7u1XdnEz9rlS1u2uwpxZQnMkXX81SzSSdTBT9u9F
	 YiyO4ioPjSk2TjW08U1M4IS7RVlVA7G/SkXbCgh/VAlHjvBBkBQWGbKLGJonaCOi8Q
	 WNP4pgrE+hY2dA9zPIIT3k82We1yGwlopKz4FPG60wx0Um6ssD6ElJ6L1+2h826ljM
	 Cm5nF/Ex1rhGGMjcIDYINZLo5JDnYS+QY/Rf31jkJnDcHQngelSzBPImS8JyvqAJP9
	 gkPasGzBinMEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96806C02185
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173725775358.6783.6043468985157476219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13b3816adc7ea7495b110e5b7240e6c807a10f84eae81b7a18d9fdb03838a14
Date: Sun, 19 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737257753
