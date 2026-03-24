Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECD32E0901
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774315494; cv=none; b=jVGTczT0IgkACxVmRsqWKZAsudjxOQI08ApHdsFdUFvNlZtmrEbmym5SoqBFBu0++7fTH1ly9pH7pw8qaSJxMODLF4+riS5tWVRyoejJDRJGF7cZxFn49jinm7BG14juRc4//Le+drKjTlA1xQDcpe1ZS/MY4jFkUMqvd9pFyu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774315494; c=relaxed/simple;
	bh=Djrfqtm1IVQogGH8nXRI3nh9XvpMXtakko1+viI61WY=;
	h=To:Subject:From:Message-Id:Date; b=FN4z3TW52PgKhjkXbA9cZJbM9DYVHyyZfsff7ylVsbm0NU3wCWjug/S9mtBAhISnUHcTYGFBXbupGGlihBBGO0ZESANbV6S5N132lV667cHsF6Z5RVgiVKVwdj1z0q0zczccaoYIxAvM7Jvzqc9p984urs5IsW/+oOrTxJVZx2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8KADdZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8KADdZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48DFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774315493;
	bh=Djrfqtm1IVQogGH8nXRI3nh9XvpMXtakko1+viI61WY=;
	h=To:Subject:From:Date:From;
	b=N8KADdZDoQ08foalUtVkubW5bV+rMR2OgEXrjdQwqJUEAFWH/Ui9t1LbszTKDOXGc
	 T7Ju5axQyhVTpWsLCnNQ7Z5P61Njmx/yv5yLRHpYduuP7NyeluQYHg/38XLSiSHrCj
	 3mA+6NWq15Qf7gpwjavoZKlOpm6CexhZQ41WQEUQkL4IiAvZ++4TT/N37NmRsxvep4
	 yg3UwxL80gTPkyZHCH34M978A7H5BBUR5GUi5FvFWMQakTsBD1IZuNEURezrPn/yCS
	 hBvW7SWCUFSaT8Qg4PZVMG/PT6aqKd1jNS6QQZAPSVsfGjXZyH6xgl5BEoX+aYPNVw
	 ZV43j4acJjv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B9F532C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431549358.28026.11363632827990440360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f616e2543e4d2a8bab7ddd3107ac3f2cf134fec82c9122e6de96421dac8bd95
Date: Tue, 24 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774315493
