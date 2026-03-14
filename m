Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AC0175A70
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773464694; cv=none; b=gTQB2pfapuQT5u048qCfk5tqR/yuRjyznUJHQ9tWSRBOJVU94evMn+LqyO9QwEVPvk1IsK0r4RAw2Aj8bIx4TjsZa8OZQWKOP8njAXviniIp3V3k/rE11l46yFZj9DRODed65F1yOO53hp93ADkzFdBvbXiDbjogcx7W/q4p9/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773464694; c=relaxed/simple;
	bh=1xN+Q0aY1snn09qwHLcb4orSS0hKs45W4+x4wmd6aKc=;
	h=To:Subject:From:Message-Id:Date; b=u97q8qZhniMT8QjtO+ryx75Eq6qaqx9rlCLbbodURrfyZ7mJNR7bCUz3aMf2PRl0NRWBISRjgjKzkee50Vr3ySvwVurNauRCXLkDdQzV82W2mH480v2FrqndOHp17ALrzOWg8nU8Uw1wdBt4gP2aOXKePw3szIAkvXfLIMJeFtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwQ3fPBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwQ3fPBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6980C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773464693;
	bh=1xN+Q0aY1snn09qwHLcb4orSS0hKs45W4+x4wmd6aKc=;
	h=To:Subject:From:Date:From;
	b=YwQ3fPBAejH6uM4um8loiaq3eWvz/3TZlI95rgSrxrWhZSWIUyiw6LTEWHlFwlQeK
	 K/AE7oiQ3Cegpg66sGhqSP6+gmZa8oO3GFe3huQIWw0u0cMdHm915WQEYyhbVLc7kt
	 DRvqp0E3o4O92tTfLsUppoJflwxFxU1yW4S326eKxVVWqrlv6+ZVXdmeAnVjXYnaxl
	 /8ZuNTWBqiWx+8sEfUBzO0vER8CeVIT+aF3NHOZlXtBJYcmeKr91slGQRiDn+y5Rah
	 mkqaSt1L20b6oLzaTtKbwd53amGgBZ2AXIq7wRHlB2+EHB/XBUQtvcIYxRTcEitLhC
	 +wZNOhp3lFniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF6107BCF1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346469358.23842.13189877590417826519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f26e10117d39f6b7a04a06b241a1947a6e5f57bb30a14d9d5eedfc49cfcea5
Date: Sat, 14 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773464693
