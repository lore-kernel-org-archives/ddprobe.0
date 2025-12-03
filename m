Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414BF285C80
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764804174; cv=none; b=KLWivmtkRPsy4OA6DezX8FzZQfmHoeAFIbqaKFWdjBysQX+gTTh4VVD/dVY8mUg3kW7QeTOzfMH6L95izywgeS3cXchwlmnvBc+b2Rzb3XcJOYDrUsarBzTtrwbxHIBAxNq1bqyvWqHDMD/lmzqqpuZwu8kACKg5jLCmof04maw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764804174; c=relaxed/simple;
	bh=fmNHEZwAOHctJ+fRO0niLxEMXO4sJPp4Yr5aiIp3pKA=;
	h=To:Subject:From:Message-Id:Date; b=Tg6JgSroGzksX4vvnvv51UcWIMcj8XBPFWzy2BoojQSIeoqWLqYkoD0T6lX2FdD6Lp69tOV6fiXNU/g87H4m2rCzrQ+7nX0xqCz66XEdCMT9RWTjDkfBh8YPOPmUTKMj67KyWxtHDmBztaMYJeG2GdZTJ/94Bzlzqy/9T9seSj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZnE5aJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZnE5aJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB4BC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764804173;
	bh=fmNHEZwAOHctJ+fRO0niLxEMXO4sJPp4Yr5aiIp3pKA=;
	h=To:Subject:From:Date:From;
	b=oZnE5aJ+PHtROfnXsV6YCwEfLVFObkTLR7eGqCs9VK6vcODMkfEN+nRavLU/Nwf7D
	 d+m+8G3t6vL0Tp+DhNOmRgz3Htbf1gUqupLnap+MvbQUEmbPnZo5i4F7pe6dqH5slc
	 +g5dVZzNwb4Ga5pgK0pwjUEiFpKr7xMLOny+Wh9r4WNIEsmBbEcie3jY7RvTxwNHrj
	 lNhMwQ1Ea9A1yc3BUTEA4W+eFv6zA3VfocEpgBZexaX7URo10m0wD5PHQJnpJaOzlf
	 UPzdhCqFZ2XdaN9wmvsY/fj5THPcNy5qAA2sKnyzTaOFtFESqlknHx5WPMVF0d3Ago
	 wLsEGWMSXA5/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4E1D1CDAB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480417361.24017.5558056215056482571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34dcbc11b083034b8c04fb8b71fa802faf394e59ef63487eb47bebdf4de35b4
Date: Wed, 03 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764804173
