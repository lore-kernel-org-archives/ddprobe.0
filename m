Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E61714A82
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725845754; cv=none; b=hiwcUbTqtnXTgFe8ekGxAtysH1HoO/yRa7OEoqjAxEZjyS+BzWhX5z45iXPHzNkMz2ROQlozgOVLZ7itjp34YTIR+Mf9D15KSvtQpy+ehE9Tdv70hVZAmBqWMf5wk8lV/bbO8uVWDBeQ0NC+U+fGZJqjyKVmc/irUMR97IzV0Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725845754; c=relaxed/simple;
	bh=bCufXNdsjd+1yo0y8Xp7T9fZJrhgOzdLCCMklNpt3zM=;
	h=To:Subject:From:Message-Id:Date; b=t3yUinMj5IvL3XV2X6N/2h4rylAQQDtCWbuk+iY9HqzkA58xevs/k30DhwwysnHAJaV4ogfi/neV7Iye40mzJoF6hBDiTM+c1kvWMC2Tp5O5IX53M27db2nE+MXiC4qMpC727W96frR/P88DOXm3h3yWUj+SJTFiNk7zRc0JWyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUdP2QHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUdP2QHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C1CC4CEC3
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725845753;
	bh=bCufXNdsjd+1yo0y8Xp7T9fZJrhgOzdLCCMklNpt3zM=;
	h=To:Subject:From:Date:From;
	b=KUdP2QHB0Yh0BgjlPsmE8P3RvO/yOcanPDV6TeZ9pSl8L7G/cdXR0r9HUSOg+qdiT
	 8CbkvxdJ+mFzoWd0057FlkLZvjZja/kcMpSJmmZU7lN9WQuLXfUxj5WJLWIxauAS+9
	 /rn++sND/RbJh0YqT9fvRfFrkMNJGN9wCkHl/TPbOmp8bESg1/0qcn6AqC1Qij2h+K
	 ers5+VmVogl/Q2/k4OVGvIbBjyginbOUc9oV4bw7Gu2iwJ0CGjn5VCCudk1H6wy5ij
	 yNoAx0D2UD3aaJEG0nbaH+/wl2yraqZ/Uo4gVXchP37hJjkJnDP/mo+7KELV7xs1TZ
	 k4vWu1aQ3nntw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B5BECE577
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172584575361.4822.10282942709000719290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8995c1b72636aee89254d0079604a62aee0eef732ce590f9debb5a7a32d483
Date: Mon, 09 Sep 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725845753
