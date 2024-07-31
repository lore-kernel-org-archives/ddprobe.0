Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2882EA41
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722384954; cv=none; b=bRxeh1Y36bVcTj0WJ6V3Km3JoNRfiZaBEY8h0BScbKuZOP/Jh4gI7fklL1oCT7HtMkcYd4d6fz1din2jSyBasmn1Hortmvh0YbSWTxIQZTuPq/V37X8Jez4dvYEFvu+vPhWvYvSxMg5Z0yt40sy2mjaMRzs+qn3d5v2BJCq+t6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722384954; c=relaxed/simple;
	bh=3jwk2XnbljAdodRCRtX/VYUc/hjuYOEs2aQP9fI/K9I=;
	h=To:Subject:From:Message-Id:Date; b=qt9T9wIDb+SAPPAHbXmWQrsYy4sWfy2uFnPG0FdqDIiOgh9rfQkv3yRNFFPPDsOdCuRgqWHjLBy9vJXX9UZJ0UcC2ObMP61RVPEVNjuPAt1nsPafkQeG4kdUKnQ7e0qg6Faws6i3amp+S0ONe6aN9oBLKQm/KZQ8yOZUXictFQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVSpAfc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVSpAfc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1596C32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722384953;
	bh=3jwk2XnbljAdodRCRtX/VYUc/hjuYOEs2aQP9fI/K9I=;
	h=To:Subject:From:Date:From;
	b=eVSpAfc7YDm4bA4kZQPafigsP63keLxAa7llYoAZHidIXdp4pNcVzuJz044QTMOuu
	 l9Ne2SOZfNW2KFaZTqzfeSugc5GB1BCTeH/9jnq8Y3bKufOXwYHcy8G3vzjehnYF0S
	 33i2mYpd12dSWOxY9vQ+0uzzkipYidzGABIyoBfCQg3jHUFsGS1FXAG5FaIwYuePuM
	 aPthC0IdgAnRvL8F2WkZAU2XLJXKCQT8holZMpaPJlgroxLGOB1ETfjEXupvElxbdp
	 bpgmVHvqkOFzmIyGSaTi10dYqEyVNhUPEdvBMoEibwYuKmjwPijF69DQOyOpW/u5e/
	 WgbxB0jT2s2iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9844BC3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172238495360.16822.18095984172645939655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116963fa82a245cd53042006278d00798f34fdffe170a0db8d2c0fcb44dae756
Date: Wed, 31 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722384953
