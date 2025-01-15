Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDEC11CA9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736955954; cv=none; b=hA6lUwtpQ25rzrzY14nhjPwsmVuY0do/rnwtwk9HPwMFhJkZ4McfEVGc2fxpo/PImIYmdsKpOXN12AJS53Uayy5Ptoz0PiqmQFpA+zfAcwcEXQDzaeR2KJ0jo2GiIKIsdNzZk5LX2KdqyvQnOE+pX4AISD4JgmBvp1r6VPrOXP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736955954; c=relaxed/simple;
	bh=GP+47nCOtfhYi4YbP3s6+6Y+T5s/2ZlGGGmeDsBANuo=;
	h=To:Subject:From:Message-Id:Date; b=UVQFvbrKGlirT08wF1upy9KlKKZlUY1PvSVa5+agWTMDHqfAhwtn8p8obsxp+hJ5MdUzacc0/gk2viyWtypXZibT0ZcA/2Dw1gSUALikhMU0e2pxqWD2FsUjslYyHRb6lm06WkQ4PXJ0v52FqjMnAt/b8ObSn5Pi2ZmiDA4OQwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TERplylh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TERplylh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE6AC4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736955953;
	bh=GP+47nCOtfhYi4YbP3s6+6Y+T5s/2ZlGGGmeDsBANuo=;
	h=To:Subject:From:Date:From;
	b=TERplylhR/MYGQ6BUdRadGwmC6r4XoKr6x4+VBAbqxf8Gbzt/yvqm1FMBTI1P/7kl
	 Jo9Tbwb4W1psrXYhaBj/XHLbQPMAuFRx/yEhbxhetPjWgJ7Tvp7NQF+g9eSR/rmXwJ
	 1PH9sdv4cHDAVqehBP1p0SHVfTW3Veugx2XxpjzbNSvIb6fcIPPSPi+WPUXpbGqI44
	 JaiNMcx3lxhmMnkFTunKx/Ua5DVDL6zhSBeh3uSF2QUL2J5DTPNkmGnChLHXVCCZnc
	 tMkTTYQaXqO7Kx81583gcJvC+9+vNBZMHmb7MAAD3i/7bj057FJP8FKdJDJvQqXJ/2
	 sByJvP8jY6UvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D987C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695595363.26184.16277902614916283018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0c09e0f8e84a834c3d41cd5e742881ec01e956dd4faec3a5f703212cf7c81e
Date: Wed, 15 Jan 2025 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736955953
