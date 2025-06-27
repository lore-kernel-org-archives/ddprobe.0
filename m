Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321211411EB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751057994; cv=none; b=Qsy3SlZ4tvuGDPA+VCMt4cyatoctaTgmXwn9bJ2CxLeKJ3WrUdWGphq1qiYNstDALb/OTd+aPfOZ4dPBpICpfsFZzAUMQz0ziJaUFQp4LmA37kiM/e+HWjruKH9fGiHcNnukK2cVNRx2MUeVLOMoE4FHqbT6AGzhzF9OyJjkc+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751057994; c=relaxed/simple;
	bh=mTyEekOV7LO7Tdg3iL1L2OCFvKZXPQ0OEdGuraYSnRM=;
	h=To:Subject:From:Message-Id:Date; b=AHu8xY3S2I7sm6diBMWzGaZTBFck7lE8pl59DWwNjS9Wx/gzYUZk8W01eSZYAcGHYKNq5moRoU+9mCE5/cs6NZXjEymLjYVm6ZoO1jEPWxNBBMHmhXWG1AFSk9uj3cInABoxzFO8QVHNSdAffVzqvnRcyWGup3Fw77r+wscPyN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjAxX5q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjAxX5q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C5AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751057993;
	bh=mTyEekOV7LO7Tdg3iL1L2OCFvKZXPQ0OEdGuraYSnRM=;
	h=To:Subject:From:Date:From;
	b=kjAxX5q195m4lFL066cnFnQIWypzFqkhfQxGHEleC9K+GrzKNV8nxWwP+Iks6RXd5
	 5sdnBOmOuRSp7OTQMlUHJTH9Rx6U1nmF7PUz+aLhPsw1vQ7qs5f+tz4yaUgLBYc3hv
	 7V4wqxGr2lZ/IwaZ1vHvoxllksbSetWrbLPnqahqdQc0tyIB6NWPNR7IxxUm+UxyWQ
	 twEt3QigMqXZ3/HdFS3smW66vqEdi0ajP6MoXCJz603VhSWfc6tczdgD7yQLWs1Qnh
	 mpKtYbGcyuK3oaPD5busm27D0967Hm1Jq2bkRb3DohoCuVnR2snIOWA5/+Iq+B6I5T
	 CCj1kYu+0Nf0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDDEC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105799360.23941.2902243487974915495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48570b03dcf81949bdb1dd0ff9f5bb2d32910b3b81f192b53fa25581842799b
Date: Fri, 27 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751057993
