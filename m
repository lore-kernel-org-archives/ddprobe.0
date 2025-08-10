Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB5D22541F
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754830794; cv=none; b=JuN3ew+w9gbd8WRLgwKOeIOY6zkYsuCzGxWZVSb9EJhAq42/IA87Yw7wk9oAe2I/ZdE66fDovNtWCF8RpqKR9pIPOG/PyaraqSRC2PgyBTdpDf/jP9tIwUsAjZcNtF17Zmg6mWM82knZnUhIModErZs9QvrkK+2kW/1nA79tif4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754830794; c=relaxed/simple;
	bh=17OwXTIaKLNaCWdt+1WcIz3Oj8B3MkcBji7TMUakC8s=;
	h=To:Subject:From:Message-Id:Date; b=T/sIOtXxnZE07lnrkIde6zMyjCDboIWqVPOTxcUzWIV/usCFMAAorODoTifvFM2s7mTsX4jdGZHM8DUWm/Kxa8mftaP0X0+3/yloedJZICm2uWoEwXxN888kOjuYul8EYjNsq8LljrN4DEQuA3gPFy5Oe4e5+YnB8AOeN7hD2x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbiWVqth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbiWVqth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED41C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754830793;
	bh=17OwXTIaKLNaCWdt+1WcIz3Oj8B3MkcBji7TMUakC8s=;
	h=To:Subject:From:Date:From;
	b=qbiWVqthqKC0zfwUhYBlPwTNAqxrI09VNYhkZOt//V1/DCb128Tc7EYPWBvSsorrK
	 BSsE6JtT2ODzKl9Y0ClIKKhnjOopIAGjkOUyzg1kOhWhD1dqodUbN0U5LrmINa/SGv
	 CO4Ur+/noTQIYYIXAKM2mP3d0YOBjsdZSWPKTWuwUBx0DfCWmL1sgXcnit+kwe78d5
	 E1qhzLQieSXTmvq7lst6k88DgOivdTW4lRchRY5z25Tk2Pmz4BlDK60BtcRyrm2XKr
	 KcecFSOGU3MFGrM5KIRiSvRCfpVbS/1kBK6nYbaILaNa/xihhaxboejwLZtR1airOw
	 XCso+LxjWFUWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78DC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175483079358.11952.15894976230688867875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeaf0c165e33bff636bd2e0d3c303374f54e793fbb3658009e939bc2ef2e1958
Date: Sun, 10 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754830793
