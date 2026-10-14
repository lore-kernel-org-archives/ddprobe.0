Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BED961FCE
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791939634; cv=none; b=jtimjzD770+AsDdTXQDf9DpbvUlhexFLFW+q9HnMkK/qUnOqiWSffkv7Ce7RGyo0es4PZGmNzbn+fZTACcNAM6mJEr+5WDXN3XkhzlJpivsfWwV5IsI2E0ULcMsAtkSmDH3d+Fg/EdeNqjC3fEIFzATwFJriGJdxXH/2RV7fEXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791939634; c=relaxed/simple;
	bh=Mai5fkoE2g8aK9dZdtkiQ111Z0uiW5XijdU0h77EYQU=;
	h=To:Subject:From:Message-Id:Date; b=KzFIl1P+85z4DIDoOvfz94KFUcbo5qYIrHwBhUag4mrukuxSbQ5oqrPAbSIYYkGS/5EMsOGKj8QvTtOH7LJfv3WiwXrIPtAV2m8jHh3d5sj101de56o+m6Ee1dRjXjnugf1J9XHrCdXAwFtVivsdqu6lMFhkQQKEBu6jLBoUqLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhT+05iE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhT+05iE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C7DC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791939633;
	bh=Mai5fkoE2g8aK9dZdtkiQ111Z0uiW5XijdU0h77EYQU=;
	h=To:Subject:From:Date:From;
	b=mhT+05iEzwRolpr9/SgEf2Kk7IcHu17TOA13lFThtsn4jd2V+HnoKAE0SmxF9nTER
	 b5Rb48Phn1/ZpoDg2iWq8b8C7HZowYBis1AypJLUZFN7U1wU+1Dabl8s/iOvzy0lce
	 yD94CRkkO8W/DHQ+6EOfZFgE6rVnZtuHN8H2wbOAGa2xo6Y3uWfro55pG3ewklqkKn
	 s+X8+kxdCoy6biD8GlcM8v4Opkq5+9xrtgABFgaXJ36w3w8ygjoZ70dmdmeCiKqo2X
	 h7XvjmhVKEZcqCARmIsT+5NHW7MqhKv40pOriy2c1h5pPvEl6V8+ytLX+ADD66yAEm
	 FJ0vJc08QiHNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EA7CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193963371.29396.9444053859534421003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf1d2a90df288e4e7921b65042dd87824f4d2a1ac8016ae7e9277f36557ceeb
Date: Wed, 14 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791939633
