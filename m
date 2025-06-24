Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE21925A2B1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750801193; cv=none; b=NLAxinuGQI9T1WvB5euN3H+0XHlafWry71VBF0T9dG6spCfXklRZNUcxeube7eu0qXRMvReoEDq2tQBY29cjXfxZ5j1f7IMHgMO4clDQmmqrSS6JX60i7bN11LqsYYTvYgxjGf5YU+rv7ZLeGTd0u9PbSQCU2V2U38t2IUo32Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750801193; c=relaxed/simple;
	bh=OAhehxbps+bN/cfx2YQg9Y/IhAWwqq+BpkQl8bnabRs=;
	h=To:Subject:From:Message-Id:Date; b=Q0HP5xyIZXD50Li8NF9cg9hEyQUGmRxM/Mh4wIYgJ22GENCIsuCVzNJVGZ702pXD0KIXij+z5rr7lm4Gr7GsgenLl4cwFtGnNkRZJSEpE02PevJdkb1+e2GiFmO2a8LMoppJJM/iDxV7sMABUvf3eDMN/q9xZdHE1G9TaCJJbgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhac6spK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhac6spK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA06C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750801193;
	bh=OAhehxbps+bN/cfx2YQg9Y/IhAWwqq+BpkQl8bnabRs=;
	h=To:Subject:From:Date:From;
	b=nhac6spKOspMEQ+2G1zb/QzrHkdMVhf5B95QoPiu+aHctMAB/vBFdG+cG1AA2tdFH
	 TvU35ivzsFHCkfgbGqYIJa37afog/RHECFp9FTVNoVVRgomC6NpRB3sYO2hpv3rY4P
	 9Gi6l92Gp6fPlGYBrticUGgq1241nOSGiwSanP7AvWP1h9UbFCx3+jGjxO4emyv7mG
	 r7fj4lYT1V+/PuVyhAdiHIpSdJPqbRMYdUi7X89pbOykCSxt62nUtgDQTT8GSQP6Dn
	 M0e8IDZ4a08leVpoCtN10LAMZTqaJbCNvz2yOQX6NmrZylShHJGcatO6+NPluCS6A0
	 ZCzRdX1tJDxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D3C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080119357.2945.10218546767521361318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fca819b15b36d8c71650a1b010588f0a13b8799087e57ff1b49110d61b1f8f6
Date: Tue, 24 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750801193
