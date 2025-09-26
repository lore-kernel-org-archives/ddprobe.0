Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFFD18D656
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758893394; cv=none; b=HRazppfRurBBEZVTknoyosQrAr30wdA1LKYgeFtDXjO8XpWaYB39zFufr6ZofoiGSOgO+BZzTh7OGbFy8An+MIYDPYUwQYymHyX+nFLadUyReaXb6oUcS2h1Ezr5x2DBW9rKorYEOFf2jaSWV3oUuQBpKq+RGk9SLTT/NMo9PoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758893394; c=relaxed/simple;
	bh=NgbW74bMdYo5tRaI50olQf+AQ4xq+Xh9m3tsYjRpzos=;
	h=To:Subject:From:Message-Id:Date; b=FS1sS45nxcz8WuweiX8MF+XUkf5dLeTxtDwmYl5DhbYPwqgsL7L9fXVRajyG80IszaU5IQOQjrxWCplhtE1tDIeb0fedwmJiZMDZd4AqvEOktpe4upcIkBva2NURTLcV2VUb4/Mn+AUBctW5WHmmJ94lJojMaAhCS2wpstPldJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJvnRmN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJvnRmN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6049C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758893393;
	bh=NgbW74bMdYo5tRaI50olQf+AQ4xq+Xh9m3tsYjRpzos=;
	h=To:Subject:From:Date:From;
	b=jJvnRmN6J0UrY/37W7q7tJphe/EMpggvIu5VsWz6SDLcKmYxcnwShy9ROHOPYQe5L
	 kzIcuGr3w2t/fkQLQfnSgBwOR0eYBLG7NgnPxvH0XefiRUNMiSHdU2mjDK1mQIgq+a
	 O6VZgXqeX3/rIYqQm4wgfkEnjbAa9S4JObaoMhIYMti0PA4Uuok3qO/rl/P50xJchO
	 gRTYOxwiO5t2CUdQ2DP5D+aPgGkD1/Ey4MhtS4FTlpGYvGXqMEwTNNG4qXkgmtdDyP
	 fDPqOPBcLM04pBPR7QrknaT5trdVKX7vroS9bXymad3U11hYrEtdiCAAcQThsM0sTr
	 +ihRzn8WWlb4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93801CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889339359.9513.11688235803545884610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0366136c57e4a3cc1e533ebfc7f9d17256c5f115b5a65d52bc039c3a0fbd6b
Date: Fri, 26 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758893393
