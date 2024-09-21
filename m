Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410DE320E
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726896354; cv=none; b=BHyj7nmI+t2pu/w+FOZvLg2Da609b0B4DnkkFwpk6IloK5SeFR4zJdZxaMXZGBrD7Ia9LIcgyR/FbR8WqrmfoRKzuS/E6ICVOLozTwKHmms3+Q69bYwkzZKFVRfrFENnZudAMpoyAJ5muc62ykn3HXBaExQwHkTYk68Zn7Uh0Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726896354; c=relaxed/simple;
	bh=HSH0az14cd98vq+iiVwYJos9n0hAdwOJE0vxKkGqcPo=;
	h=To:Subject:From:Message-Id:Date; b=GJwxxMy6cmZEAfKAtdkm8Vx2YOCklSZ1oFbvETqW4me6h23LAh/zeFjPWS2ffCvfiIATAJsK7YP8tZ6wgu41voXtQksYyWQYH/HG3TvLcCfvjhv2dPAYG6dkupVaVkCEE4BRV2V/EOquO0GXiJAH6tsbozWvB4ZTO5aDxWj611M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Via/FYhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Via/FYhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FA0C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726896353;
	bh=HSH0az14cd98vq+iiVwYJos9n0hAdwOJE0vxKkGqcPo=;
	h=To:Subject:From:Date:From;
	b=Via/FYhxab5iwnq6ewlDadoruOo+x29vhEkbLoYzBeHTZUlnFCsL7aU2DU17gK6eX
	 G1VgeALPUJJgCpTx9GlTy0am6+H4JC97TgVwnPbOFTPFtPO+dtzwda7/fLZ3qkD4xd
	 VLCuqusfmUsZhWwR7ZNWKLArAdAMKpe5Sov5ZxRrGEhHxWMAVdEWeMazjFWeJgo9EH
	 wQs4arjO0FqXigiJafwPPvzvXJBE41zeNRWNeX8ZnCBBk6SevEwiCfrWi0jXXvTn1k
	 T4ZAg6gHxQMiGs6XyADSHn4Qw/2jcLnbsjgNpkpaZO8FuTywInFC8k0Hm/UiyhM8CU
	 I+X+lP1wynwiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A77CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172689635364.22219.5840319428378661858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7607db5f781a28558b8385b1c4ee932dba36814eacd0ac5eec85bf18438c3d
Date: Sat, 21 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726896353
