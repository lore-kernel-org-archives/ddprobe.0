Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4883FAD4B
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755734994; cv=none; b=HoBQDDKwtUfsj7/hTjwfZFL3D4lL9sU+/F5tfZDMdBKYXH/ph7SFpEwNCYhRBWjamlxm7o/bJENmL/QDM84Gd6fIqVVXczer5wEGkxOSWsBumZZRXH2Ywa0Ibvu/cKw/naesoHb1XmFz27SD+lXV7EeK17sfrEt9UpWo4AAoQPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755734994; c=relaxed/simple;
	bh=Mtna0dBHq5JLVWcGn2N1kdF5K9bn8fyI1sZvBEy1wBw=;
	h=To:Subject:From:Message-Id:Date; b=poC5B/SDBYBYfyWytCikC3p4dz4iP0smzgfN1uacYEamgU8ve5ALFe/bgAA0Jufex57cj7uta1ML/VwsiMsTtENSbmMVr18vsJl+WDpwqEXP0rj7146I7+iwkZ4APLCgxzkjv7ofHsLqQmEUEqCk3JvYc48W+xI8NsDiE59jn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNBepOTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNBepOTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0743C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755734993;
	bh=Mtna0dBHq5JLVWcGn2N1kdF5K9bn8fyI1sZvBEy1wBw=;
	h=To:Subject:From:Date:From;
	b=VNBepOTZ2HVALYVhFZP/aJ6upcia2Njg9GooXtF943Gfm56HQFPG4ikMFWjqGTgpS
	 UqjR15BXVT3x6gCuG+DYsbHjP2TY75Q1Pjd/yPQIvLJdclwYTjwn8DUUZbWQ6i7HDj
	 NEvSNRr/np+An7UzOQnaHN2DrU+mZTbFUfG568IayR/mVlWv693Apa5M6tls81EyL2
	 q1SIm5MwRy9vZq4ZxztA7+dX76f8KsazqOk18L3uTQ8DWMnGYrL32AckqtUGwPCVdI
	 DhNYiGXVmwDVYRb3HcCQHDprAPhUdqr+LcAfgmZO0U0dqSW3X8DRIJXwANJ4+OAy3N
	 a03zgvzKk4xHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB47CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573499357.1653.6299933580268170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff519fc8f6a2eb30d31b02347d3b9b84bd826149c91224dda6c03cb4a23d980
Date: Thu, 21 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755734993
