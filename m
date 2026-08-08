Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCCD2D7D3A
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786216834; cv=none; b=aCYAR4UteAI02EV3OO6pFrENTZQUj90wU5qHkW7kUExwOkSN4zwqGnUHJn8coxlLlaWggtpmzMFYEBcxG1xGtpUprMzwRABccBESx8WXYJRv3aKUxW5jnsVgK1PFVaZkQFrAKMmfUVKv+U5VfBWJRjifCnOuhXWsOqInXINmikU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786216834; c=relaxed/simple;
	bh=I9fJ2o/aHCw/5IUtacpPZLDsYEKR9GXv2nrs3fkLBn0=;
	h=To:Subject:From:Message-Id:Date; b=efTWx1Gmlvn3AW4grkggaVWVXN5eZHHyzCqkcrTcvOFTY+53mPdDGvSq/cT5dNaySRSoN+GpCQwxwGYNJcYa6okalxGrCddxS4scIZA57p8+qe1GCcLEWYlmS9nQbwa2lZB/Pv9E0l+kT4VAj9vLML55DuPwSMlh+VDOcQBDXjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEmmMcA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEmmMcA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC201C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786216833;
	bh=I9fJ2o/aHCw/5IUtacpPZLDsYEKR9GXv2nrs3fkLBn0=;
	h=To:Subject:From:Date:From;
	b=iEmmMcA+kFD1QfKOOqrsLkQK9eXwg7o7O1aO8MancfqqtDfeCo66OlmqU6AJnz/2g
	 8PHJ5OcVm65LPUeQ6cnuwNS7w8tH/VZN/Xb3lI3Dmu0jN6+m1oxR3VmyR55FySqR0s
	 McHY9xb0G5GKwwmciDBJtrh2bzVP0HgWIvu87yhcFROJOEi2ftIDQfSrfDqhgXryi2
	 DzmqMY0kzomJ4fXSAB5S/rE94r6drNwEUftopLRCpRYsNIq3j5H2hcxBceWYrC9hkz
	 jNY9tZQs/5AAwRsF2Ol1Qq7FuDYV2OSYgv2QSQBwZsztMpPYlippy1tUoJeraNNA2+
	 oZAOB5rlp9Qug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F52C5AD4E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178621683368.18616.9534981311346340861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e560525691fec50dc2490564d664821c4fee02b3caaa1dd8c94423e9973c90c
Date: Sat, 08 Aug 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786216833
