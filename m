Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9E0289E05
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750417794; cv=none; b=CN9SCa4vZfaGbWR1xRfCbLUhR43o+uxKR29wpKt3byP3EGWsvI0koBm7V2j59mz+MmdB+kxXPkQ/nqGg4f+1r4WduTsUwaAaRl2UULqUy+zL+RuNZpboGC1uuBzSIf0kSvvVi7uPFokNKFA8eeWXsm8uofhO4L70/YaciVbdOfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750417794; c=relaxed/simple;
	bh=CgAVMW0Njgq5bq0w6YFAI0WbSYN9uKsLo5GT6VRDTxU=;
	h=To:Subject:From:Message-Id:Date; b=tNwuAa/XDmi49ZIJnLItghV+rJERpxzHFUC94b2QB6I1yYAf82awelFNd2qT1pV2V91KbI2PIYO0CX+WyDKpWCAf6PmNR6QR+4dRxXawuNDC/qIeZDGQrlZW0VKFCfP1QCOM7wwmkNH8RcVlPVEo2bUHHWE8eVrav9A7IiLaRTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMuPT+hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMuPT+hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750417793;
	bh=CgAVMW0Njgq5bq0w6YFAI0WbSYN9uKsLo5GT6VRDTxU=;
	h=To:Subject:From:Date:From;
	b=RMuPT+hcpx9E+NV+9mlogQn88wKSm8kTzDt4K3IUgyeqZNj+Q6dyDEAnoyWxUosdr
	 fbkqNLiJB6O74B0vTGErDd4ptPCGPxnZJ5+/zBN0H+rv9QIsaXlbuL5D/E3nGPmZ01
	 vQqZ5sUNmpcQl/xFVBXzUX0g1roke2FwJQOqwoF49qcCQEAo8ZLV0TMCTgD4rqTXaO
	 Sb1Xri9CCeL3gksZ5m/YivyE1Jzh218ObeS+0rI5KFGNxcQ6xVJAzLa3GR9ID+tdTl
	 vDMCuZZ2N3lqLKJAhBoM41nHFOXCL2zoicr5LbfFmjc/9W8wfjaRFjwX5KcW3f3Cgc
	 uT406C/18fgew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E2C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175041779358.22606.14340163589079844328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8c1131d6928b23921c1ccab128b27f8b0ee558a14b226df5778a4aeb6615be
Date: Fri, 20 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750417793
