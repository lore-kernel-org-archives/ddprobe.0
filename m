Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526AF1514FB
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719383003; cv=none; b=Ro9cMKj6YqsRT914hpfGlM+qPD0AwHLV6B4JBw/M/HTRZ0IG/Clye60g9vn+0I/egP8q/FoaW2P2BpHOFsQ24InzCLRG2gbzg6ZZMpNzWB6q14Z7Q4Hm0yBXcNbR1RZql5vKHivaGja1VDPpj8GDxApcZRzZRU0iqmcToYiOaG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719383003; c=relaxed/simple;
	bh=x/iF9PD43BeE/Y4AKaZeFULa5xPvOWR+qyp/liwA8KY=;
	h=To:Subject:From:Message-Id:Date; b=IiHoHtg6odwKomwFxuOjSbxqiO5KC0C/BiOcuqSms50OqB6xXHKQAV4jQ6WRMDg93SZgBovnOLqGhuFfjeFdSshY4eUzypbg/dpOPuGrZLQ7qiFg2vU1lQo5Wmj89ObYjpeKMaBG8XwmCDoGzl+303lnlSS3ga/8AO4WAYwMnjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oi3ZGJwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oi3ZGJwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D993BC32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719383002;
	bh=x/iF9PD43BeE/Y4AKaZeFULa5xPvOWR+qyp/liwA8KY=;
	h=To:Subject:From:Date:From;
	b=oi3ZGJwEIznuhdyR6bgmJxSdpc7zLffMFqr1k9tZjhIVqADIwkJa+RJcCjr3oJDke
	 uYEa0Aw6SjTwsYocGs0F5+dLGkt3lDWAnhKWsnDM8i89tHyH5Dghz9vvApqosqhgoH
	 e7YrqRWgAAImtFxSuI9gSRCfVZVHTtReI1makFH3T2YGLjedXmf5KRUHzdMK3KA6VO
	 wvozJMYDMmo0/GPFMKA2JZNRJ5EtLDk6xWoJZMaHk93JQC/+3fMLxe/6GpFYGGLqsX
	 481RsvIOw6gVzSaC9DztSRtQpRQyiEICULYwAqfGPAksHVdRqXhNAYWdGnJlp6S5/H
	 NESEKiZnwszhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CD9C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 06:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938300279.3962.16198377719532446637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58cfa90299f66dffad702174089c8441a89e81a4a7c22a79780c833b2f9f376
Date: Wed, 26 Jun 2024 06:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719383002
