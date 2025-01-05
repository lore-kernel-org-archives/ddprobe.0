Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648BB442F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736061954; cv=none; b=hayyMGZsXEm+V4T4muhTTZQ6r5p9ImL5+YKV9ueUxzFdIp3GY/gleXKUfmLW7o3ohJdumKPP/iEK3lKW8q8KfiNGlaQzQTI/D5pKMHn8U1FUVMug4jP+3gvpCR5fgbmP5yX9Ip5W1AhNCg7zJ9dhAsViEG8bIcqKzeHdxsFSMoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736061954; c=relaxed/simple;
	bh=BkmJ+B0ryspYauv4xlTswHxMvMIGJ0jNc6A6AFhCzR4=;
	h=To:Subject:From:Message-Id:Date; b=GEYw3AwZu3nanhUX8ki4KJKN/PsXv2XaxlkUMGSEOZjGH2BCLdOV7cpl4rcb5q0MIo7MTpGlaHzbrDbHJQ+8y/cJgwggKt2jRY/ydvcegG7s0cfWGPU0ZHhMZwUVyyBDnevK3nCcxe91FmHGkgcQbjM5Z00K27Y5hdzsnGIWgT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxd0YhJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxd0YhJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81B9C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736061953;
	bh=BkmJ+B0ryspYauv4xlTswHxMvMIGJ0jNc6A6AFhCzR4=;
	h=To:Subject:From:Date:From;
	b=lxd0YhJoXWhiBR42CUPOFVJpxj1zKChOmJ2NWH7X9UPDUwnq2R3eJhn0BI+521CSE
	 E/4Qpy7C4Wg+DwGvVuwup7N1yplVDcOAcKsOGX63Td1ITVeiKe0pfPhfDqDLX2w6J8
	 /u+VoXh2uiLCZHP0NWI1/maplvX3aPHzrxdpvOGwaq1UGauX33TV2xUHlF4u2vQopZ
	 XzCJq0Hgr/LOn9NkEU0zdo23poeOneSdgNfDgUGoX+znD0mc+zlTPrJ3I4eGLk6v5e
	 PYBi40jIPu9xFy+2fVcs4mPQzQG2nKMwTUWzgZAJ+lOa5M8TRsX2kCb8ZHbRQaxx/z
	 Vev0FqkYhI0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A09E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606195365.5792.4270811805313022869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33991249d087548c30eda626f469da6c10ac96bb5465bb2aee7363aacacd27db
Date: Sun, 05 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736061953
