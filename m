Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296F010F1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759555194; cv=none; b=eqKtzQ99hXQYalkJwnwewv4Z7PnUGN2ofeGlCj189ADv5uv59qNex56d2Y8bOozPqDiKe/RJzj4BGyOUEJdD0QqmhILtw5eNJKLNtriYx+GIZbKouaK8k+l2x+pfL+IL61RhAZ6//W+syR8R2LPJEOzWCPdRdNZyyPO6ERugQ7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759555194; c=relaxed/simple;
	bh=wlxf0h+qr5k3Xn8MDyMgtPIKXQysMmZPeEVVlTXGM4c=;
	h=To:Subject:From:Message-Id:Date; b=MsVHpbJmvLKUPjW9ZloDrnOsWNh2y+hXiWXXldMU9KbAHrcSdosrlG8bas1hHeCm772QEVXUsXLLxEAmVVb55TkiGc7fynkpNBc38WVJNy5Z6iykHXvPPEGuQ5c5H7dJzeGWyPAaMgFcwPydGJ+Z4zw5WWnqy6VdB/k6kGGKrmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2ih0YZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2ih0YZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D92C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759555193;
	bh=wlxf0h+qr5k3Xn8MDyMgtPIKXQysMmZPeEVVlTXGM4c=;
	h=To:Subject:From:Date:From;
	b=B2ih0YZX5mE9fH4wrwPom8UPlmrpx59h5Of6Y6NElzhWHa422F1m8ImwnuAVPiZWE
	 Xd+Eubem+WsoCYwNQvu6OPjwado13UpgkYtG4MjWowIqThH1oWLJhTEJwNy4Yt/Cfz
	 smcNvMNEan7C+eiZ8c2wNj7ootS/hpSx5rSneZDZbh9QNna8tiAT0PFH7si45l8Eul
	 qwszRRClL9+gjdxP+OZB07i+yu15HmWm5ZqV2nu9oR417pZMZve3FDcFkOxZ2sx0fT
	 tN2AOdBR+WhI9rlC2mYDOO+7tXfRWilx7VbM1JnrwDvEHwoKaTqr1l40YNYAeoIuud
	 xvftZYZazk1FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D33CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955519357.5151.15016394681961867616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c05172c568dad3c8e019b87847d28091118934668fff6d6235341f5c1036073
Date: Sat, 04 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759555193
