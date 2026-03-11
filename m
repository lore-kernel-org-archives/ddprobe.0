Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACB53AF651
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773229494; cv=none; b=kLnKwPjYblVR9leiXpH9KKiBOTGrC4zW8DzMpykrDqnm+M77bJ1uMeML3qCQQvhKlUGRKJLSs5axAsdz57aHM/Iz8FCU0v37WWw48PiYRFahYxFXMyRD3sadY3wt1ZY9CVm6uak5AWw6fER7+p9ZmdcgxneaI5WbuRZyHm6j5yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773229494; c=relaxed/simple;
	bh=S0tHckza412BrdJGbryxJG5HyGYkub7bWkH4lBi3XcA=;
	h=To:Subject:From:Message-Id:Date; b=ZoTwP+AlnVG9DD06ZeEgKdYzKs6/xjdC4sYB6tyK+PFpWRUpgumm3JA3K9V/upTZj489/+iNhWlfAuP5aDK+HjrslPVJCNGzdn7YFqfGP9roUzc60u5rrZIcsg0dVECllqhCxSWc5Hs8xz4RLOoO2+2h0EexedgrURBAthP0gw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecdI0NoS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecdI0NoS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC6DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773229493;
	bh=S0tHckza412BrdJGbryxJG5HyGYkub7bWkH4lBi3XcA=;
	h=To:Subject:From:Date:From;
	b=ecdI0NoSOLhb+9BYxOKMnXjHfzJHcEEtOrWwQZwLaZKX/zQ4FMz72G/QyVeAwt1q0
	 eQlfVZODmNhjHf7RFX3FvVB/HTRMi0Ym42lFwQjyhudEmtozTL/EuNnwcORDitTglR
	 /kvBaOYXrjH6tQ/68iiN6iNoox52DAGpmChuqCvo2drnAbbuttx8k774w+415lfIVm
	 5OA7WANQl73B10yht/jzAwbKDfvMIBC8pemevM+JAwVSGeS9TuJLDq7BuQvKY+uOZ2
	 qae3XCuVCSnAciqCuGOq4auF/1AFXsSbKC5S9TMrQ7uemS4v7JDvLNMqZpybO3KclC
	 l6V3AUaQEU0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F857106286C
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322949358.13597.15221184850803741131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e168d384b15121f4d2afb3017aafab745b266fa06523af41266c8ea869772a4
Date: Wed, 11 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773229493
