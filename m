Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8CC8462
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759464594; cv=none; b=DoUNsX2r/9lFfG+OnxWzNcVQp9OiohMzF2oGoa4AW7rEv9aM3jLegnbZWrZfdiTTwvjkjZwIcCVAgQ7Ib3p0zxsLCd/3vVK0EUmSPYGC1iRsYgwoEzPEZdLRSJBt9AsWAq/7vvLfBM01oI7a4hGEs6YoGHxBzrBpNTEyradV0gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759464594; c=relaxed/simple;
	bh=Dj/IQAkDI6Hmw5mLS9RBr1woYN67era60+wqOId9dGI=;
	h=To:Subject:From:Message-Id:Date; b=R4PcpHguhfscl+2vgZ4IsKCmSnh1miY7iCmF6qKcdSXlOJnrcInBhRGRmECFYjD+jqYGCWNv4FdQAR/qpXYbTvPquB59ZBTLzzUd+aJYY2yvd4ULpHPyzV2EO+SObQ7lsnseiGxc+FBJxjlw61gdGlK3dIixbQW3lxdyjt7dR6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DF15SBAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DF15SBAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF8C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759464593;
	bh=Dj/IQAkDI6Hmw5mLS9RBr1woYN67era60+wqOId9dGI=;
	h=To:Subject:From:Date:From;
	b=DF15SBAubQkfN7tPfgM267GgULHRKAMM0ahthhz0z0qYTBZlh2fUOnLBdL4+4I2yw
	 CdSGmYLpXkRPrmQhWwFZ0Vi5Z208ETILulOOwcfY2nzCRwBV0/6TgkE0qPyYiuy34U
	 J1vjqJjAo+kcm4/ataNeF0IoNQMBBx6VCdETndR0sMjQGFAUukV5IzWWOPXNLZ0e+S
	 CLoLZFvue6Nz428Ianx96ftsGAMhQYyb1D9zOFNxawaJ0v2WThVgRaBceKreLyN99t
	 mOwj8wTV8rHzpYJz0waNsEhFv7VwDFQ2rPBRin90PS99jvN9M5JNspJ+NKjMqFF8o/
	 3WjYzmGxSGZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4DCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946459357.795.5790523597238669244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5a8b7a4131057e3aa27d1efe9798b5f2c5105f9ae1cbdf7170950d4ec615da
Date: Fri, 03 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759464593
