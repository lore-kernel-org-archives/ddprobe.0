Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3598415853B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754160594; cv=none; b=WSWf00Hlv8KeZfa8tTQgMLto0pUHWMq7BZbaEXzcxVtpukKYgXE9lAKYeyRrRqnQ8hsV4pfoN5TUyk+OHNpaIa0Dha0pRVyUQfcZgqxUalbvxlZTgnexHcYSbvpCys/9/PY03K0QXZ9QkV93KEwMRoA1nu/XJjyT2VFTddB5qw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754160594; c=relaxed/simple;
	bh=VmBvejuju9p/uZRYUiP1CVvywO6AC5XcJFCDNUIJVe0=;
	h=To:Subject:From:Message-Id:Date; b=JgOeon0EdFRlAuNwe0rJ9RuOs8+nemtg9kOD5fABGVfmbqknsmZB8QDj+KfriQWwCgVa8e2yHlyHnF8N6Hge+brw+7LOJ4nNDkmtiSVz12FlcnqTSm3pnSA3Cnq0PBJiJYZ4ao7iiwFWp5qOvflJxWoPehxDN3RD13ne2yJoeQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHAfb6zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHAfb6zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FDC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754160593;
	bh=VmBvejuju9p/uZRYUiP1CVvywO6AC5XcJFCDNUIJVe0=;
	h=To:Subject:From:Date:From;
	b=DHAfb6zEwb1h6j9VkWjVnvJ1Tk7t9Z0U9QAhM6SGdyNoGUecQ4Qc6Zx/XJmlJLgDX
	 mPacCOv9wfpclaTUxDauG9QRNEDu86VtIQXR4lzELe4W0hIyCODAiL+8+jHveRssS6
	 jqbtLnwEAWzd94aEjduIjChD/sB7QQKkIAvo0B2L84IetqIHgEM6r7o1eYAvE/+wDV
	 C37xLr3uNSzZ8zYDDk7P3FVkxHIfs6D6CNHXFsgAzPH4BkksQ6ENqlIj8B6F3B0ssj
	 LY5epf/YCkNHezwk0qqtdqvBkzun/y5uBVrXEHBMqHZGvOspUq0JT1k0cDAaSrVcVv
	 BrTR+FXUPhIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911AAC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416059357.5255.3836260583467687262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f40a93808bf0a1fbd3ec728b88aaa35f9f212b419a67332f660f3113078495
Date: Sat, 02 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754160593
