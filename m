Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443BC4503B
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770941694; cv=none; b=tbJiJIpKU819xc1waBxOyLH4vc7oA5Vh9w4X9kDRO+So6jVQDZqYu94OtNfp97Wd6q2qrqiFQ4bAUUlMSD0HPZYMh/zwDld3DWADcLzkS2to7Mjov3XIO9hlXif8Km7VoJw45Q4PqzlJ4NWg/XYwnDPZR9rUzVjblhb9rpAT1G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770941694; c=relaxed/simple;
	bh=firDWMRc3+cbQUQ33CfZnC6BhD/d5/EMzrzD0fvY8ZI=;
	h=To:Subject:From:Message-Id:Date; b=S/fxHNt+AxPzd70uyjrPiZylNi00J37xxRUXGIzjyEvrwpHHzRQnfbA0JnkfxRWlfwSSU786CFSt62yMW3aNY5q6tVd570qEOAFwSMaqAFPPLKcKQkH1EmD2kQOnp5CUv/S6bXwV2vbV3lX0OjYjhA6V9P5SaWrZMdn5TJ1QerA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFxuxkv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFxuxkv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DFC19422
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770941693;
	bh=firDWMRc3+cbQUQ33CfZnC6BhD/d5/EMzrzD0fvY8ZI=;
	h=To:Subject:From:Date:From;
	b=UFxuxkv1Rx3BXmulXjs7DjgvRBnnNHl7fP3M+YIx99dk5CEDyCUi+LqOjc5r/1Zl4
	 /O7jY0OesM7O4zKx1P8kBOhU5uwzlH81FmMzx1UOgZh7zeDo4iuk3rxzUOFKXfebSa
	 JHsVZpygAAvgK0A+apTUlhcoKECaqJFqcJ/s2sCoM7rP41KVBtl9qIYOyt9zAm6hns
	 /DdxlGf0Z0ww5Wc0kSfC1ikfkEO+XmaT3Y2ocY+6M2USnrG9i582nTUQkgNz9wGhkH
	 Q16Rale2yZpwW/Yy36welerp8dAxat29xsRndqnV7surddZndPeLwvP5tjB3homQml
	 0ruIh4qxcqQgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106FEEA871
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094169358.7660.2007953834449530079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff0226f10fe68af5367dd70c85042b3eab6a8b3743a365384ca76450d7f3822
Date: Fri, 13 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770941693
