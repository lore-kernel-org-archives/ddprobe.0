Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E4C1F754C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737104154; cv=none; b=CSGwHmLzVLnPGB8b78yoZO7megUKhQBUWo5VHXCkmdbxLHa4IJaf2oUpkSYzWVSDlR+obmbmFwU1di4l29F8hCeNO/2EBwC7GY1V4tGcHy5sUIqXmxMAx0kFUtN66HSrJuQ28L11dpOJj8C1RDrEakZX4Vfa0ilZPd5WgOsZPb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737104154; c=relaxed/simple;
	bh=1vGD/P7no9+0zjh6mH1Etx69lBv6u/ZZ8NKpvq2Ha9M=;
	h=To:Subject:From:Message-Id:Date; b=RbtRqHnYxV2tP9T7ZpsGOGgarYylhm16GYYRfG73yb/Ah0y36sTmKnt1mus4bW4E8XTuU2Jx1OSYVzcJGjaSNkCbOreAtBhhU4PzgkGe1yEQyPL97YTXmMXXnzWCT3UIBshjWo1tvdz+scZKnBgWyfMCFUJxn8uvdghKSt3IbDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfvWC+C/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfvWC+C/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA97C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737104153;
	bh=1vGD/P7no9+0zjh6mH1Etx69lBv6u/ZZ8NKpvq2Ha9M=;
	h=To:Subject:From:Date:From;
	b=tfvWC+C/h/YNuJSrc8yNM42Xs/YxIQmE6nPuJy1Qhmk7KIlGWzWLCfSwC42pxBWjJ
	 lL5pNz6TFknUxlC4jVhpKQfJrnN5pm/41GOL3CGgY1US2ELI2NcjVNVJlNlqNKmcPb
	 Ufz4E4kFRmq7r67PDqiCpCyxISJWHEyV9ttNnvHw1wusBgjYnITECdO9ASOyrkwwR3
	 KUVSn/ycgKv2Em54I4N+hp232QZgaH1b34E9IK0bIY+TmxhxEMWKF51mwYb9ADYnTY
	 wvylM/bxickz5lf7ONlFFMYYQg8fHNkI3lfq7rAyb8cLt4TRbK5/jo+UbaI32KRaSF
	 aiIbCMpssQTWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F486C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710415357.6497.8198442067192878086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a31038348a766b8052f3b3729489218c54c91af808d1267ef95d81e5747eb23
Date: Fri, 17 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737104153
