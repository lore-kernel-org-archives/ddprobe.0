Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419DD3B71B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789477834; cv=none; b=uQ9qyJJjWS4t/6aWw9HcOutcOopYWRBhcR1dURTIglU3R+U1/xS+D56jOFUHEtwJhWtkrptLTEsfMugIfXE5RWx5YyUQp+AW6twQr/AUGXXTOog+3el/r4xmsT7iY5WoLuSF/rhiYojKM/ROkAVNOyfgWk5WUPkliQx63l9yijA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789477834; c=relaxed/simple;
	bh=OiWeQFSD5t5pXGPKzQV8yxAyBOV3bKcqS1JMA/TYKXE=;
	h=To:Subject:From:Message-Id:Date; b=kE871oMipVHjIueU0nMetXnVkqQBvVHzuFN3iI+8g/Yd5rl6X5fmNWRDQV0xtHhq0YE/Dk1HndziRyCW5qwHrTwP2zz+RXdLuBwmY0tXxJxCPRbVA6q+mykTzKVkJMMwKH8Sdc7UZRwJRTEYJsQyEdBRBnZsaTpV4HWg8qv6WII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTM0vKeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTM0vKeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A1AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789477833;
	bh=OiWeQFSD5t5pXGPKzQV8yxAyBOV3bKcqS1JMA/TYKXE=;
	h=To:Subject:From:Date:From;
	b=DTM0vKeIMw5viWJYGOa/mBicUCzMeUeij7jj3DZmXhiohQQ0gGioImVtycYyi9fE4
	 89qYqWqGonviJAa0NOv5lpuc/Ro51oa654a2buNmx7XxN5WU9haWBhGIN+ANSh1xOy
	 fQj3Y2wF+nV2UTboIFwsnoLxe/iLfCuPuFKi0hsWc2gcsCt5FHoyiix2B0rMoiPW1S
	 FniU6mqnMKu73kfpkBZl/szMSdux8BD1l8WM0FPrLe/1kBwbZP9uXVo9pQ7+9iAB21
	 +hKM2lZ0tq9cOhXCH25vkZvBOjuB5CrBld/TBs/vybJpxg68HGJ3K3fZzEODwgVf3J
	 E5V0E0pMReitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3CBC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947783368.25536.10804337849439848485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b108d710ad6c35697999ba3a5068c670ab1f3dca2f1abdaf89d6cf7ffff6706a
Date: Tue, 15 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789477833
