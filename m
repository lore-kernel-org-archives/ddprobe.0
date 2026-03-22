Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2036C3AC00
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774170294; cv=none; b=im591Bl3h25LzcnrZOStp3/aigFyXtfSnwzZZ2Y/X4/4UJoEHIxreQ5M50LKuZQToY16l1I+QoQJXRPjgbXYLM992ZfOpgIzmBdhEmthBFN/d1M1+RMLP3xSn6B0o0vTiDhq/vIFmxEmp0AWVNrqnXRBY+Pu0+jDOxd0Dl61BKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774170294; c=relaxed/simple;
	bh=aoAilWbEsZSlzZNbO7KbwrDR2+G1qtoEc8GwrsAnK/8=;
	h=To:Subject:From:Message-Id:Date; b=fGYubQbsSNP5ZxGPOeUrQ6Y3ffUNnd4JzE4kuEt7Xr2RTeK9DLr5jAZ1OIx4nT9HJOTFQvtPXf6gd7hmIOtbfIw+J+WGDFWKKpzAdmPN9NeZkZZOO0P1KOk7vBdTjawv2cBrBK+NnaZtn1e8UvZKi8sENIuNlyNbC1M3AJ4CWlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5h695yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5h695yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE02C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774170293;
	bh=aoAilWbEsZSlzZNbO7KbwrDR2+G1qtoEc8GwrsAnK/8=;
	h=To:Subject:From:Date:From;
	b=L5h695yh2upJj050Id3FiAyjT/fKb/PFbQzGAhVgukRIIS3ElVAZVsrWN3NMNGxff
	 0OwzUmZrrgpBu+TvQIaCXggMS/mk4YHiefzhtxpFMcuhoUkyIo26hqcdSQRNmAk6po
	 HUvYEbqMdDyfLd3t/tWQ0dtCaldf0vjRHYqkvtW/EQG6v+v1rGJhWSFaOuVhefoWPV
	 QcE5+/2b130OOfrDw6F42hzwwxoXfgGzGr7ms15LARvDLpytJ5kV4yGr6I+GQdLI0Z
	 KdujXuxWChHEc+sNCnl4U5XKyHDIqB/tioQoHauMibp49sxBdUvHhyB8BxS1UY+bCw
	 RoET6runjgkpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972A8FC72AF
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417029358.13932.10526365447912156827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beede95fa11b756e450b3090d11f92bcb52be8fbc7535bed845cbada74ac90ac
Date: Sun, 22 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774170293
