Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C06433E1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753335594; cv=none; b=nVkj4BII5irrdyKLKvuXjCXnM4W8zy7+A3rHa+Pv06dvIf1X53lmisyN9LXLm9/C8FGoTIU0HNuXJMqmWFuhDpAbIJQtMMcSwVSEzOhYSF/bsoICSbc1EbZOEh92zcqI0eRusOFD54Vu3xX+tFwes+OBlQDDHqmOZ/H1bCw0wh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753335594; c=relaxed/simple;
	bh=ZnEF4hDUFMVh1JTzzYU2lRRMB3WY765uYBsYABIqNvM=;
	h=To:Subject:From:Message-Id:Date; b=OS3mMj0NsknYYFdrjkhc22gF+zxfw2u0gGv+yOGxO7f9jYMkto6OJBgGAe49EhRs0WbBqbeApuobhavODMwPLW1Mmvk6on0EymEK+EGQSGmngOHxi8aR68m/M9GAtxAamMu8PU4TZL/jumGWxJLFJhXAsj3h8MmaXKo/cYO1qW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4goGGV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4goGGV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F59DC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753335593;
	bh=ZnEF4hDUFMVh1JTzzYU2lRRMB3WY765uYBsYABIqNvM=;
	h=To:Subject:From:Date:From;
	b=L4goGGV6G5ndtXdz15cX4Oec6u5x3fDUyZ30aDe88w9KugaCa0GqbDJoCCXPMGD8y
	 lbU/h1DBICw0EZYEqG6L8xBbnGCHEg/T027UjKNfqF/6FbXuvikhvcoWsiJ6YDuFlu
	 Y0Pz9Dj1dm5Pewz2/OKDKZ8CvVQUwa4dR1BCIEzF20gkBcaujRjTy3PEzCrwxsUEj4
	 1k3f9+Bo7YuHoinYrAncbSH8u/sNMy0sRVnnV0j2Q9rhRBfVaxIe7op/4NjgCok+/5
	 LxChaZ+Szh2W5lna0AwwRWfSlXeBwTzBp4V0RxlT2H5mUyOf+0wtprtl4HQaUbNqSY
	 yE/z4yrsCaFrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FCC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333559357.7694.1070001729807549210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600b00f425c738f37624ce2d7a8cc1cf2787f4675eef516106ca213f7f6a2b91
Date: Thu, 24 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753335593
