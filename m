Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201943446B7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769639034; cv=none; b=GV1z/j//5duRbxyV62zmn9yA8WruTeRz2RRCTY264f6BxdQ7MON549uTPhxPj2zuV8CxwTF9Zk8Iem/LXzEq8E2LLRDuM3KekJpQ2aBDlmeYtM7lL6eRgL0foQmJP56PZdSrCTr99hyGEeT1rJz7eA2ZfhleQw07x0koRABn7uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769639034; c=relaxed/simple;
	bh=DsoiMXL+ehLpkLFAKBbMo0e2Sb+2R/RnrgxEaeTzakE=;
	h=To:Subject:From:Message-Id:Date; b=fZtCyegpWL4AOd7Ywo3sjCh2kigMbpRQtGil2pl5cofHteqVBTFNjzyuJt80kx6v0I7RVlElDmfEFHU1wsW/pH2lOEiHNOiCoymnrxw/MuyiZQiqEyaVn1uQ/sRmLnUVu+BD1CAYDbMEIXdHW2yt1f4w8eAIYgKsT8nxumuPmbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFQgb6Rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFQgb6Rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769639033;
	bh=DsoiMXL+ehLpkLFAKBbMo0e2Sb+2R/RnrgxEaeTzakE=;
	h=To:Subject:From:Date:From;
	b=nFQgb6RlXd7l9GaoPuyin6qITP7Z2OhFOm2+7TDB8TkJla0SClQNnIrvizB0TTwvq
	 EzP5/BcUjMFO5a+RQ2xnjv3TlMvNlJ6ZzzdA41o+9PvIHqrGZs+Lg35lJivs+7zAd2
	 1yIx1XM5nDYZk2vmvSCjP9gTYnYEgrEVyaFFSKtjeiB1OOF0Ra871bRS67oL3ULymI
	 J79aqT6zXYkd0PEy4OtBaCIUpcwj+bMPT5zIxOB7xlcC5GSUUDMm09klKlKJl2esAj
	 VE4AybxZnNTSCraiAIl2XgFt9MA0vwD9l8mHzIlnbPyZg0sX3c67Uu3PUpjwPuZkVn
	 Hk1n/94Abkrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97593D46C0B
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963903358.12457.16718248533470011830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea96a509bfe721c29a6bac3631d3a35c68c03108b58331ca4999cd3cc52ac70d
Date: Wed, 28 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769639033
