Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B79C5234
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738477555; cv=none; b=ZT2nVkYCx/oPEVs1mHzd3mJa2p0rsRZMQDnW+SzdG7FyCrX8iu7/W620CpZ3EGiTqttb04v1pJEWclMX22RymvIqpfl27gEN7pzbXg+p6HvVcVMS4v3W9BwQID2GQLyspN9cezt/ecDQdPJyvmbqifTArzkrzz4zzLsRUj24Ses=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738477555; c=relaxed/simple;
	bh=gAtkxL1bRtx2dWomvMhpweow2N112OMdFpxOBNMZt4A=;
	h=To:Subject:From:Message-Id:Date; b=mgkmABlKKWFJ7r9lSw4/+OVwCm5pR9Q5UTRq2yrGC+8bCCT+I6/dK+qRo4Fs/E8Ys+y0zoCCa3Ln97L2vAde4cfQzGE2dCsFzSn6M+9JD6Md70spOn8aX7wKaiYaVQlrL9/x62gzchUOCTFtdpUcx2ZEeAQgppSvM0wA7HUze8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHr/5ima; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHr/5ima"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1468C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738477553;
	bh=gAtkxL1bRtx2dWomvMhpweow2N112OMdFpxOBNMZt4A=;
	h=To:Subject:From:Date:From;
	b=uHr/5imaxQ+v2GK0Jxk5flgaYzZBKprCcGk0o/PF3+DBmhUUlw/IQVRMvt4COHZxM
	 T4u1rsLtVX8gayrC0smabCGxndTUL9qgmbNqAJCZArqcU6A3RgehrONOvEKn+wxZNO
	 AeEm6rjESo/0nm781S6LK2cz3sg5F7afSr9LviluoP98Ge8QzDjBFnPGxcTKlUG1wz
	 p4x7oa0O2W8r+9OpEEQYvFyFiNKDkj2KaYp4+OK3xo0ZcnjQQ68OL7hixNSED0O2EF
	 GDuR1bbE2Jhf8sY3NuUGuov/4yX7fywIUDgUdxRF3OKRSafDQ2tk+OLJIe05vNuMX0
	 ixancbeqJhwwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6DEC02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173847755359.29959.17694660045166822707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fc72f84ba50eae81cce222ba521a32a4ad831ce6f2db38cc9ccc50eb115657d
Date: Sun, 02 Feb 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738477553
