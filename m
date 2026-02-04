Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A30B31A551
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770232434; cv=none; b=kr7U5jPQ0+2SEY8r9ax/rDfPVUJAbntKvq1LLc9mSGAsFBrtUbzpGB11Sm1+joR3eeguxiuydfybghwL6KphtSboXFbgDeJy3em0EUuaH8LiM9sGGOXZ9834kx/8SeeOTeS6m88NmNtQJqH0NSYsBx7NxOw2xh9cMpIV/TkFaM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770232434; c=relaxed/simple;
	bh=1fvV7PIwnQCoB4f3PGi4YxVLB7QZuFpqIU+Iiuw8pV0=;
	h=To:Subject:From:Message-Id:Date; b=tgLmv6mhOEYwCO+4hAOTegMCMc7yghXbt5e36jKr0oz35ImHesu9ofKvvFbhiKBC/R1KO5Oosq3/Xao+HiGOvn6Ga0GeBe83XYbqB6yE8w0+lTRx68SnxVnECyhb4J9SW+zhDHqNRIyMTsx3EP912PpdnSAdZ0hIXcUPcTRZESc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVzfZ2TG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVzfZ2TG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64ABC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770232433;
	bh=1fvV7PIwnQCoB4f3PGi4YxVLB7QZuFpqIU+Iiuw8pV0=;
	h=To:Subject:From:Date:From;
	b=hVzfZ2TG4T+/WvlCjCw8AgXD83IoiAHUH0I1E4G/8Km4YArdrDgMmvzN8jJff7Ffv
	 eGAnM488n7Snjdtd/W5HsqXXJgpwMaCLvXFgPZoQewr7HSfIB1sm61aBKTjf174kLT
	 CJ+9PDvINJ4GwC48AZD5Y39a1V7wDpnvZuntqtgmFVW1d6rHt4/H9PniFYwhqk0rTR
	 B4zFKd24EIdPxNagJadea0B9EolSCWWrW/5cK+H7J7s0aqUmDH7+1pm+aYtfmoUt6J
	 R4QMzJ/wJgcuAaIaPXz3+uP0jrhctmxJ4AXrrKx8uMlZfgXfaog2JJLS4c2EIoLoqq
	 stRQr/+YfDVZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A30DEA7942
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023243361.12673.11457742684867449719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ebb5d8526bce4180dcbad881f72afced31e18827016fe1549fb8396d7848cf6
Date: Wed, 04 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770232433
