Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CB73101A6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781853994; cv=none; b=G2UekuesTfIX9F1YJPVvVGBdVzVUwJa4R/6yS9fJXbmavP0kzF6VuOJeGnrAErWrOtmeY7nsLA9HfqIL9CSFkJc8qsCkViC8BMD+76PqMXRG/72kyPJh+P/WenkFWOlXr82/e9uyzra0CVDPvB5msyjHYDm/Bzoh1fC3bHzwcMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781853994; c=relaxed/simple;
	bh=4mWbTavGmvz2nQnuNlYoeI41J4w2yu27atr/qYo5Ne4=;
	h=To:Subject:From:Message-Id:Date; b=rho/RxqnAOSG64T14rk15pgA6YuL+umF7WkxIY035LRmukc4LuCZA9kjSJOcM7lqJAA60nKFbsRl+Tov3E1ivNethyxaDX8Lu+fD4BDVkI/ARTRad75gPqpwwnuOja3Yay3NLgebfY+RFmJ02oEesDuTP+jq51bjkmLlM1tC100=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSD2HT9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSD2HT9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F87C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781853993;
	bh=4mWbTavGmvz2nQnuNlYoeI41J4w2yu27atr/qYo5Ne4=;
	h=To:Subject:From:Date:From;
	b=lSD2HT9X6gzMTjBgm072lDHvM5nIMr1+OagnToOe60PY43xzjcqlx6K+nO2aPLrh1
	 Cztmn1lLBD7qt70G6bBreofOcw8PuKXs/9B7U5ppr7eJFBCY/3BhoUnvRZhADC/P82
	 LAAYS9E9ZsCNEpEe5UougxkS1bkki/kCc4zzghN5J7Uc4oOMQlgRamlP5vIHdu3A90
	 xkKA2FhRY1UNmyChbza6QPwoVb14rzWanu5+DzcYq20iyoxm2P9qzj0jjF0A2rLfZf
	 g3p8xJnqu08mXZyo3EyRpFYQq87w2p9178EjirsR+mXaSHGLu7qMlYBb7xGgQWbfYi
	 aZ+QQiF8oeAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEABCD98F8
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185399368.20582.12257815624546964171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ae1ca8713ea35715fd495949ae2a6d7536036aa8c944916ff9bb63b71a49333
Date: Fri, 19 Jun 2026 07:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781853993
