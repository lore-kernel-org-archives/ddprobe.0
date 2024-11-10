Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA8413AA38
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731280554; cv=none; b=iN6ZT/F7FHP1qqu8Cc0ZG14s6gYD5Ggo8t/5otr9HxwAvITfRgKM0iTCBr8mm5kEzkw72tnY0v3bkX+aXsYj70vQCQPqVZsCXrgeqPD9yT2zUPQkyepFsELu9bvonB2F1QzZ7bOVRIuOoEjR0yrYr+bTnx7GBL6REiGlvkEIuhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731280554; c=relaxed/simple;
	bh=s12jiS40Y5VgFVEjK3Vbm1zLpJ9Txgdm/BpqYCL5Fh0=;
	h=To:Subject:From:Message-Id:Date; b=fAowDcPlBir9pWYafIwYscv6g4j5IDsBdyF65/WDLDOj22Q5rTIpV9tgHWU8xmeHr+cQPMUadE1AUBslEulKM9rDVGj8KniFj8b3AON2zKkID/8j9eMVGkc/U7Tb/neL6cFUc1t7TlUhWhdnkLB04qrSWz07AIkFtPXRPyRgKFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/MuxG/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/MuxG/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8369C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731280553;
	bh=s12jiS40Y5VgFVEjK3Vbm1zLpJ9Txgdm/BpqYCL5Fh0=;
	h=To:Subject:From:Date:From;
	b=I/MuxG/N/jwLj4VRUXASlXID9LAetPoXOba6MFiWId2bvVwQI7Ftx4jdqMe56SXQD
	 k/ZuJWs+NgWnW7HMYR3NlHJRel59XvVhSElw/TMybynZpjuGVAYkWFI7N5BTzKjYpk
	 cEoKkHt6AmFTI8MhL7QFHp16bPIFkVZwCtEIEzV/kP5JjAzJc02rZ76iHuZ2DwLmyq
	 daoLRQZLnYXh6Z+xCVC/qvKn0sdo7eAYm3HXV0kGe9ugPWy1970zpIc3KE8k93CDqt
	 T+7M5YDULm6ckPeFg7vxmIHoNYYbO1h883Epq0mZEzdKHfmYmMw2k3T/I592H48eHv
	 7NqJatsMtJ+OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B023D12D5A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173128055360.31364.5272310403337512565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c90188c926dedaba6c2efedb44ca42d7329bab1de355b1216bd61bc56ef34ff6
Date: Sun, 10 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731280553
