Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3C30E844
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767787434; cv=none; b=EDWnthQSNMn1jHBsCJgpR/EpbaAQFat2ItZAGJTvb0/U8JJ+a8KB90vdZ/rQEoxOsexuhHA8vCuK5TJLVh+FyQPNFxnvye6MSz7Doc8bBojazQaqvnb4Q/MvvZCOgop1/SZ8SRJ/zQoahq5ndn9g+Kv03k5x9HvakbGTgNf+DKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767787434; c=relaxed/simple;
	bh=nqclCBx/+GTSlHimyJgtQ6nJszYdajgFd9H9kIEWxWQ=;
	h=To:Subject:From:Message-Id:Date; b=D8jRLWVD2ukUC2sI9BMTpkKI2YudfstfvIIRV+Y/s3jOcUp/S6GrmQ8Bi3RjnbqxeWh1XiNx6jevHiU2P07sIJvCxYfzWGgFikC8w2ekJ+fZZ/50+/V5i0mCv+9IhjDOowveXCrUd0Et7ruOTt9y85CNLjCPvWKv0iElFlLPj4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FH0e8cpn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FH0e8cpn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39ACC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767787433;
	bh=nqclCBx/+GTSlHimyJgtQ6nJszYdajgFd9H9kIEWxWQ=;
	h=To:Subject:From:Date:From;
	b=FH0e8cpnkhSbAXZ7uXbQ5wz+xS0uoWjUGWl+rq/jDI9vnoWdkKP66uvNhm7dv6mm1
	 Lycf12eEabOxKe1wS3Zf/f6YJp0IueHyJDh2JLP9jULDcQTlm+shGayTvwivHAl6ti
	 Wd1B2v5MtQPf0gaOvnViBxgUYzgdP5GbjoQPSGgSDX2GmH24CUonapBJ9mmpEanB+C
	 +v0LxUP2DatPSE2GhDD7s1eq65dZTyoHcfOscC7xBxHhQMNnpXaWNcXU1QcK0ufo7q
	 OCXjazJay9cM8DXNaYf3PknTamq9+nl5qtKevxvHwU9lwst9ypx4jBBowmLJWFv2Z+
	 mUy11vaq/TnGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B37CE9D48
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778743358.5901.1096901337317873902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df071463015525e4475ee8b46f2f141ccdae8fe93fb5e7312c20bddcb0c8dee1
Date: Wed, 07 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767787433
