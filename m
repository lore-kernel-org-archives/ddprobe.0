Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5509312A14E
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715185343; cv=none; b=Zzhd9wWYKra2FBi/2aHQ6dwiqViI5ssnjJOelt58a+3Zu/5vqx3IwP7XbUyhGivjm7Jt/UZs8Y7J9drtpebJeWZS3nUYlaXfDMa2f3kz1deACVZYsB76iCfHPi89OzdYIfZY/wO5hxXstwWCmlbndbDKWB9Tiavk7cQP1iWILlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715185343; c=relaxed/simple;
	bh=U6q0/xqyBTWZTHMeP5qSYaI/asjcLs1I4qS5oGVn4CA=;
	h=To:Subject:From:Message-Id:Date; b=ehjACk4sDlXcGRsAYO6jB4oIc5oJUOecgJdlC/l7+lS+PuxJFI3GtTXq1ldXaDxvT43Mlbb9/lQCPArZcd6bCtcZRv8ju1aJAaZ8sIq9tu9s/p9dVX14GegH94cBZfWhkgDU/t7xxRELiGdIFcrE5lnrMoKDf1GD0zUBsn5aH2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpxlVoeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpxlVoeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE159C32783
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715185342;
	bh=U6q0/xqyBTWZTHMeP5qSYaI/asjcLs1I4qS5oGVn4CA=;
	h=To:Subject:From:Date:From;
	b=jpxlVoeBX0T8KWm1HP79hTSkLNi1cnO+l5h3RrDeeWQ8sCcY3gMuqMaji+MI2e1a/
	 cbcwb6idjEY9HMdtPRZIUNNRYomjoC5C/GLOKAd3N/2rKmQV/DjK2VHtZdPicafJwy
	 yc/aCXw0xXr3gz4l/dgAJiCT7y3fTgrGk34iJXYUoaWTPBuAfF8nBkomV0dmu7won6
	 kuHst+ruk5hJnPuny5EkJzSHw7p7TMcl1ZKbUnV8Ke+wXZ5rY96IOy/Bo3yodjP1jm
	 HAeIfK4VpxSYLRs3Ez/AwmMcbos0MGZZ+bNgMQHXtMbfpuZLJ4aP6mMgxOX6kbIz14
	 E2InWNYpL4OvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0728C19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171518534277.13886.11676097178037624089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef5b776d309cdcdbe0086250dbabf2474c5d37d49561a21f2f7ee7bda19efe6
Date: Wed, 08 May 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715185342
