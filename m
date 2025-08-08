Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BE338F91
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754662794; cv=none; b=Ho8FzTwVJRCJQrhbjF4kl/1qJ+N+Q8Qxz85z0a3b8N1EyxwJ9Sy4O7jkRam1+Kq5bb3GtNCF9HBQ72doS0TPGXUoxkArL4/FI+D6dOdefk9eUQ0ewlFQNLmV/gUZC9fMYQKEtv1wAH2BVnr2/P5GVt0wnzl0f1wEAbptKJWamdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754662794; c=relaxed/simple;
	bh=vTXOsd3/kOkQ1Hf5NjUtyuWGaQvQE/nVa0+yhfcW4jY=;
	h=To:Subject:From:Message-Id:Date; b=KFj132uRD/5CSGTkbBdGyBb/QLlhkSSXBJAJ8c5L+ydcg4FwHGThUynLB/It2+MgOm4XuY0gTttqkj/B3Vx4RhRI+I7zwmpW7HqjJEd6RIr0AwFIdDpK7FFCujSRS9qa+FohxAW8Pg+H7DyZOHlL9Z6lrkyZfruQnEGtxUISpi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAJKYaVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAJKYaVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D443C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754662793;
	bh=vTXOsd3/kOkQ1Hf5NjUtyuWGaQvQE/nVa0+yhfcW4jY=;
	h=To:Subject:From:Date:From;
	b=DAJKYaVKXblVtlS2MLYMM8tHu9GS2NXVhekIVhEzbkU7qgR7YPLmY9/Sl7clqS4dX
	 iq+qgRHOLJjSA8EcX8XRbS8PvVu2vYrudSfLeEpHuoUcDNP3XEBxDNWo4JH2yw6aIH
	 S9SDMtn4tVqSbrHyrrFvIA07o0NxY/+Lb4AZC+HhVon8qOkWqe8TZ8cFN7zKdX7Hs2
	 Q75h+ckaUnWXB6sAhSIxmalOoTKFsUNX7d44NGduJLB0kh/J1B/aRZtpGn2x+Hyjis
	 eWdpA3sxrFeTF2RNYFoQ+q1i/K6SjWNMauza1TomtByrnBuX+PUJoQKeXsmnAaqkCW
	 mFh8/3O13FMKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DEC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466279357.29317.9205002923127131689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fce2733f5b9bfb370ae34725ceb8e9f2d133bb2c600800c1620a95c1693153d0
Date: Fri, 08 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754662793
