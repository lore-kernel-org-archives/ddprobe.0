Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F7F4C85
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719106943; cv=none; b=sMwbLRBbFKHupFpGpTqUNrW6ghe1QfQ2WsJiNtEsJRDBbO3Y+RuQkZH4rZcc2AC4TkrHEwGu1rlULfJozMkJoN6AbVpk0tWkJxSPGnwgvEwFDItXZVGY3L2TExq1Uu4O2BZkWRLOyA67EQq8v+eqVOCFqVCwzV2QyLa4tkquCHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719106943; c=relaxed/simple;
	bh=drpg9vuwTdulqfB8sZ1T16H8hN72iiZcG6Vldm2w8A4=;
	h=To:Subject:From:Message-Id:Date; b=rzQgaEf8W2CdNcriq1vz/7HY1eq4iUN0Kj4d1526Twx25hnOBnO7w9goH9fmpzkFj1kZxZ4LrwpvEjn1oZEiINWbGeR0LcqiLeDOSSynkAWoEIu8H5JQhzG9ecNQzfw++gmQ3D7skZd4qRo2Uyl4AfEPfEV7TNWlb5L+zXk6ReI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ValyiiDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ValyiiDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6531C3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719106942;
	bh=drpg9vuwTdulqfB8sZ1T16H8hN72iiZcG6Vldm2w8A4=;
	h=To:Subject:From:Date:From;
	b=ValyiiDJB+wcXo6u3nrfl+1B2gDZYJnxm+gmbF3/Q/cSAfJEyZ4EmdIEJq4hrzrfQ
	 iFXxcDQIBn8eYMxcciEkDfb3QimHxbpFDE4DZzH8aPB+b+tW4pVXQ/D/Bm67TemZl7
	 UZMc4NyD/G3tnLAUw8k0u/IiTVbdf+/8KhSKzo7fn2sfhesRrF9Fi5A8EgrziARM7a
	 Bkj0bihbWUJKRqspg+mm7O8HhrgBr+Wk0HldooO0sLPgjkmfQDGI1OVtidxZSm6gQe
	 rsxPOXI2DuqPfnCBm+o8s6lWkTOdt+a2yuahJOwFLXLpwZ2Q2bpNNXb82roiWN/PGx
	 C/gCZ9CGocXYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2917C2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910694276.32383.9841982788720594252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1da56f7a2ed5706fccd885a63a9859c247b0bd6a075305a9c850c65803d2ecc
Date: Sun, 23 Jun 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719106942
