Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D82C334370
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771424694; cv=none; b=mCG2BNGIoQhXUfS3fxILyx/O7vNKDRUrSlORr3BOrCHzqdthvewJYoIp5idlaP+8p2EcesdZMtgbQNhHt/ytvPHo3wopt5WKM3+0t7t+sHjeqnKY5PGkwbIvCx7zwAPzLhEQqnd8SBz3ecoa4sV0xFvXZ5tY2jnXs6Xdmn2K+lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771424694; c=relaxed/simple;
	bh=gGfr5oGCL2gXcZUwibvtUm55Cc0/dHE6p1kIf75ehxI=;
	h=To:Subject:From:Message-Id:Date; b=rdgkUVqBrQO58XqSM25z5wQu2BvmVbHWX28kNm/AYemB4PCTRDUjFiw9gqO7abcMEw0JhK7u/ibi6exkUCMVhcE9j257rb2Zl65YFbEDye2krj3BZJO4ZMH7GohE31eM1SiTIxJPzMaVa1XQSFueZUwLj/5Ol65e8dHh6qBMTLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtA4I3uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtA4I3uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7509C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771424693;
	bh=gGfr5oGCL2gXcZUwibvtUm55Cc0/dHE6p1kIf75ehxI=;
	h=To:Subject:From:Date:From;
	b=QtA4I3uq1LQJ2OdRhgBPTUvdeFKyhoAh/TpgPxFl3haqOkk2ahHnj4kCXecWB0ecE
	 jgy001YR3IvoQOt8j1O8uk76DvG5IB7lPYMXHcZIVcam7hPlS4dJhjpAVzxghqj7aV
	 VFkBncWUfAuishTiAeiHm/FBlmk9PIdZO6EUWxGqXWF+GquVIevuTfdYgwkRXu9fXs
	 avLeh4ge7Mj3DH/ZTUeBg05WvVRQw30LSLUugktF0fHDrME28J7QENIH+CfRFfh/RJ
	 x3hl5gYLLHohD0HOyqSHpMfkoVYxdH1q5GLjCtTtw8d+KCoyrUWZ2MpbPD7P8HMMua
	 BmnoptR4SSUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B672E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142469360.29684.6966301323883940951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04024c79ac6e8611693ea774a79b77ae80f055f58058c27152c94bdf913a9542
Date: Wed, 18 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771424693
