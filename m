Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9233D6F
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748663994; cv=none; b=KQPosckoOaurv+V2Y/KSECuADn/VzqrH7al/V5Ba3keCOj7g2IJ9hXH7v46hK8l+1+30TxFjIL8By6KPRVSJtjAJetEBnfOulKRp7JK/EQqyDLtWaKQhThoFibVIkFfMCGJUk+RniEA8kcVko9imCPp+VDZ4pxl5N8/5qiX3faM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748663994; c=relaxed/simple;
	bh=KK9OQKTWKuigj5uYP5pOTECW6jgO4wcGYPxHxu1s0IM=;
	h=To:Subject:From:Message-Id:Date; b=HAyRmxDVADKfePqVJlHYkWSp6VB15faXFZ14i1pOdarS03wwUbXGx3jGJgIsKi4eVC3T8TWI/IRND5mdq8dWJcneCwbEyhtd/VigT1q0hOJumRrjRNpGW9NTpBTyTt+VpCPLeOIW1rC3I2lJNQqzl7wxrk2SSVrhwaOEXIXq2Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLYQ/Bba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLYQ/Bba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748663993;
	bh=KK9OQKTWKuigj5uYP5pOTECW6jgO4wcGYPxHxu1s0IM=;
	h=To:Subject:From:Date:From;
	b=hLYQ/BbaSMsLLrH8CgGYF7WGo5XTGoY6VrssDP3d+3uZJNZ1lBvw5hFMXaAl08nW2
	 w2LuyDuIhTptJ9LBjilTzKMukHwRrgFCj1vTL4OgDHbs/BDZwGQbpAOUmdtAk64fq+
	 zDVR+z8HEtg1W3m18tL7Q1uYXzZdEAQ2mjgEI6V4POqrK/G5hh2795unIW5D8ov6b+
	 hpOSiENKi5ftv1maY0wj/bprXLHEZuSeX9QQTTB4XfedlVXZsZjcqxtk9ZWJYkVcym
	 X3XFqGV7EbzFDxSIBomWGHj3vmdkabkJIspNsNUoi6mJgo5n0suKs6e8OsuN+LLwVw
	 G1ILBfhgwUKMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA1C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866399357.27590.13907451268962144926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d8658b2b5cdfd3cb76601c06b0435a4d3f812533184b96340964258ce30950
Date: Sat, 31 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748663993
