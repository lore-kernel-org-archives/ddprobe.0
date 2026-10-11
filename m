Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC6B34E777
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791676834; cv=none; b=VF253a7kipOWlaLfLF5Yk0M1oPQNMRxcNUjvDRx/2kpTNRJGzYXuC1sbYnX4GDVKbWEsndVuXwLeUMc8JtHIgYG8ak2ApKjERGPR8o4GhBMWExduDjDFu0Lrsk7WevsyuT2syaNw1ewEuidRTyf9fv0ZM8MhxHoEbA02QxF+JQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791676834; c=relaxed/simple;
	bh=eFPSg8NzwhFbR3Wt5KaaWE+Jl/4G7igEyQu731wxyIQ=;
	h=To:Subject:From:Message-Id:Date; b=LBvF3XVr11jCNWRwjq94/FxfJ8q3a1mO2aTAcMouapfi5WK5kkedEFOVKty9yaoVHB0imM84UL8nuLIChwG0ijPLdwaZlF4cc+3nb4wzgyUIEgeHR7I9wjRaCRSukIGVjjfkkV8w/WqXWGJVFRnFULX2zw9xHFw5EnTJLdHaKuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWGEWIJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWGEWIJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE63DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791676833;
	bh=eFPSg8NzwhFbR3Wt5KaaWE+Jl/4G7igEyQu731wxyIQ=;
	h=To:Subject:From:Date:From;
	b=fWGEWIJzW+z4wwqyP9juXjl1kH0bTgEhNm2KI/rGAsBfVQ9Q8CQ/XA67+LjXAJaEn
	 u4QgFS7nRqF7UPU3wY93ZLHzr2X1hmZq/VhnGi6CWv6VVwWelKoW+kfD87WI7f1N/K
	 Yw+fnnDCi/E4KwJq8JxPgq78aQJM3GF/63BmnIkSk16M+OrGuswjHIQ/5I8fskvJ1R
	 QUbVwJV2Vp8CNPtyJHZYy23OaISEEJ7w9iJ4a+L9DDumQr+Vt1cy74ixnNwB1rAMee
	 SfD2QmQ9XHwBuQ5eElAoaXwgSHZwF6uENFpUN4EsTEmY2vwWnGzXlLNwITTzMvKHga
	 sWAlivXq48aQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B613DCA9ECA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179167683368.1749.4518185526549835103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60566db28dfe033f45f4e646996b2a47f5b60c847b7ee5efeb02af68504e49c4
Date: Sun, 11 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791676833
