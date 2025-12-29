Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A981153BE9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766968434; cv=none; b=pn76wXx+eeF+CY7UVnbn2Dg5RE++W4Hol0QU6DoWETdYkxWZmDM1spa33M2QQu42ShOM3H0PD+x+0LQEBEuDq4jwHflCGOZh+h4L4RNR7jtWqEejK6KA06irwpcqNdytW6PVwSf9hxHyUkh9OOhO954TTHLENghqfUoiu7YFGfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766968434; c=relaxed/simple;
	bh=ZEe9xDlCxTlBdD2L85Nj0eWkTbuQ1grHaSmJOA7del8=;
	h=To:Subject:From:Message-Id:Date; b=fB5MOySwxHw9wGkja9uqcFztqIkXjgfSRIIk5U5exCpP9QwCcdUPfV5AkeGC1lF/gttdi4gaFPu6+u1SkDQ8bwDW/oaFNdvWR8JJ++Cws0hK2KWm3A5bEip3/1fA++HB09/sUGim1KJC/o3aW41u/bDqV3MD34JW4CNAeCUSQvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTaOB3J6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTaOB3J6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45B2C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766968433;
	bh=ZEe9xDlCxTlBdD2L85Nj0eWkTbuQ1grHaSmJOA7del8=;
	h=To:Subject:From:Date:From;
	b=YTaOB3J6Dprisy0n7C7udntn4mNFgI27b3HdTfsHeWgxcQ0Emw+3I7b3ib37esTaM
	 yWs8J2jcCpzIN1cb2BgB1GB0I7al1a/Z/NbaBvnFHiTMVkB1PLbdwcu/dhe2evoroq
	 prkqejPJn9XVS3lnoWWIQg2urh0uQJorPjICnf53/trH5S5lFl2AtndTOk8MsFwBVz
	 Zs2yKCO7gzqTp7yD0k0T30NaOIUnYMa9TTbpK4bxqmjeFRImiKl2TZOTGxH7UMkghU
	 KkbhSBqf7Feb//xXoHhrCtoDEOAwA46TTBrIQ/OZMvZUf9AIg2daWKRTBhd0C3jcXh
	 kNlhO22D2h3MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E9D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696843358.13297.18411364423987791894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd98cbc51e93a109baafd806c643213a2d41a718c2c98fb82784497e42ce2248
Date: Mon, 29 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766968433
