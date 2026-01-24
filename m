Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6D727456
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769228034; cv=none; b=q/MU5akhK8N9VaiuYtjDOzGz3SCW+CTXv9QUCCpxLjm/7nS2W/3D85PdGNfOCLD/ekJRzEBtOY9cVzf8tpuREJRK7LuBvVqTBTTUWvG9WWJQHwY2thOzByWg7NxxQuBV88mYP4aaEgMSgXW+u1Hl6vV28pMKDtgsn2UXebhqjVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769228034; c=relaxed/simple;
	bh=wlGXN5EEFXyPBSQh4qVcZVTzJ+XyOqgfTXRE/KOdyL4=;
	h=To:Subject:From:Message-Id:Date; b=V7s+SrEzD10y0h9uxK3a3Xmmwc04DU1X3RVgqIIE8LSLusIPDRQWGFfibpn9CQpWGZREg6tKJ0+wGbBJPpz/FPWeOcPNOjrMicZCvTQisK6eZVAzOQjjZbxwC3ExV9TJ4eAYCJGKWXTNMSP/XH2WiAnhm3XlMvBP10K2nNnsQjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DEbUOcLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DEbUOcLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E5FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769228033;
	bh=wlGXN5EEFXyPBSQh4qVcZVTzJ+XyOqgfTXRE/KOdyL4=;
	h=To:Subject:From:Date:From;
	b=DEbUOcLN0wWq/LwJZsdG8n/54dmhipi7eTK7K4auRpFT6xZA8OBwf2fSKOhgSs+Uo
	 LqKKZ2lm9yDiMsbbQ/z9PcNHEAKLVlrfSkDbaDgHvq6uIWoecCim/NcXr5S9leUKas
	 abN6f8vIK0wVW1JfXYCH2xYCbhZ81ooI++jWUZkAsunr/QPx2YO2m5KzpInY89Jlh7
	 j3t8nWWEuA/kiV3vEH8uyFxPNRlAKciBc0IS8VTD0NRzoCk3IGKCMHbaZWqX6xsvqw
	 tJ5wskc5ymCtAbxU9/kG6frfc6uyRn/pzdpRLxMUdLuBU6s3BqVYTH1Fm5m2vjOuwO
	 zT0p3QLm/R5pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95162D6CFB7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922803359.31035.6374726679955739155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0baf852a46a50da98098281606c099ae756cbdc082227dfaab4688fd75559fd3
Date: Sat, 24 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769228033
