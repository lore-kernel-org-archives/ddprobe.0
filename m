Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262FD2FB084
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778550034; cv=none; b=jirSE++tmBKgzT80Vheqq/5/WzCMlQ6aSwMM6rLfDVU9rVDtipp19yS+hhtzxjfAs2c/XWZgrjyik+K5zWFcVeVdY44MywgDJBreSQmWXZ6/1ieI8/kGhbYeLNQxyQZtpKq6evJJMep67EcgjUsU71kvBX961mc3ZtrueP0d5S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778550034; c=relaxed/simple;
	bh=EmXhcqAOPEzLHGDIBP6IGihI87YGpbqoE0JgYdEaXXg=;
	h=To:Subject:From:Message-Id:Date; b=G58ckah9oy6kjGBM5FqVjxHaqyRSy3gMNSAcyFDTCZacJkfLlkS9JmDxxYZ9w+Sd1Vnk+9Y7r+9uCvNm9eUQ5r9d9M9oQOBjXnYIxf9yoTYH3+x/Ixy2vl8c7sEtMxPzR1mYn0smuRW/c1qTFUTo1obVp4xmMpKov04AZ+SoiXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsHurYAF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsHurYAF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADD4C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778550033;
	bh=EmXhcqAOPEzLHGDIBP6IGihI87YGpbqoE0JgYdEaXXg=;
	h=To:Subject:From:Date:From;
	b=YsHurYAFMNJ1dQO97QvuyXdyLygw2csbjhrkVpsrqdZnlD/rL8wcHuSOwqBxKIzqo
	 HEEnzXknmNbTN5sV+KzGTjEamYtcuwCyuy4mwHlMQR6Ew6SNm9mCPQ0+VYsZqfNLjG
	 2fVweMuapBZeyOAKq+KdPNIf0u2kvZzC2NFOUw7KXjXINNzCb5X0Cp7lxqYb6Hi7ng
	 +sXjF3XaeKLeg6udjfRyOH8l5iTko5hdbqc6ZmVgEfuvCbxzyyPRiJMYKcC9TOACgM
	 2pW8wZVfEcdp4HfZxuavHdpyIFgeylyNm6NBt94PBrsLC12ARqlNUu5fo64wWaPWYg
	 EdmFE0y1PS9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA728CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855003368.11562.14354651287547956765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36748492fb9e09b952f381eb49887b0c0c063a3c1ed9a239f9d27f9e1f8047d
Date: Tue, 12 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778550033
