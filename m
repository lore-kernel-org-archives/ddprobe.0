Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D10A3164AA
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772529294; cv=none; b=IqRknzhjsULlu3C0u4E7GYSdXSqP6x2pitOVL+nrb21Ctaj1lMJxtT53GELxCwJTd/iKrDF8n9PNM5WarhMQHIf2XiG82MTixxmiPxi8lXRP8P07A1O8fYml1Rp5IPYMMC2up066ji/Ef5HzGpsmIkzvtVGU2u2381skRELAZjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772529294; c=relaxed/simple;
	bh=WKfR3cOWQW7GGel/MTu8MWV7rZncniew1dpdFcziJ/Y=;
	h=To:Subject:From:Message-Id:Date; b=aIeKuZ62thok70C1DpeFk3y4Hgjy42z2tmrAF0HyCdStC+6f3BaHfRK9vi3yyU5Ncwe2rKux+e+GGeIGG62c7ko6GjIFsoCHlHUWZR8+4MCMvdBVQwLWIGgbZ+GehmWv3bvmDnmGKmvBPhE516/hi0HvmZQPq07PEzXSFThvojA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/ofwA81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/ofwA81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5B74C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772529293;
	bh=WKfR3cOWQW7GGel/MTu8MWV7rZncniew1dpdFcziJ/Y=;
	h=To:Subject:From:Date:From;
	b=r/ofwA81Sx08TuwKAUt5J7e4AvY4VvVby+8EDji4vZWDu2VpMLR+F96BhihjzH6oO
	 JGzeCoTmAf+z3N+WgxlXqlQjGeo7yREDa/lCzJr70GPyNmB//0bzkiJX24yGG3tsnn
	 iHigrpQ84yzbRxkyWVsFFjHM9yuIqLo0g7OMGgSiYEHch1SSp2uwIpxnsEOne3JMj6
	 o0hUHLySgfPnPbRs/+6LGwtk1weNkr6XavTeHZD9mE7cvFejr60pySqwk6UkliSAZV
	 WL6bxSpO8NY/sxkbf57MOqk8yzzicwKJeTeDtkDEROZuTY6ONa6QJMv8YJZmM4ECuk
	 GJFmU5rhyokVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C86EC0463
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252929364.25591.6365928590453882457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da862ed8aa1ac83d3da44edccd933030cb613f0bec415c9b1582cd83e2d64d6
Date: Tue, 03 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772529293
