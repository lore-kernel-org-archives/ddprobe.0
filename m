Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA111C6FFD
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752793794; cv=none; b=DU6vgNXkHV+ykeSx1AWAU9MEgl+5+uYJL6K8pyKOLx3kJeJICzoIRloH6nKUshf3iMuDx4hTtMddkNV04nCSZMhlwA7ccZl5lNTVM25RNiyNPSKdX7oixKnxHZFiZHLGCHdsIPqWNIRw874AQdjRneXcfIRyvfmG446N/H6fo+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752793794; c=relaxed/simple;
	bh=NpEDQmOnbqJoh0VsUPoe3dGO6iewazgc4vTE45AYFzI=;
	h=To:Subject:From:Message-Id:Date; b=nxsBWtEuC8xUxNzlEFFB9MtCACA3Fo1ea0dOcmSGMO3MnPzWtp6WROI8olNBLtRtRv5xAcKTSjwG8CqIIPVSm8hxec0FE99RaS72Qz1rNCP9nGd9hfLAy72481L7PjyrZzXcOKF8bT6PZhhb243FExbDsePaYanM0gsJWqk/lEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGRnU5D5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGRnU5D5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9374C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752793793;
	bh=NpEDQmOnbqJoh0VsUPoe3dGO6iewazgc4vTE45AYFzI=;
	h=To:Subject:From:Date:From;
	b=sGRnU5D5HkzJUanv6DgcwFD93V79c2+tYbn6MBwxXgyneNZAiGa04+JUN3t8wHu8O
	 Mr9JYcyctkQja8yKemonWIkPtqqd79IqDS/9R44xkeZ77nlobAe9My4b/cEBhQIVOx
	 P3wufhnSKIoMwGDKIYkykpEMleoDGOGVyy3Wabp2mFcyhU6W54e7YD9pG1eTRBCVFC
	 r+jAKGGi3zadJ2d3p86UKbLIUY42biLNL0bexeJpT/+/f5qrIJfCNICeOBva14PZRT
	 s6q3/haJubAPTibK2tzv49oj+3rfFR/KGwLdQIDQHfUbkKDaK0StqTTrvqVUiPZJc6
	 OchVE5Pd5DXSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B0C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279379358.6364.12005425099027655996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03919c583fa7a322c0441ab578a407a34564c21e218cfb13ab528ed0842d034
Date: Thu, 17 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752793793
