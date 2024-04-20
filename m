Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4EB7465
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713591023; cv=none; b=iNeRJlewFrO60K5RGUgY0b3BNZHMsB+Qt87fTbhMlr3W4zDGlObf6QPQtnJUB5ZA0FEk3Hk4Cnx2anqmCvKdeIGAIQNzmPjwjgeTUR5UIxdglh71ie8IsXWGu6ywEeut4AcLSiyhJ+RhU+NuWhOFb+OgzrUXK7aeQhXpra1Yw8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713591023; c=relaxed/simple;
	bh=ZtQ9mrdZ/aaoRA4f1l3lCYvbToMdVyL0AHpCi5hxO98=;
	h=To:Subject:From:Message-Id:Date; b=tJzMkt0qyOqbCqfdcjNYaHbYzeI1oGq69bFjyv45wxc56r4ukGwt1tFH7Pzi3J+XZDV/sQoXToOegH8ehKNgmFh4rkjv3gXaKisob/p3ScHwx/gKW8V7cNLqnnXgvdJpKqd+61hm4y3fGD9Z82beBsNi5ADvnofvaU1u+fTjBQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NmxYgUGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NmxYgUGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8806C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713591022;
	bh=ZtQ9mrdZ/aaoRA4f1l3lCYvbToMdVyL0AHpCi5hxO98=;
	h=To:Subject:From:Date:From;
	b=NmxYgUGlb1DEn1sBeRw2NtvAEdExoQPPtfwbEnSfVcc7yzZh6G40LGLavmwLWbIPK
	 v+tXHA9Qrc5Ik2gECyvkb+xPpUaYhaXecQgP89fosG3nG0HZPkO+mqc3pFz5vCZq/r
	 ziAD6LkoxiMgzjDia8sqv/trwPFWEMeoHeIPcepFOu8L5MLODtQWuPvwZgDB9le/II
	 dBhjNFTuL3jaLd9n4mdKGWZN2q12hbKhYh8v98LsN0eRfrLyyIRoEUQYsObKR6VyqF
	 YRVd5lTR1Zv9pQ+ttqF7vMdpuU6BnU8mCHX/GdOeeUkVsveeb6vgVGFprMWg6VMEzM
	 tCwjZ/lWrLpvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C363EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 05:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359102276.15678.4198990959427140210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6925bea217625c285ba50f953d8d1a2a7cd0449236c5a5cf345ed98eede9b7
Date: Sat, 20 Apr 2024 05:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713591022
