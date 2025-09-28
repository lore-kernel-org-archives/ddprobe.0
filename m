Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A01FB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759097994; cv=none; b=qESJwxjzKC8mm3tMAQzJeKMru+WEe27+OZPdjEWI1bq+Eka9UwUUJOfKt8Ul9/NZbjqTVTGpWCyuqDPNdX/i166sdy6gRBFohGgy0h06oFMTPqy6QQwWzZNkAtt8HKnoCvvqfK0MQYlklB5GzrVLunyoJFSB2d4KFe9HiEcB0wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759097994; c=relaxed/simple;
	bh=AzzccsdVzJMCOZWCTMPBQUL+ioFKXaQcGwY63/MODho=;
	h=To:Subject:From:Message-Id:Date; b=alKupptthjwXNVQ9YdWJNbI+Rrg1EJbqP+E9GcICVREGClEAlHj4RCKBkkobsedejVs3okTntNeTlacVRIEvaDkxLPn5+I7b7MhbDCtLpGWCS76wEjwKG1BpssYfQl6oLIA0geso9IBODjlzCh+DH/HSW7wbtpanyUDA0Ed2Ico=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZgLN3sN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZgLN3sN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF679C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759097993;
	bh=AzzccsdVzJMCOZWCTMPBQUL+ioFKXaQcGwY63/MODho=;
	h=To:Subject:From:Date:From;
	b=SZgLN3sNRUHfMWiD+cB4+5JA5QPls7nzsqAcKflZnvQ1EjZcTWx6OqEz7OZ3GU+u4
	 ZdRCmdRs20PGPTRlhCA2vhxpeP20BI9e/xYdaLIunWUq9ASeMFv+nbj52r9yMOgpPn
	 YvzOa979BGun9wfQU82JOHVVuLq+GJ/rk1P22Ea8NJaRtjooqwigdcz6NZpFxySHAb
	 yBtS14zIz79INQdd0rMcBody4wEaRJWvQnhSgwv4aUNcVP0IMgwUKty/vGYN6+G8PY
	 7rCoBm+b3r8MRFPlF90jXSygFa6MT5zTBepKuAOR9tk2VHnosIXCLQgpJ/+/fcVeCF
	 WKSpzNB6VFuyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BED4CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909799362.2776.12702443109720103235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e9614786d977935ae2084b3bcc13b4e670ec1f9976ecc2bb991ac72042464f
Date: Sun, 28 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759097993
