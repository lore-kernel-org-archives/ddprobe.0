Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE93385B5
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696234; cv=none; b=YF3IwlR8oEztfF3eybnxo1zajDTfSNvLYBvJdvyqiWZ+G+0pWrtmds3q+ZNxKdILe4BgfnJX85RDicecFybvSPlGgAfxwnJ0PzuPM/wfBMkGilH/ehGLvD+T1ZFteduIr27S2sjNUjDnWZG9ERpqBJdisZ3ALQHYm4UACeNi+FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696234; c=relaxed/simple;
	bh=zIyVTcTPObJhpsJPkKmpv20D4wLXo60dTce953VdNkU=;
	h=To:Subject:From:Message-Id:Date; b=Lksmeg5JE1MboQqg9RJV6EjqJgRVk2Qm9CHV1b3HR8ECrkX0lhOzWLpqXUqCnzIQjyZTypADQJDZsXhikUkDpfaNsj2XNhJwoHGnHWJeGyWUxPu2FLuxduj7URd/6uW+E+spMCduvAFnG6G4o9FRQMRvWB7kabKSlO1LlQvBucE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlOHOmK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlOHOmK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F55FC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767696233;
	bh=zIyVTcTPObJhpsJPkKmpv20D4wLXo60dTce953VdNkU=;
	h=To:Subject:From:Date:From;
	b=LlOHOmK+rCJ2OKO3FwGsoOP7SRvSQssBejvbSQX2tW1rn0hica6yqwzRjFz7jtiqn
	 tlMwbnSKoe3Jv7lKejjr9uqdxDKHmCFOVm+BzJLZVlY3mjtA57r+fPPQ6/A3+sxf2q
	 cJfItsmC9CANdaQUUnPzcuwPGaWwkyBCPmIPEPI99lS1DQk425TVEdRxFKRpYQnCIG
	 PFVwAIjqzdL7OzDiuQ4hVArvF+gDp7ie6XBxDJ0tdBCp2TBt+7H3gMDRHIwhoe/M1J
	 ytMZOtlKcudHtmt8fSLhcgPX5fj+9i4wjTN7gHWaWNleOr7XKTdDD32Y19jVowICw2
	 OZkhM5xxMkUwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED82C47BE8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769623357.5785.5829752562171970047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0218642d0e99d41ddf42a7e5a2c40a5767a7d29eba8ba364965531c4f4e22a0
Date: Tue, 06 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767696233
