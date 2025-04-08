Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CCD198E91
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744085994; cv=none; b=D15lCoDoO23D1rJ7wA22BXxCXJaJEFj2JrjXsVPw4ce1949dq7rDn6gzjmgsbvoAbt/U78npFgBvvbAe5GQlluUBvpDoy88TgiUsBrfB5k4zGeGDmcn0J0lzmfPLWfiEpT7Bu9irWEkD5Racc4mkXmNV4FZ4SD0UU1xdTC+h3bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744085994; c=relaxed/simple;
	bh=5mWKLRNiF/7TJeNXr4+9PHwMXQrHf7mbH+5W80xzdtw=;
	h=To:Subject:From:Message-Id:Date; b=N9jhZ6I7tgMkFNhI6OZofl30wN+fL/umpBmKsmEcxu7TFKOJNHOwfTrjG/eIoMgqOOxVeuL0h/BJg9dywJd36kBzKTnDrKDRRzD2mCqbqo4ff6SzMobo9GX5YE8ziBj3igH5ALKS4ThZb7Jg1uUCsCJ88ZaS7Nt5pU1hxNJZKUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njB72lTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njB72lTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF632C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744085993;
	bh=5mWKLRNiF/7TJeNXr4+9PHwMXQrHf7mbH+5W80xzdtw=;
	h=To:Subject:From:Date:From;
	b=njB72lTtNg+o7zr1uJRzhJp5I7x+BnBbb+bedUusxtOzbchThfD7uWUxNWMitPh98
	 tC2g+kcrjraVleJEGHBZtV8NMeVeWFgzfV+nKWpYIlB5yR4c1Jer9u3KW5dfT6VBZc
	 zGw43QeM1Fi7bNbHFMiCLcCJgdg7DAOtqDWprkRwxuD1uCxjk+XZKszJMw9dvGL9Xv
	 NIYJ+rUfFf5av4GP7n4s18jIp2tWHO//o3mgaquoi3Gwhip02w4VycgQejuAS05mao
	 Je3t8YTETJNvLRg6rZQT9+Wbrpu/MtbLIguRlFsL2f6fAW+huU2oFpdnlzD0TzIxAa
	 XqQttIO0RXfWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFE5C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408599362.21208.7007211524594333256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b201f4129d3822865f240e6d87ef205d170da2bb63cd87f4bb608a801e2b3c83
Date: Tue, 08 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744085993
