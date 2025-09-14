Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1545E1E7C10
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757858394; cv=none; b=UtNtVShqt3+mG8Gf9I8p/K+2CvZYe4jARD/msYi8je8LpDZA51vL/EaXQ3rYhCzOxVbpyC31wvvpJfGV38nEpSIcxbUL9aJK7Ss2ItEkYT9mXSqQgwuX9tz4Un50RwuHm+Dsi1S45m1x9RF29xK59CLqGACk+Qy2ktOVk3R+fZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757858394; c=relaxed/simple;
	bh=FHMj0VbJwv+GNNT4vqEtCmNE0Ht0Y+96N8Vn+mVhvF8=;
	h=To:Subject:From:Message-Id:Date; b=po8Evngmq4UnlJaEu/DsZGbLlTq3sJ1/N/0DME/SOw6RVPEw3oDnWNaKfB4Ri1Z7yhosprH6UOBgCDb9GloGqprGvAbmGeT3kuv8nymRh1VFGVyndQ430puwjPUE6GI1YRAu5xAKEs+/XlQO+/8kk1vDB3uFmv5EdORczX6KO/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvact1qP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvact1qP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A210EC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757858393;
	bh=FHMj0VbJwv+GNNT4vqEtCmNE0Ht0Y+96N8Vn+mVhvF8=;
	h=To:Subject:From:Date:From;
	b=pvact1qPbe59EdoCakXgcEq1Jq/3be3WTRM+3Ue7qZM96n/pVsrLvxO8oYkKIouzD
	 9O4PK4r+NkS3lAIc5NwURP1yJpvRoYEpwj0RYUfdPcBoRMw24Hmngi7UmLoz4CqRUx
	 Ao/7YYNXWHZLqnASM0+7VOmsmq7PwukZsnz1DwLpL5f+yLBKZn/qUY95Zejm9wE36O
	 jdsfx82+o6veKO/pqIbMSR4MgttoJAJjGMIM9PxBiGByJ0+qhdv9G3aqawGfxv3VSY
	 jbMHVZeOrCWjRb0ODqtOPFUFheXJJDFyoZ7Ha50/+CbMtGQWfTJpkPPHd+4TVSxGSM
	 0JRTZjsOgwtjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9416DCAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175785839357.13141.9223184874712027972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2620d3ef3ad8faa2f6b2052c3a11980d3d980322ba286b369e0c8ab5a829ff0
Date: Sun, 14 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757858393
