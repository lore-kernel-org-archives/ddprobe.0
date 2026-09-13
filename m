Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497822E8B64
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789320634; cv=none; b=qjk7gsrjoxBgNs5M5L3zzcDAmZ07oP9rVeHXmTaKC2490G6/MoAQ62oX1dk6gGtfdx94IlZBqFtXvmyDDcCpm+0lLaGQvn02EADZ462OHXRQZU+y37CC5ZEi9oKHW4u0ttdFC1SjqPtnuHqmln+f4b792mniS2xWSnGkYgJRHKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789320634; c=relaxed/simple;
	bh=IwWN7fInF3FUZZnPQtTjbPhc3GKU4zjT+FCLQ/KrQmI=;
	h=To:Subject:From:Message-Id:Date; b=V32d/PEx12LCO2/Av3hZynYJ4S8yMy+QdwXc3bCDM3zTR0mEIaGwX/X3xFuYnVUies7fyOoKpyHFhlVbwYrgkg1EEZ8D92uMWOrA1thdpN3qT4xlMvjSpiSrzAWESb/PpJHmPWuU0fmqpuBowUmTQgVrSsogf/qjslKF3K4LmoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkG4KtC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkG4KtC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB10C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789320633;
	bh=IwWN7fInF3FUZZnPQtTjbPhc3GKU4zjT+FCLQ/KrQmI=;
	h=To:Subject:From:Date:From;
	b=bkG4KtC0gQNBh1S0aoFdR9kw0tYUqBXZkHkT2RoMGuI81o9nroXue4rmzU65QYt2U
	 TwUSzxef857tee/FqwzvBZjpyuVbudFZUPaCjiKlYCX0S+pvn9kwfwyMJZ39URSjo5
	 AUCkshphDjDUOtXlK6Dh8cmPZIWzQ7VVFKa3oEvhIZlNFEyq0ylupXf5Q8Gu7Yzteu
	 V7gumdErVQpTyGbhfmvSAnQYpX1o358rV201VXu1dPL6dmJ1he0HISNIxctzB6k3dq
	 U19Jfr67TUh9j6f73C6CP+IoETtS84lbekBnTvN+fxG8mYRFghZx7OoxX+9tcm6mW7
	 E/KI4Z6RhH1bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A1AC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932063368.2315.12431168237184110395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735e6064b318b48744db2d2910f77e14c8609bdf585a8c3f8522e640a50a2b87
Date: Sun, 13 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789320633
