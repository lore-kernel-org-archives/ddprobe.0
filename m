Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F942D877B
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763311914; cv=none; b=cgEHjtKwOAwTCbsPZxDifjfWaaInKDuiNoz732ZwJq8ArqJAMD+nMCwYEzrRSfPfqhRA1bC02c28goGUS6cCO09C1Lyng/uKLYIanwsIC3Z7EtUVGyxh2mVsoIzYeKV48DsHOfDOWXCG/vAnSE6knQfNnt9vEHhIoxn3nUveAAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763311914; c=relaxed/simple;
	bh=HzqK26o5YL8nuruodD8wocMTJ94/iI9dMQB4riEizdU=;
	h=To:Subject:From:Message-Id:Date; b=Xzz8MqE/4uXw/P+NWhPFSkA1dhCCnctgbiPkrtfCLPQBUNv/spRnv+189UoWsd6koieK6SuDc0I/Hp2vVoGn7VSI0tuQ2vWSzK2z2gaonOOnPZZQ0H/z5u3W9+DJTYAr3fb8QyVXqai+jjl/mfFZqRzKtCmRh80PqCRkIvWpQIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B63FQMGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B63FQMGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5909C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763311913;
	bh=HzqK26o5YL8nuruodD8wocMTJ94/iI9dMQB4riEizdU=;
	h=To:Subject:From:Date:From;
	b=B63FQMGwLZnCJ2B8yVVIQw67laxy6UlRdr4lrzcE0rO9Ml6N+DDlOnj//pneoThL7
	 3U1VVSd01A/QlRl9T6i/xadWr7DF8DLhIKcG/93L/mn5Kz0BiSWYYaOVBQZr9jMjTO
	 p6hJErcbET9HVS9mruV1ESWKwG3Xb6SqnxB0tczh7XE8qs/6ZlHwCGPXhfOdbUsdC6
	 qG/mLROF0RTWeqA+B+WIyGSSK6eOySLyl4Me8DFXHCGbNn3Mc8mXJM3Fy9BNY8cObc
	 ue8Y0ym5uLeehrRrGj8pXWXHhBWZex2YBtgn23Vi8eTW8DHZth/+1h0n4Cunz9WVPq
	 1qvxOBbAfsoVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171CCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331191358.23842.10533968568517119792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1c23c715ca9cd8eed9a89749f4465b17be15d88d03f114c1167719622b988a
Date: Sun, 16 Nov 2025 16:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763311913
