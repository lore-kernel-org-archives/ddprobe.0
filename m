Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8E3254B03
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790409034; cv=none; b=oLRsTLNcW+aPFtv49gy2PFqrb0SGWddk1VtDfgsw15f8FzV9Yu9ZA/TKAUBycQ4l3T21mHfEYMcMrcaWKGNOPzjrtPOuz48u1DBa9EabzKiwDRM/Qz6bGgxpXgaHy/1V5RCA8XVZTc3NQ3aAcBCocSNzDvgtp3SERZlObwEAyCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790409034; c=relaxed/simple;
	bh=NGGx+OMVLPjp7rfY4Tip7XDFODTsqjvIbZBQ2Lv6cHc=;
	h=To:Subject:From:Message-Id:Date; b=pfDW7I6WOaGnQ7rRS1bthRFu+x8m7a/WD6S0PRWxc1KUSjRau/kQvFvH8E4jzpZPDfBQONlkLi1P3fiOe9l1dG4767awGEyEPM9+NX4U8TIiVuSpq4yPEzlqfR5hwCiW4buh5cdnNEWd+dvnpdSqPo01sCfMFMQbSj9CUlErT2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpGvTVLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpGvTVLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1310C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790409033;
	bh=NGGx+OMVLPjp7rfY4Tip7XDFODTsqjvIbZBQ2Lv6cHc=;
	h=To:Subject:From:Date:From;
	b=GpGvTVLfRuQEkwTIbO8N3RGGeSuEJ+ekDrFJzRXyvkk5iuWJR3GcVxs+00vlmhMEd
	 hjQQoF670xljJnKqHnfsjA/N5EPy50bNFSF/8kYGonyAlHzp08vBtawPLRC17dKyGf
	 lOmVRPmhyA4FQQezua+qM9bODYSTnfoObQchsFTlq2TiwTH3VC36BgPXdIH70uQeal
	 MiLZqyL+cMXP2y36MGjMjRT6lFFW7wG8TZ0xqS0ElYvztKfzXHEPz84W0ZSWm3Jd/c
	 6p2vx4CvqtSEcC0CJrgSRzXp2rWl0EaiOhA7xeWtrp5nAOMIpzDD3bec7oyYwsGDpI
	 RAojEKzAftXpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81BC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040903368.5878.12936090259443571126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665f9fd5fe5b9113b69c495e044f197c999348c5035884a1f57186fbad93e566
Date: Sat, 26 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790409033
