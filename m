Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8D919B5A3
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781477194; cv=none; b=bTT3a1gPog1cgsn5/tx7DuFAk+wbIES7pOVxUuTkHRMmrovoNC3CNzzvTJRevAUbz1FJF/6HapDulRh9VivyxrR3D9quvmyqocuUbDAlWBA+iulYoHQ2XKKXmbQSjsKhQTleeH+AlPOeFhq+QHchCCjGMpoOvOI87p+21LxEisg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781477194; c=relaxed/simple;
	bh=DQYiwma/FKtaYfTZVEfEUib1ytBNG68995p9qrrP7cc=;
	h=To:Subject:From:Message-Id:Date; b=JrH7ckF3HO+ntHaKZzKMUs7ZLLuYFbvcCl/9JGdccCtHi+sUcn9czHcOCopoS2XTPcuT4XiE4/ar09/zolBVZbe3AHo6zgZO4Eq/bQ3V6L6Vu2f9evbmS6MOgTi6/CDOwZmU6fNROyVnvf3usijvVKLZSLNEyh2DmxuVWLAutlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB+og7es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB+og7es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37F4C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781477193;
	bh=DQYiwma/FKtaYfTZVEfEUib1ytBNG68995p9qrrP7cc=;
	h=To:Subject:From:Date:From;
	b=eB+og7esv9GpNajrKJUEh6L6FuVqUoLYcrlX0b4Fw9p5BD/+4z4TF7Cr9Na6MRRdg
	 nnFrjNzs/4HPeyrdQAxIdsVQWy7nJfkBYnjQevVPUovQfPVwKfw9DVgJamWwO8RMaJ
	 ajH0j3Hjx13yS1kX/ogaiFqdsjio3zE4o7u/NRkEJ8KEkO928obkVqrgfSpkBWfwA+
	 yCbkMToTMjBSC4PbV5lqY7B4lcC6mu76VU6f5BWSEVlCyCD2QNBcGifxCgfjbYwbuC
	 JAiSvX7RmlSpasxCcmPImyt1S4BFfxXtlwiMWcm/cjLGrvL4ly22pmu3P9ZIcov6PF
	 emmAs3wI0aF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7587CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147719370.10057.355715827801701716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441c9be49311378b027efe641e91fab7ecca416efa2b9f8cc6f58a666230c234
Date: Sun, 14 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781477193
