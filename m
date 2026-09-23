Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F83429037
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790142634; cv=none; b=feka/DHhxGpIc5nVZZV5BZDW6m5Edfi9pcd5f+sbbDQ0GkYPL2ahYPbQ25kgSzeDouCd8cxqPLTFigH4poWc0rjkOdco1/82dWXPI4FnZ8jPYQG/XaaK5hOZmBy42OeAacGW6k9zFKMaMvK4wp9Vg4KL2eFjxzcKf19kbKe3wnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790142634; c=relaxed/simple;
	bh=3aZiaINpGUo/ggPPEerccBWzlOXhjj2v8lPrbyywlzo=;
	h=To:Subject:From:Message-Id:Date; b=oDBYKbKw4D4rVy2cXlSKG9drDM1DZLrZk+XO4NxMSkdTF0ePhh93mWW3X8GIQsiZoIHj3wXyBAzTLv86MYGrYUb1QmksI5B0Q51BDLozEYAd8L7CDgtSATdOpGKCilyoGiLpGG6+PIkuGjQ7ps4SwJM4Gr6sAX3ibh7mPd/JPRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bprU6/zZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bprU6/zZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCEEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790142633;
	bh=3aZiaINpGUo/ggPPEerccBWzlOXhjj2v8lPrbyywlzo=;
	h=To:Subject:From:Date:From;
	b=bprU6/zZcPM19ESZB8zyFzWt3baefN4Ekd/vkYn/l57yQzZ+30bVKe1Xjl4qCUL2s
	 bXq4PA6y1vk0N/Y+sqiYsV2zo1I1RsaIwrzV32p3B0KzJ8ghMUYu3Gc7KUyNnp/km0
	 aItyN/o/wDESjt8tR/OcE0GV+GJ4e0yk7nvvKhb5MjyjA9XMCVRyL88HN/PVJ3r4xU
	 nUsO3+kUW4JyBeAChLe3+ASGw9OTZjFtPVKR0A7mcwRyO+pf2Odv8CPQ4y7IAiCSo5
	 /zgWPD1RqTQREmsheitZP6HWACQPUmQzBXCABOZlcIr+Wq3CVg+64zLACmUFKP8CPr
	 2arJKgFcGpNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA313C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014263368.8763.11686878694448363951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba83c9152b92e8e5ab6de4196a03301bb5d8052396bde2ce35233e6eb637255c
Date: Wed, 23 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790142633
