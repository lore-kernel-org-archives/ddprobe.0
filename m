Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337173FBB6F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780701274; cv=none; b=fRlUjB9rM1kp+WzE2dA5bNOzrwJNhIcrLeGJkDNyt15Y7yAWRg7kYb+vKRI1HmNblWTGAqoIdfFzXhdvTaCJRdj+ytDFMhyL4Jc4v3PP8YTZ3e9TUGuK1oQN4OXFEAZ/q22Rc/oQxizsjj9dLgdUNQGPhXKTIoRiGW7Jyrdowmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780701274; c=relaxed/simple;
	bh=NBBQbbNkN8TFGYwqIl09e97vx8ZCdn7XsJ2NXjaN+SI=;
	h=To:Subject:From:Message-Id:Date; b=X4HASunAtPku7ZmmbpPMVra6Q9wfxGCGQzMntiL8v4FcCEJecRSzX8r2KGgIBs7ohbtpOOaifwzPLVJeyZAQAUx8JZlEvvOBCC1pyYzBf2Z1pc9iAeBp1/rFw74+lSvQqQ6pFH655muieNiKhnPLTTYXV3L/qTSjqdTw5hGvtpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+cQPgLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+cQPgLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5547C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780701273;
	bh=NBBQbbNkN8TFGYwqIl09e97vx8ZCdn7XsJ2NXjaN+SI=;
	h=To:Subject:From:Date:From;
	b=k+cQPgLxpEaQN7hfcvh7fVicw6bhm7yRBpqIhGGg1rrPmXNjQueLb5c9SCj0Th8U5
	 QG34q5P0LDQ5A/lYJIQC++XzgxFsmUDogPFEaTgN6mfciAmntSw/J1KugH5UOMxA7a
	 58K5M/Ud5JofLUbXAcTIEBhZ0unsyvUhR7847sNqXJlOY8xpvSST7E3/wrHwSecQrq
	 fsZUXsONmwq8jgXr7XvmCUezzBrITnkLZXSGIeJB+0AMQWa0AYVqO2GBCOfb5dqy2U
	 SRk9J4rTl/uZRg04YjPj1Fc1tsUHMwVf0dD5VkOoOt0Y8x1I9eEVZDbnBjkWx1FAF5
	 5prn9HDagh8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF80CD6E7B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070127369.17228.16617734820937299867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07417d8a7743527634b2f4744be2841ad1b06c50e4a2c3a73b57465d28a77d84
Date: Fri, 05 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780701273
