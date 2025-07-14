Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240982E371E
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752479394; cv=none; b=nAX4t3qFkyV8KHBk4dNmyBcv0McTC0LXYyWrpA6U47BwPHXC4MnwGSpmB9TBIwIGi576vuIxdsSWaSa/dG/kECh7jcSwop4xWl9AM4AFlnTWQw9ELePHayfYi8lViRQcR8abIOoN5liJ/tzr6fwrOxiHModeZmp0CvcowGlhVP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752479394; c=relaxed/simple;
	bh=FRgL7uGkXKk9ymfqT7gJ5FotraGS/VL8kRqKgmLuE7I=;
	h=To:Subject:From:Message-Id:Date; b=ulxQalVytYyP4R2Ok3Ke27dYA9Fpekv+BBLOkP/83XBV5ZNiSrdz9ukXz6xp0iBJ5NLmco+j+/j5WtLHvv0zi76gtEiApDfDWVczh23vPVumRIbyVpWFZ3fmRupGyhWTnnbfwVMaMB1/gGJN1cg3zuG50h6ob6t8udi6D+bcwKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnJ9xmpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnJ9xmpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96FD6C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752479393;
	bh=FRgL7uGkXKk9ymfqT7gJ5FotraGS/VL8kRqKgmLuE7I=;
	h=To:Subject:From:Date:From;
	b=jnJ9xmpj5Sarr8G32Gw5JC6GgMirp+j/q4XD2NDDfIS9rkFlovydQF5eHbB0r9LXG
	 hJbWmF7n3GXLr4fpCkoL9FS9+ZhW/pRfGC2DtBKCUyfNwRVnvYJ81AfNMK0Te3EGAx
	 LivRu7Nt3l0WKYHqsvi52o6IefyYNAdKKgZqGWHoJ9EGoKUvU8fmUeozOA1xnTF5xy
	 dLNHIFqxpkZCMetJc3xW3IRDKXB6rqV8dZ0G4yGzmeCrYGjPcHJ8HJbGuvnx5G8vtK
	 T1vjZ41w5r51orrPRJi+77+LbQLe183CtbF8MlMCG+JSpLcID6w1RF6xfQga95RD0Y
	 yD3yCgLzqy3Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E858C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247939357.14512.15311573916564918492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40db12be953271fdc1e6e256e17600083b218662955b9cf1039ddce0bacbb360
Date: Mon, 14 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752479393
