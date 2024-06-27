Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691981990DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719505463; cv=none; b=VSaW79tePbErVxn3VwT2azguO+wrT6ehwFeFdqfiZiUIiCUXXBC/4sOYOlX1ViY5AoyZrR/cyLuMLt9TjlJfIGWwXEIEx94GfWkbNei3BiImUwrbgy9fpASYu93fPpSerefFGZBhIjCgpxoSMpcKd8JobjglBuc0lrRflFU9nwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719505463; c=relaxed/simple;
	bh=vwoZ2tuBtpnLlyLss6NEUcHj2b5LP2JZ2lNL3vhKgaU=;
	h=To:Subject:From:Message-Id:Date; b=CbhTw7v2S+kIBQtV6hjHAe1aBPyik0G4zy01UH8S37XnYY+4ad9cI6wLGO/YfPMOBDrqOUZjcEK6+km1xz/rw62NHCGZnMWtB8uveMEf6VBTm91fchbDnqvrR+9S5mJ/wyTGiV76tOQmQkwV3e+H7D2lHg13oxAD5vpzLviFmZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZICM7XZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZICM7XZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3885C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719505462;
	bh=vwoZ2tuBtpnLlyLss6NEUcHj2b5LP2JZ2lNL3vhKgaU=;
	h=To:Subject:From:Date:From;
	b=ZICM7XZxTNnWyQLfe38QxvctJZsKYxa6krXmxJ31h4YwcgomRz9LHpVae14kFTZP5
	 U92Epg1YTx3JhEp1vm+XWGC5Df1umtYyiMOTeFV9/VZ9huYwBFfVuP9gkIybVVTIjm
	 XYGFwgpkO8Yt8zglKO4djVBEJF4XoRTaYiYG9Wat47SjFIvyt3FmUojmrADi3PxAmP
	 6R0HIZuuPvuWtZsCgZB1qHkpKMJ7wdC94e5RJrbdPxZDM0sdg4DkHbfgDaagTMjFv+
	 XBJ4e2Kr/RPKYwufpHPaMNAchPqSCBQr6LB0qgrI9j9PUVyV/aO8ixzSvYXiIqZXW3
	 sFT9Qmy7uCzAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DFBC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 16:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950546280.2098.6147295181013177020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f5ffa471dcdc05364395c34906513b96c6e155369968ec1fa863efad411246
Date: Thu, 27 Jun 2024 16:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719505462
