Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068F036492D
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790991034; cv=none; b=sgwgQRfiCA8V/aZVZYMCCf8zBq5tG0HDhh7re88HAygAMYOBLuugstjf9bxIwOTHhRMJGhqPAWq4MHCab2qzSdyhqyjaVigx7s2LMXKDzvhl7m57heBBzA8tDtfmptfVjWoi1v6rU/fToMcUdccsUgaAiYOC6KaL4rdA7mbEkQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790991034; c=relaxed/simple;
	bh=PW8psg4Sw9AREf5kPMIkpeLfRs0dJ1Q5jHeqvHz7ji4=;
	h=To:Subject:From:Message-Id:Date; b=UHjnFa07ePZhK7YuhcIH534q0g/2K2rQ0JTr7w39ZnJDTJV+xbIBY+DCvqUIJKHzACf62raNGF1E0IDNBEpJJT9JlkUPjd39LePGXA5XwxzHRYTsgC03msUVUJ+uJH898coaRwul6EDyyncyDEr6XqO+uQIWDDGEwazP8TMDKsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwtTix8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwtTix8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1E3C4AF0B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790991033;
	bh=PW8psg4Sw9AREf5kPMIkpeLfRs0dJ1Q5jHeqvHz7ji4=;
	h=To:Subject:From:Date:From;
	b=iwtTix8A8YiXGzvIbo98sllwCiy0MX4ni4AOtD4uHijM0causxlbj8Ng4yiW9+F9Z
	 uxnC1bnX01g1RK2bGAWjx3LW62lD199dFflBCeZQx+Rqymhm/K7ukXlUh/qf7GRLo9
	 jQSc6ainYzildoQuXUf25b59u9gs7hLrvxWQ6k8Bl/ENNQIxldcvhrY2CfRBsEV2Qm
	 44mrWNFxQQ/agp+BOxEMA//3v1BYRZBPmqOeZYOJzvuj7wVZ2d86qmPBadf1Lf1Peo
	 PWqrBgujeflaXF4yAsHMq1q45t1UhCpQcKQwUsSL5k8YyBZpjIjMA7JR40SdScSczf
	 Jfu/fvwJszodg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DCCCA5FE2
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099103368.2898.18075428361603984608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ca4cb6d8209c755a61977ba4817041d8ea8e3e4cdfe834c94d6fd228eebfb4
Date: Sat, 03 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790991033
