Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E70744C666
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116714; cv=none; b=Q78MkQpvtyBRswXxBhsqUKubhf8WVeAYNhYFWIv48aOOIfATpkrhlsqcNhu75CoD7BW77cEGA/5hSChvr+VVzsgUUm8DZ6ZLOO5gVn17N0PMTtTFFYaHMl7tzU0Q2Ktvoz0WUmEz5mH2u09557E48PBaP9rg15oemrNvyUxyCoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116714; c=relaxed/simple;
	bh=n+BNfxKn7JHcsXU52/tGwe4lAkhOxt2AYcStdPUyRew=;
	h=To:Subject:From:Message-Id:Date; b=BvScUlIbKFdheMotInnnzJmWUbPdjt8oVSqYr8zokZVEwbgVIP0dy6urDIEzco9benps/2NYbEcX7vSirGhDMOojPrOKRmZ6lDsF+Ge6NccHH1+BSdh0i0L59w7ZW1uHXBtt/3k3V30RZlQy46VfBPwNIQqVXJRj8gSqJ/iIFXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9mSLMgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9mSLMgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE80C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784116713;
	bh=n+BNfxKn7JHcsXU52/tGwe4lAkhOxt2AYcStdPUyRew=;
	h=To:Subject:From:Date:From;
	b=L9mSLMguNPo5IuAJ7ZJPNh3PVOhhArU6UPYV5xqSesZjpFTTE/UIVXaLmaWwcbkUN
	 p+ZFtYG+1gK1Y2nkTF/xaF7Ij5kFZ/BP4e4zDahx5gdz25vi28JiATBJYmw0y1OJTo
	 NNToWw7aoLjaIrusGfQmykQcUaOAKVY7LAiV9U6YMfCWRC/tv31zHJ1lrVaF6NSBqd
	 tLMXZ+/Z9Ag4id9iu+Sc26/CuGq1PR+aJgbxeHYoDcPgscdLcO/iO5tduY4kQB2EZx
	 HGvdoYxprAZ9u3twicUsvuiEr5Zikb9kdcpHhEJKzrwKfH1w6EHdx9q10gm7Oydmew
	 mqLQuPuD4RsAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9850C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178411671368.4864.3545249992085163661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c03b5d9893eb280166536e7c76f89bc45846a41427638eae87b26af480b75a1
Date: Wed, 15 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784116713
