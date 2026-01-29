Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3148F54739
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769653434; cv=none; b=etgF0GVykP+Op8lJ4dq2aSq1EUjXeA/ebqPLnUly+VJEgOJFqzYuyErA5rZl5J8P5cXokIUAgq5hZ7cP8mYe1mj1P2sPzykn+tlfns+6ik9w9blik+yd0f3LdWl/iE97wvejT/uQjZo1Webws3Oi6lC9+dKdchU8NSwYcbARk+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769653434; c=relaxed/simple;
	bh=haFEYnr7rJIdSz3njlsktC6Z+HKIYFVMKIbsGb5X58I=;
	h=To:Subject:From:Message-Id:Date; b=RDs1OfiZuNNX1Z2z6I5IADdFlUG5Ki+7KzjsUXhiZ6R/B4nbndodsOSC9pYZ3AIzwyZ6NKDFlQoP5Io+qo5Nm+/lUYlk62eSf5B2OwRx3ettCjAFSL1aGe/LiVuJegESg1nEX6K9uJBS3GHqCOdeH25GidHTPOS2nhbst5IyE20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZHceHMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZHceHMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7298C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769653433;
	bh=haFEYnr7rJIdSz3njlsktC6Z+HKIYFVMKIbsGb5X58I=;
	h=To:Subject:From:Date:From;
	b=aZHceHMuTODyZWNupCbZl7GqrnrlfmmgEpcVXNnUga2VhJfa0r5JUfrjkPM23pDB5
	 nAg9lT+rA83n3MINJeQ8mtE0TFuUZ3pDeiaLTYDkYjLlpCKwxDqIC7fsWgenEfuYsW
	 szo/kZdhVdOTroZ7wgd8XknAnS1D4Gc2KMRkkuUESAj+4DxwvZ9ylX8pcSYHxYZuVy
	 8ZbZmBP8vnXO4W0e8+lJdTTCg+0Heupe67kerIddbRFVrr/MnbmZr/cHy4yYLdJZG6
	 cDv4CkBvukkykduDSWS/3PBjU9VC4TABvRfWSBDEAdJGMO4lx189XzvtNc7/2j9Axk
	 hbzXX3oSnB6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE2D46C01
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965343357.18280.3715101614943455093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562166a1ad706a2ff649c366c3d7056a74a7cc54359687232525b56d7eb8a0b6
Date: Thu, 29 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769653433
