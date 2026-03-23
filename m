Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327BB2FFF8D
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774291494; cv=none; b=s0OpyVJuRg1Stg3CV4Al+abAPsrRW42ngsk2sAbESi6dRIXfVaBkHpQ9iUyDCmZm1bmXsvXdksyxrcmxvKU6YiWTt4uip6Xo4DJvmBjs44ogcl2Llrznoe6lDJT7S12A6TLj4Xi7Ok0AEl5FBOyOxCx6j3/wAATgiXX5u75sZXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774291494; c=relaxed/simple;
	bh=+VMjiwg36KoKRE5BAXxOFSNFfU4Xgs5/q4jv7joaluk=;
	h=To:Subject:From:Message-Id:Date; b=lDJ7hLvtQyPIpxTA/bA121owYcO7yt3YFdOJIcCXYIcpMtHz2RUtrcThdJV+8qdsGV8TeI2Elhi55e0HUG2VKGC0r7G9AWgmVeQVnUjKSUwOwGLb35EbyoE52N47cfLosrd7nLZEWn1xbUOVmr7v6ACWuq77RArBuOX0sJkOr7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrV3iDfi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrV3iDfi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB865C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774291493;
	bh=+VMjiwg36KoKRE5BAXxOFSNFfU4Xgs5/q4jv7joaluk=;
	h=To:Subject:From:Date:From;
	b=XrV3iDfiUFDfFRCm80OiHYzuc9wyYa/o91OQRnZsTYmVKWs4f7Tub21npSwh5hgfJ
	 TIIPTB/k+aFlml1mS/4mM6/ITf1kUs1ZI+feweBD4CVySdpXgBqc0u4INEUVIiifDO
	 C2rFUGq+tVScz4FLFrg0Q70QoLftQvFBA9e+yoss/UivkAmyiEs9tggJZZjatJQH0k
	 gVtsjfGAmMpziC9ySo7uRKNLWDhqQjKWvDUa8/Hw48R8GBX/HuH06qeZbtQDhmmWDZ
	 9OqATrEo+Pa1ORzUpRPKabOiIhVn4XT5DbpDZwN6b1QLbgVIWrWJJqbVWFNWBpsS63
	 bIqTzgAk+wFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99975F483E3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429149361.6291.11194347597023698134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e263b876ae4234fdd59c8deb84c3915b57ba74c2d7d4e9899dbda79fade461e
Date: Mon, 23 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774291493
