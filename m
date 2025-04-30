Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C681DE4D8
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746015594; cv=none; b=kU6nMru9yrPTeYCSzqVQw+OzHewDUTpzEwIDLmVGlE0pBtt2MLoNK189q8Qrch+yvjcg64ub3VV2fX53yORezHed4anIy/78jPiRDG6VJvXC/ksJaz9TO761viUsoTEser1iFuTCYA6AVPHg9SECGtBu6YPftIZ4S71VnuO1bSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746015594; c=relaxed/simple;
	bh=SxXy2xy3vnzJMe2S3SBKhkXqwe3sGYl/B5UtlA8COjg=;
	h=To:Subject:From:Message-Id:Date; b=jAXvsJEg1Q5qFb63gbShfi67YPbkS/0LpxWYxdE3dpKohwQHB/s/v6z4bnTJjNSKMbGLU6JLNefl1W96t1aNO0vY3yy50facl5VPAHQC53G8J8zTrwP+8Y0Nks80poHc1aOSrenGKqYb9u4Gyuk/j9R0cWw++hiWh6A9mCF9xrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIQwqF/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIQwqF/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF6C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746015593;
	bh=SxXy2xy3vnzJMe2S3SBKhkXqwe3sGYl/B5UtlA8COjg=;
	h=To:Subject:From:Date:From;
	b=LIQwqF/wcGtAo95fh6Q28UzS77FgOHoOeQDfJl+ELq19TkmsJv2IWRVbPv+Y/4VE0
	 nqF+vuENRRTDneGJcy8F7kRCG2i5EqjTqYIh46spyWrMdnCBL1fnqFZe7L6GegXEMz
	 RZrrt6vOoJBBshoCFnWZuKxd+PtFGvRu0JV6UCt9Z9TZRrlkc0aRTXtcoDPxqPsGOg
	 LKToLNQ6eyrEZ9lYU82og7gSbP5U6+E04vQeVx4wXVx5UpLkqAYpO3GirHHrmC9o3C
	 knO+QZBXiZ4xRETIyjGNTUI7oe42PddJNURgIGU9whqwk6w/nXGE/4ji7W1mwPckvk
	 hK+ABEASlfprg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D3C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174601559357.8537.13051541038465519061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf44b4ef6da07c3f81629d245861fb4fc868ab669c1610fc52eebaba861ef4a
Date: Wed, 30 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746015593
