Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CAF85626
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760160594; cv=none; b=Cmbcu4o7on9HZ7goNg21xEToP5/QFZAwGnll+fOB+QgdaZjENj87UCcwtHpjeD4DKKCg080GVOSrzPQW77yhV+RKVpsp1VVeq0SmuY4Vh7aLSjjly9ra8AerHVSfR0etEh8G9Aww/zIjMnobIGXpoTV7NvBuAbWPet4jDVPFV+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760160594; c=relaxed/simple;
	bh=F6mU+zH31Fi8NKQVF7tBeY8VeWixv4bRdyMn21tnd5k=;
	h=To:Subject:From:Message-Id:Date; b=YxxeLsm5fa/hWW6T5KgKmP7vpqv9T9lGw9n+y8c+IoJjmr126Q3DjN3DUeDEYREdN1c7FANb10k+w89odOx5HBk4NLjWESMKyKIp1DVZzQpBzXUs4Vi5PlLiUg6CvFXNi4fwe7hiEFgz+ZT6gsi8RT1GLN9F14Y22y0QYnzDJMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CluUeu44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CluUeu44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6946C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760160593;
	bh=F6mU+zH31Fi8NKQVF7tBeY8VeWixv4bRdyMn21tnd5k=;
	h=To:Subject:From:Date:From;
	b=CluUeu44+AZlDWkehmGeGfDLVcmNOpnhoh0gT1EhYbts0kvc9LTURb3mNmxH9j3qF
	 /ItvKLQotPrX/bWD3Pw3u2zISEtaaTsPD8KGn1fweWs96FN4BgKcmoM2RONLCeHM/r
	 +n53S0HKD/O1yJQwrk6tZZ2HinFwUpU2qCN4PSb8nVkm8uz7Dbvj6kbWsnkM4YfC5M
	 dt8ik5seFxIn7bHz4s1LC9MYB8GRZmyUDQ0Jil8KASDHuYskJPr+nWbvlC+XLz3WZP
	 QPbH6pDRPGbeQj88WyOVGZbIBDaIVOodV+U+EU4HPdEFKDyP0pNYEURV2G9JHSGgCh
	 8EezTzgvEFyow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94930CCD183
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016059357.22899.3259113774902895586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e00f731493773e3b32acb899e6d348b9c41d826f6eac516433911c9c73d43d
Date: Sat, 11 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760160593
