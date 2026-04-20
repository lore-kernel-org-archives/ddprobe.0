Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E803213D539
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776728254; cv=none; b=JnPzJpTyqYvDKf/BpMFbtzH8Rp2TX2bpn4L4/nXyTJ3N4hP2Fuj3uHoCSQNPgOC1p3Kijyh+I81B0r3O/BxmnTEW8QgsF8izHkRNo8xTkP4vx+wH+5pHoxYY9guj5YHbw9tMibwXtBRr9TgqR/7vJUY95z4FNtfPOm1Fk+k1plk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776728254; c=relaxed/simple;
	bh=juEOPFPB2e7onlpaJ0bZNjzDKOp/nD0vkHEhsBVN9J4=;
	h=To:Subject:From:Message-Id:Date; b=LKHwZSptlCmOpMII1KwkMCzPXitoevHg6t3j5C1aHYnnPDhaSU4YpRlj/gQNESqfIqY9hFVSjoGrZ4JMNncywRjegmBwvJbMKZC+6IcCWS9iAjF4WF02j0pjNEPLwRsVTpWjZSgiSPeXMEHTxQlnMGavEqmuUTpV8FQsQvVcvA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUHEjXcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUHEjXcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2323C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776728253;
	bh=juEOPFPB2e7onlpaJ0bZNjzDKOp/nD0vkHEhsBVN9J4=;
	h=To:Subject:From:Date:From;
	b=tUHEjXcBZTeh8046hMmhO8yAAjFIOQhzQllvXnVEr19bo15dbkT6yKtqVYO0S09iA
	 MjYDHf6uKtkaklht/U05ehx4t8W7KnvIySIzHKP/X+BpdPKcuPS11Vk4I3JMMsC34H
	 6hzTpmXzvpoFt3NI0r0WRQ0TiEeVJUwP+eARr8H5NTE4WV2FGv30Ms0g8L7cbNLaZi
	 2LqJ+tsV94YU5o2uTZkw6a/AB+waH0XThfidI+I/Wm8ZDlSclDKzGE8N97LgRlBpUP
	 u27ZHSADyrK0UrW+dL5uaZWRlxCcR8K1FOnJsmOEozPxtLTSHqt8y0MRDTRph2moDs
	 8kGjhwrpYTQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC7CF5A8CE
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672825369.15841.6846683648620913594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4572004348b511c642d943042e83c5a04be4c68dccf55a8dc994a9d9e9c4769e
Date: Mon, 20 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776728253
