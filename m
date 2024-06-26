Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550A017D37E
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719410603; cv=none; b=liL80VoWhFRvBg3MmsE5GJ7GS/ums8TmbtmdPznGSOdKm6A+8wk4/GGBjMLFm6rnz2Tv6DpL6W2ThhoJhTc5rYjAerFF/WlouTWhoLvVG43fTrukCHIJ+hAknIaVzDQuMwnzl1pvJ050cb9WXzwE/tBwc+Zm6s3MXAaDgpic9A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719410603; c=relaxed/simple;
	bh=j2kVHp+MHX38xHoonumpykAezEYhNMsRUr+mUKlEQsM=;
	h=To:Subject:From:Message-Id:Date; b=IYDsIbafcvw1xuZAGRMA2GMOeGjgCno8lG4NkicBoQ4wDrOpIbcYRKb5k2gbPGop1v8nkvH7Hq/f6OycF0Ya5Wc918EJ1P3F8XiBA80FHjgs9ekTUSQbZfarVMHlNI/+sSrsTL2T4JyeakoRqOPaAl4myZvNoa5q7vw6QzgDwqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QK6TW2ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QK6TW2ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFD4C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719410602;
	bh=j2kVHp+MHX38xHoonumpykAezEYhNMsRUr+mUKlEQsM=;
	h=To:Subject:From:Date:From;
	b=QK6TW2ZYi4pxuWnJ9Dw/V1GbP/KSWT2Hq2Ilgz7+Hxu17+0yUtDz5GwcD8vUF+klQ
	 aeRWgGnl6j0fxpYvem9/EJKYk2uDDbJbtLW8zK9tlP2LQky5mJEzBxBKROg+gA7RRH
	 6rAI/OMxgBPqmdpW3+LwUL76wvII2AwWjBmDJmvpnhZq4+XC0Pi8WQnhq8/B0JkTNA
	 T+h3ZO/HJFFOEUX/8TFd+yxApHyWSxkAKNB3yKSMY0GHwtF2LMkXf1/eYle7+IxkSk
	 tnvODhNnlJMzpIKo9fsukwETszXuoRfXFdkIEnMZG4WfktXLXbmcr6heb9ngKKB+aZ
	 DHzkKUPVJ804A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C633CC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941060280.21178.13543501844383919842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7cb525e09aee33c1afa79fb2d29dfcb8369dfd4c39aaf03a0674dec0d5da2d2
Date: Wed, 26 Jun 2024 14:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719410602
