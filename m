Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCD8381B0E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785110434; cv=none; b=IlYaQSWum9sv6HmoGhL7hlLfdxqr80hu0OTRmT0zckGzJfispX/z3qUy+BWruKtpIgt9+OGo7OzksYkrtBlBA0aVARlj9OT4Emf25zgk5sx7m3zD86+/t4N/Xp27wjDBTz2Yvk9aUGzJhGOGKT6AcKhhkLdOEBpFMa7tlKiCY0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785110434; c=relaxed/simple;
	bh=xwlsfXrdfL+kQW2iFnqiUVUZVmAK7MZAlae/jyVBxgM=;
	h=To:Subject:From:Message-Id:Date; b=ZXPT4/vdrEKFp2uWQ7pnlWN2ed9JA4k6mTrrDZeQaC/QfHoem4N/V+xG0Xz/tKV5WSSt8Lp9nrCR4uu6CHqtMkFmPS0X9UrNHsff8roUp/BpdemM+iSulfMJI1G9IpGu4nKhKy2yxW7FldV+frtCnmEg9crI8v4oOJI4mIRFDIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIFFqm11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIFFqm11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B02C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785110433;
	bh=xwlsfXrdfL+kQW2iFnqiUVUZVmAK7MZAlae/jyVBxgM=;
	h=To:Subject:From:Date:From;
	b=fIFFqm11SDHW9wGRwVl+uN7l/pKsEZYV6jxujpicudo7LbC505KmQYIznFntgFFsL
	 ARIDQU/dPcxBnVjhsG5PEFUv9NmGDKuqjkyaT6CXyA2A0y4vdCTbxth/r/8RzM6gh4
	 +vCZ4T2WLzTwrMDO5xmkoqukpYADJWdqJC+Si8IdzW7w2K8vcRx7fuqAfGl5RUxaS+
	 LnjIDRnecEu1ZoYNb0J1dbXF5wgRG0mlUrJOrxQiLNyM3UjKgJIW7hXceXidBeOXdh
	 xd88SsWKzB7cjHTwriCCcegDMG0iLLPIbDwM2QbWX5/N67MFvY5ztAUib1+tS1Qx/O
	 CS+mHvlKtZJ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE200C53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511043368.5198.11063009027553671957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741946f08dcadbd2f8ef95b5d3e506a07e7528fa68a475da1e947d7739d7fbce
Date: Mon, 27 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785110433
