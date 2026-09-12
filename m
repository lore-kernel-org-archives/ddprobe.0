Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DEE4BEE44
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789174834; cv=none; b=AxZJq5xJWYSUNCeO8MC0iQ1lkEAG1v7fvyXexIfgutDknq8fXQtg7qZE+r6A+AdjqYj2kA/X1x9pXiMrf1bs1yrhmosYRP3sRqQWW0NEZ0Ns00XElVMkGRykfgRYPDLG8ORAc/8EByJU8kKXzfKLOzdpszMcckx6mUOl49ckz98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789174834; c=relaxed/simple;
	bh=TWZkbi1yEpjpCM0vLdr4Iv5sdyXmTnJudgzhVFO5FOQ=;
	h=To:Subject:From:Message-Id:Date; b=LW0cutf+WM6cXGAkXnkM/s7Cyd52qZM3uF6CKpjmd0in822D9t6zmZbLz0sUnzwtpF5PfYw+iBU2z/8LTlu62bvXGTSvFvG42bGHAOQoGuN0QX39f9gx2krw/L7R5LGOkWOz6gcJji1UbD6LT9XdHrfBPA4W1EIM9eptO31UsQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Om2jP4vX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Om2jP4vX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD36C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789174833;
	bh=TWZkbi1yEpjpCM0vLdr4Iv5sdyXmTnJudgzhVFO5FOQ=;
	h=To:Subject:From:Date:From;
	b=Om2jP4vXvSkiqaB3l1lEqTm6emSk1o6B6w1hYZno2mAEVZBpcDIGJHPWrRrK6L0hi
	 kWxdg6suOnpJuBJf2ucsUDrevs+fivaNs59JewpCf1KCQQCE38VzxwACT8YyghLl14
	 6CvsZB6djjXNBeuZ5i6BqGliN5k00SDFCPR2rQ37wpfXfKxKjkVYkcZV64kaB03xF6
	 QlU4a/PPUaZBh+3znjKN68KZ5A3yJOKK/Ql3z7s4aqz5EZFXAuIA/yUFuStWgL2dY1
	 6Fy4SRyrycKiUS8UkjkPArNJMW9Ojiy78A4lHhWQXyrdMRqrdfpSUUr7tPuw9vqAhs
	 dLBeD5DTx7NUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4847C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917483370.13142.4116736812933408724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26813026245ecd5dc76cabf3bfa585788a8bd2213978321ded6598552bdda047
Date: Sat, 12 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789174833
