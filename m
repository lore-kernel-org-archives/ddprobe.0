Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2565210E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757188194; cv=none; b=Xw65ZoacYaJb5mF7GfHry+UYsGdjvYGEmXekiaaLHzZjSC+ki0rq74duvUJJHMjJD/20cjOFksQiVikVl0sFNKFtq/iWGsaWBse9Ca0q/0mXXwq3cZCA+6vNIR06gIqPFw4wn105I+5mM1IgLGFn2C1TbBDISSqy9UDpRSR3eNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757188194; c=relaxed/simple;
	bh=xrJIprGhTnLFMhLmstSjvp4qSOLryRd7dZjrAqc3VHg=;
	h=To:Subject:From:Message-Id:Date; b=m2o+YjnMFCQkVafPvF1WkJqx4q+YUCNRdJ8YyHYdlJfhMWe8l31clt67/ZZazBotA7XYPwwJMakfwJyDn2JUbW4JiNrKQdrHfMBwJJScD33HeNgsS/w7TodD4BR4JxcfSc5UxjEEs4w4SGqFvLJqr5PCo8+M5FxkHlaZA27C/jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtM7IBpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtM7IBpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A43C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757188193;
	bh=xrJIprGhTnLFMhLmstSjvp4qSOLryRd7dZjrAqc3VHg=;
	h=To:Subject:From:Date:From;
	b=HtM7IBpv9SLGYdfWM3Xm3f/HyXwN0ZX0mpcuF6Iquh8aT4I/fzaAlr8Lgo5dAc+2B
	 wD6SSmqRJLh6HVUC3b/LLeknBowMVBUwDaMy6Ke76/bgWSorKyBwHhvyP78VawMRoZ
	 X8k/eI/CY/3b/Ut+cuZTj86Sne9qqpmF0rkaPCIsscU2+lCa9Ucbt/w4QCpfnATfpJ
	 hl0Xz3xQopvzwA4lZ60SFKXv5jox5bQ25t9I4fg6btVNDfN0OIqnaCI038vUdf43eO
	 ehpGhHwGythmY2OD79O2uJ6uqvYvGoRMGnMOxe7I5BJAyRf1YImZVTARIY/oAXCz+S
	 b7zz0Ah0CtuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DE0CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718819358.14848.12149060009696438735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f09a8a5e3cd74ba022ba673c2b10b23973f7db86e8c9ad06b32a9bea5d5de5
Date: Sat, 06 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757188193
