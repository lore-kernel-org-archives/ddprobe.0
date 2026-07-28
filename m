Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACFCD3DA5D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785265234; cv=none; b=YS3FpudVMOes7gmmrJ/HlEk8ctTFnn+JmUBPRBm+6qRWU+hVsef3SyOXyq2KFN9nD4nhgeSjAROz0RgmZ02/4I5iqcmUASNm425PN68iDKDCWlCf/9EZRwb+AQFa0En8jps7cgm25dp/XyO1rrTCqs1jQZrzIY6eHpYacgZ+HG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785265234; c=relaxed/simple;
	bh=KI5bjc7orNGlE6enEjJwafbAqGYKhFhpPohb57BClMg=;
	h=To:Subject:From:Message-Id:Date; b=ICJVhd5pUc4AxGqQqEt0vanSmYKHRZtYCAXkDRhqkXOBnftwkSrKZ14pSdSgJCmCh9xHst+aPd4hIuzD4LDwfh+u+JQ45iK9CbbDh8R1JToNnyyeyRpMshgLqALuDpIKeHaYgIClFUhCsIooFGokPsm7L2HC8HvICispVJBotmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ/H/hzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ/H/hzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D1EC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785265233;
	bh=KI5bjc7orNGlE6enEjJwafbAqGYKhFhpPohb57BClMg=;
	h=To:Subject:From:Date:From;
	b=VJ/H/hzjhRoxYmo5H1c5/2/hdUBgzFvF0Sqi9hMaRkaDZj2LsUqPB64CmXwf1rmzc
	 xVzj0+60q7fyZSEGiPyItObvGRH2oOikKkVYUCttE3mIdopSvOMEA+S15hZUVDj4mW
	 DBvUD2XkBjx7HEF9pzYALB3qeP7nK/yLDMA4xs7GsnELQTRZdPSXjdv/J9ix60uxM3
	 uLAxvb4m5ax3xZX7ioyBXVm9eFmd+6t6iIip0GuQgeFZCtwvYrNyecielhmS2Z9ptN
	 iBUACNTRax+nyG/lnqUEqfqX6gIqthMzFUb+GA0yqj3VYKqV5OxfmVU7yVUIjUfQWG
	 4gbbTdpVotpxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFC6C54F54
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526523368.13874.7940057071234596332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ef7c313d61d8a481317f9ebca98f6546b398621b75148e1fb54317d432b011
Date: Tue, 28 Jul 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785265233
