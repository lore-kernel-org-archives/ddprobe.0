Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399472C21F4
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775100334; cv=none; b=hruvN5C+q3qSuZ73EMefdV76BQhrk/3UYagZZyjADWBy6MFTH3h8AnXdm7VZQmVIJZOLu7EKvIIp+DlrqmA9ibw/QLUcwIJDSmgBvgohwvIhy1UjzaJb+Vc7Hq/2Bd+MvyldYok0whaVcVrHvH8EBsSBtJZIKzWiCfaK4xzFHRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775100334; c=relaxed/simple;
	bh=vBLu4Al89SNDAuZP/bWGKQsc5NP0pmtes3rDsM4RRI8=;
	h=To:Subject:From:Message-Id:Date; b=sfi1JgsuYUi6gPMiS7DmH0PdOmhLCfrICms7RGtsX/TDfgBt/x3/NQ2iPjuYB2U4/feeIyB99fdIk/tFj4Tvg/bPMc4CXyTh1rYOrkgw4eURMJ0Qu5gMWftT/23JOMK+9lsz2feIJqEOUrf42fleGmdFvJrje9668kMO54YUbRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCw2o5rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCw2o5rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE7FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775100333;
	bh=vBLu4Al89SNDAuZP/bWGKQsc5NP0pmtes3rDsM4RRI8=;
	h=To:Subject:From:Date:From;
	b=MCw2o5rg+sTevTRyfhN6fndSmiar5ql5DS/JArIO6FZ3HaDo+IdJ3f/Fkm0T1750c
	 OPRnv9xsYTkei9mAyd3QaFXKGCuzCzLwq3tdPlZgGawSRSzAttdcCEAYc+v9YckCK0
	 2K8q+bduZGWYE2rySKm49JmJMEV/+yO0tiYpEEb0GGZ3H4eLP/lVNI4Gp/SJUhN/zd
	 kpgA6dOIxO282f4syzOWKiVaQmdc9pBO5R9MzRadekiHoo6w4E9L5LYBz/tJEoX5qG
	 i+DZZEJvm1Vp+hdNXQg25zbNdF6YaOeD6Ntc5G0MmdUVTSBIdDhsl8N1MrOUI74aFD
	 3TICbFti0etzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE61C111227A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510033376.28384.9783254790260064458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552a65006b54590a922902c5459c3ec669a6bb574844d624e8fdbdb73f30977a
Date: Thu, 02 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775100333
