Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A1C30AACB
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781651794; cv=none; b=NMz0K2+ww4Ld8IlaVZXZE4+86pQ42vGfa6Q4lql5Rsn7gBiXA7ld1mOjnE+V5ef4TQUFgLYH0VQB9tjCis1yTCuwRADKAjEF3hv1PxaF4+9gpo51dAXxxxErKuE4OaEclHmrahSai4WGJkSAt4QVQkgXZMlZsK7HhNT7d2+5CCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781651794; c=relaxed/simple;
	bh=5AGNChHrnO5md8F0CXLNW4jEIcejnqQZIZJvfdHq1C4=;
	h=To:Subject:From:Message-Id:Date; b=ZJbm1kHlYPdr3+LCG3QuXzVQDK1LUB9zhzpnRCcDtaTqgYmHLERWPBCl3oLF+j/sS944NudD7Iow3u4iCqO2t0+M7YGUNq8WzSyGlsHflCwfhHq2cepoMiR45OR6SFJ7s9WN/+GCpzyRgE3MjdjUG/2YWWcsM1eUyizMHMqw9EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B73g6xiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B73g6xiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CD8C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781651793;
	bh=5AGNChHrnO5md8F0CXLNW4jEIcejnqQZIZJvfdHq1C4=;
	h=To:Subject:From:Date:From;
	b=B73g6xiM0wyo65eMKOPhKNoq+ddk7hEX28r6yLeNEdUd4VToSBwH82Y16tq/5Mlwv
	 OJ2ZJXqAV5aVr/rTYMv5aeShQLxXFDMggRDCxI1DMucuFxpAHelHm/5UYwrgagDb7C
	 wyAWkeBKqyjligLisq1aI0kIrIAyQgSM5QGHHdO9VqfGOiC9OwJOM1o0m1kuY+iASD
	 L2d3kvGbfsFeavlylS5haUPkU2d41RPS7SQJG1lhptqn7vTEd2qMvJZReMyhC72ZTp
	 o8CoJfAFJQxxoUGsrnZdEryvU3XRQEVIxMOqmyazW77XuOZXfVpOe+C0KvshnZoA7B
	 rChis38hY2JYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA28CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165179370.30301.14251192754848470927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ea7a1c126be339e403363cb3c1af23006aae5e0b950284414a64eba12eab1a
Date: Tue, 16 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781651793
