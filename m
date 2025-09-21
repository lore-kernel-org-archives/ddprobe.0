Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3513C1E7C19
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438594; cv=none; b=r+hBslLKBKRT8NJrSk5g4EwENbPFTCacvg8cf3a41vtekY8beikVoahFKXatoPAKyiKaDY0+am0YH78qN8gZ58i06ZBYCZLEOlkG/8ANFR2SSQNlPWiiizSH2XTEevPBWYcd8OgflusnJ3e7YOUstu5kA8uGLcBproT5wWvoWk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438594; c=relaxed/simple;
	bh=aQCZM6Kq/HD/yQVRSdRBORylNMk2h2nEgZar4bJdr70=;
	h=To:Subject:From:Message-Id:Date; b=gQIpowzuPu4S0J9V/3i2D3fqMdAJxcjpgegeUTkZZA3pxNW2/yhySSkenD8BT18aMbYyyrcRTi4KDRRvjEGdZTtbSjWPNnC85TJdbgOnE6paZs/rxje7OWZynxv++YTyK0mZPmUkWA7RSy47QigWyVa9STY2uw9+uVUsldingsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4UkS0z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4UkS0z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C26C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758438593;
	bh=aQCZM6Kq/HD/yQVRSdRBORylNMk2h2nEgZar4bJdr70=;
	h=To:Subject:From:Date:From;
	b=W4UkS0z7MEEUOJ19Dm35nuU2wJQvXuXd/AVAbe19MLJ/njcz72zTz92wASe+uDC/2
	 XCMMldT0oRyX7eQHqIgVWGoAHrzsqYmotdIVo5Ov1V8G0Cf9Cc13nLFOpQNgHa1b2F
	 /n7l/at4WOoUgv8yO/q+e1kBkW821aaGa7/pkoO7zh04LTOBV4uou1UYCMdNxn4NGr
	 95TOVdqBP++2XnHm795bQQxumBYKp+3RPVA7d5rBCMTjr0zSicT++tSw89VmdNzzZ6
	 t2ccJ0bYwyn1hmXNHUcPwtGGf9yUm/0kn2wG1YLD0ISizaZPrd9sPZy//psNepYQ0Y
	 pCfAy58Z/aReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94022CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843859357.25359.13802103476143810083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806a7bf14dc4ca52814695c6f52883d10ae342f1fad8735b0d96306d7a6137f2
Date: Sun, 21 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758438593
