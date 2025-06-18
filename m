Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039441C2324
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750282794; cv=none; b=EAj+vLgGQpYk717YGoKRZ7DY1dviEv+75ZN4I9ArEyrqLPKhbWG7/JXv5txTbUzvWuVb5I6PstpdebX6ppPv89FLHc4ya1LuGa4EfSA3nJj0+h1TmYqCKm+l+bAbbVL04o0UMniEdD9tUjlBkRpZbklaM3KedNxaXv1JDzTwe5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750282794; c=relaxed/simple;
	bh=sstqHe4O6abqrAhInAd5ppSwlJLbFfzuD8zYCQc7hOA=;
	h=To:Subject:From:Message-Id:Date; b=qi83JhmItmHHM4Iqteya6Nvc2foWmUlNoIyUuC4a6jk2s9trZqxLPsVWck8HdOFFts370EiCXzdQHMMIsa/a0Oz9KvNsJhLfR5K/fmRUPIwRMzTBIX+5i1GqYbDFPXkEWRdvYxsDQAdv5PKkGD88SeIT7RzK+z718QFrRaUpIJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJ23XxDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJ23XxDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1837C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750282793;
	bh=sstqHe4O6abqrAhInAd5ppSwlJLbFfzuD8zYCQc7hOA=;
	h=To:Subject:From:Date:From;
	b=FJ23XxDO3aQH4kHlz4FxvLmfyQgbaCql86jB43XLLMyIK+3p8cw+7dvHaYlPiBVkY
	 ieNaDMg/DChFu5+JiJCnmu7h8fczpHExrCoxcfUZrBbf0g5CrONB2C95gLPSY/GTqC
	 f9l42IK+okhTtPjdwf8ZxHBdyQcd8CfXLpvzhiqDLFxeWeqAmXQzUWvKpRfehpJoVR
	 Dhdj7oSP1KXZB0eZZ96v7nDjPu8xqFldkxZNsy7UkLy3iQO0wr7GE3B6JSYd0gcA7O
	 WP4bzskapo4xFfm/oe+862PFDM9Er2UPzvZLWrPq1jmVPIiIoqRV1kc973LJHzL3bL
	 lPpZ3hcXyIpfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91481C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175028279358.16084.16636046091156654884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ddcdf020ec2a1b300942ce62f427126ccd8b9740aa689d28693d6e1bc13f2e
Date: Wed, 18 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750282793
