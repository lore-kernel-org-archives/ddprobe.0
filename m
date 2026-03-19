Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C0A390C96
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773920094; cv=none; b=tMGGqIifXhnKmMFl+xz6P0zGKKvpvfHm1qZMnIEyBHDwvtQOI4Yk1bQvVzllNCkgY9jSATV3mIdZrwFFNPVT7B87g3ipIEPwl5KFQiFXEFDod5dihs1O5B9Lotb0Itrf9pwU3jCKZWGPMyU+0Y/uDQHZfKCGkKcRM8MLSXkb1rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773920094; c=relaxed/simple;
	bh=SkvyVQzHm6ct8uxx/3X5bB3EhCXqMO8iwl/C3+xe+pg=;
	h=To:Subject:From:Message-Id:Date; b=Jsqaa78rirSAMEqc2kLzJjsq3lUVsKP7L2t62N52yrcx0WGySQOx0vcs8+/A/YY63hhwyrgRQCbIN4VP7dwCRHQOvpM9X9SK99Bmb9cwSc+jwtjXvZjPoOcfZmPSbxRMa/A5NbqihHlPhi/63AHekg6hlGBVwcVKRmfEPKlbOhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itMr7sMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itMr7sMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA7FC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773920093;
	bh=SkvyVQzHm6ct8uxx/3X5bB3EhCXqMO8iwl/C3+xe+pg=;
	h=To:Subject:From:Date:From;
	b=itMr7sMGTRAbkmTUNECqwvLE/jECjDmfH0acM23vF2yu1htzgyZDx/adA0hVUlZGw
	 U4XwzqDM9xALIN8LiJJLyUWKsMnNexqtU24eq2j48ZhvYrLOxqRgqdKbi2uXEVLTh+
	 HajtrPkEe1vu8gnZZ7dHlCGTl0LM1zdu0GKKQ349HaLXAZADNWGKEbuRFQoz9jOC2y
	 C/L8x6rq4cNrl+Nmjlxzz+OABxcXKWU6fuXnDJ+KOufYFfmbS8wqIRsc3AiYMHCoDh
	 pS0rUh+TcXIv+qw6nI3V0d3xFZ1ZXd0Jwi1WNRKaE18wXEcfaUaKjxQrJAY3S8wRJn
	 sZit6DfBPMe+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90D108E1F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392009357.14257.6565822370017013708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83eda3a209b2da135331e52d08509caea5a3a362ef01041d4f33991a7a3cd988
Date: Thu, 19 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773920093
