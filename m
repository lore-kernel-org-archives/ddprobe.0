Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DB0340416
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789876836; cv=none; b=QCfK3hY1DLm/jOAKq9C3TzbBjG4qzcb47BUbLiG70zZDz2X0GbPvF5K5g3CkJiZ8/Wmwc9SlYa+PcSqJQ2I1cRzV+Z5YHkvsQeF7ait3+U9STSXicAl/HypXjoaQoaRYJ3g72ObAZzWHKV9gcC/yGlM+s9d6HFOa31coMxOat78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789876836; c=relaxed/simple;
	bh=YIYFGLBP9moxAfvTwful8ejYkE+Ir3IbAYb7JFXSeNk=;
	h=To:Subject:From:Message-Id:Date; b=NPck2Cy68dhi23Pjsq0GEIuVb2U61C02NWjxqOAb+60H8fOVcXSITKjc3NB8tg0dpprc3w0tWlcm6S4b3CfrppyOpGna2GhErBV/oCDUS36ym3gC/+CrWgQ8Y7t7hB7qxK6QaqPjDUQH+Tlo2WhiPnmRCxB89tphmrPBG4GXKAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssE6IWeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssE6IWeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07E2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789876833;
	bh=YIYFGLBP9moxAfvTwful8ejYkE+Ir3IbAYb7JFXSeNk=;
	h=To:Subject:From:Date:From;
	b=ssE6IWeQ7mS9U2Ivo0ScWoFvumRNnp8u4dKupekf7j34NupY0WwJs/0+lfwaLTnEw
	 YlCEgpZsNSNCACWGS0or62JD4XRd8MccWYDm0N418sqDZSnFp+GcYLARbmxaubF5KD
	 oknGkGNZ+XR2ToVdU84uBHzbkAUwCYFlDdnnGUFte9Nh3lqWROhceKd7MAeQllKXqJ
	 Bw2IyqIGkQwlWno1yYhORtyd1yuYV+Fq5K4Zcat9jam5CVeFt1IksAlqJueY8KBCpX
	 46A5Cmz4EKWY2ogZgMoqLE/CTId2oYjLxUqXfKUziI2BoKJLCZq2ep9L5hzv4ggjia
	 gVgDxJ2tpj6Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB41CC982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178987683373.29260.14091081718987790873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79fb6dce3371fa207f61a3f74c4deb880a2842ed655e686aeecf91fd8e034146
Date: Sun, 20 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789876833
