Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA2C145341
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723897554; cv=none; b=mLGF5blkRC3OA/IkRCh23mWCHo4C1nCO6I+G5IcT63pJOrXlxnYRG/TyHOcfv4ZU7yP/odVJc31Mpy/AVGbHXlcE95yzd/yFEmarhjkiX69q1/FnjuoaTgI5KJ4izd/gal9k5ynsne0bkQ3Ger7geFZ3myTDOgKSK244bk2BEbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723897554; c=relaxed/simple;
	bh=MdH4cdHXc9dVzmu7SUo2xwSv1c+0oTAginy1pmwmfJA=;
	h=To:Subject:From:Message-Id:Date; b=KSrf/VrIyKVC/6fP5YsIdhjeypZL4ttvKlQuQ3g93AKk2PW3UtEsf+3B11eRXDxZdfyu4+OvJKldsz0q2p0L+/YoCWYyEBIcGjKHZr7VF8IuB3R3QkqcAouVSyR5REtM/myjq0HV7TF7whU26kVH3M/KN938bPtjIVcqHJbFCP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMUpbosn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMUpbosn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC50C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723897553;
	bh=MdH4cdHXc9dVzmu7SUo2xwSv1c+0oTAginy1pmwmfJA=;
	h=To:Subject:From:Date:From;
	b=aMUpbosna7IDFyoLUDrm5fTBuwPQteRN8k4GX/dxN8Ocsk52oalWVJRURM1SsRnzR
	 oxBMDd5O0RQp2qAecywDhqDx5HLL3n1qXSjnsaEcIASJiKUdOWITfQlHAKjImgAqF+
	 Mkt1fxPOXGtjkm/zbtI40nMPVgtv1hwkKj6jccHvyzdMxFiCBYfyls8+htNrDamLD3
	 6uvz2GDA7Nc/pZ2cKVtz5Abl1WUGKaoLccXwPtXokSYNSC13twEtf9RSdQ5CawvQcU
	 Foqm6AEZ/VnW+CD2VEgoMNiqYSEgbhKQd/rYkVQBmQRImU4pOvLTV9i310F7fAlG2G
	 9uK0PJaX1OmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9744AC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172389755358.21861.2962884646991790435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a6207cf4cf1798618ada3dace1306ba5f7e2b7f75155af93b29ede6cc55588
Date: Sat, 17 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723897553
