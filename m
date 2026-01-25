Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA101DDF3
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349834; cv=none; b=FW4OQyILQFz576Xiw1puWpp6R2mRlCKY2o68gYCrMdyt+MsJozyXJvpJERPW061NKAg+kxJYob5t57+HIKI6lS0llJMyAJX21QhoDP2+kLe2k5TAHGkrfaeBqhiBxFN1r3hJhnH5qrfB0bOJcECLvq29TY5fIj5l2yNpRxe8ooQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349834; c=relaxed/simple;
	bh=uQ/r8tkj2/mBPzeUykjYdFyJquEw/vMhjgObl/sf+cc=;
	h=To:Subject:From:Message-Id:Date; b=jt6F4Vm71ytYW7GVrV5sExFqAX9XDjJMz6Jz9tVetyJZijX0vOSnrKXKcmQ+DPaav8PZJtzKxDYNAlU7H9SAzEVF5zJIrl6StdY9uwMrD14hS3VzJSQS7+/IGEwcHmqi4T22byOF1rTLZVrorQ2lXPXchAhCbCAY1QinUDiJ2d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnEEC/E+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnEEC/E+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0038C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769349833;
	bh=uQ/r8tkj2/mBPzeUykjYdFyJquEw/vMhjgObl/sf+cc=;
	h=To:Subject:From:Date:From;
	b=OnEEC/E+umUX0JDefiEK3RkXncdyRLOUCNMsx8VtwwFOwc+5hpl8IURXxKrzWeGRh
	 DBdCyCOI7bCNNgubQa7d3OdLhrOIAUp5tIYY9+pgkrNSSLB/RllC8vdN3B7nLmsZqR
	 hPRCSMQhpjIBNn7usu+XwC4ffo8N/X/lLqfJRojg+fdElv9Rb601S2yR5T8CfZ3v4J
	 /HDL9y+XO4y4D/hDgyKOxlS9eKyXJZUG4/O2hBfMi/WHzI4W5E4bRMxl7Mja55m3Fe
	 5Y/g4w7QYkWHgutQBrWgaIQwR0l7hAqNuhSbvL9EqkbYZprFm52tBgxwAbx3JMiC/T
	 J1SC21pvNq7lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A84E63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934983360.9019.2937285921293489830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa0d23e85fb5baf52662d2cd29d387353594400b661ba3911eef376c63fb48f
Date: Sun, 25 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769349833
