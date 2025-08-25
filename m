Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47958306D35
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756144794; cv=none; b=Bwlhs9yTkW2eU9+6fWP3dmeek/mqd4r2dVt986TxDr+lfr8h7PBHstX3wXVDp+dZlfC/7Qm8jTLmelUVMlcBuHOCnHAsvD6e7FLqrAQu4uBwFQmBxoy96IesOc0PMSzU4+2AVPqTU4CrGdd4VVcPwAdS6GyNBYRo/uPYxikoP0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756144794; c=relaxed/simple;
	bh=irh3o9aLNxZxWY1oTxmVM+8TWppkf4RSZ7y7WGh9F/I=;
	h=To:Subject:From:Message-Id:Date; b=G/AZQ/7wX21fSjX5VBWfe+DR/1WCKKVzD3STZJKaCo6gLhy+Wfu8ZRNn9T4QGSdz0DxOSsjsjEKoDDGPdJKzGOaaYkNnatUqgLsALNnSMzcoTPY0oc6vFm1goy2mnYeD2aVp8Ph88XD+g70VHQwp5m6ckGrveQUSY+LMX7ZpfM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiKeBIja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiKeBIja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAF0C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756144793;
	bh=irh3o9aLNxZxWY1oTxmVM+8TWppkf4RSZ7y7WGh9F/I=;
	h=To:Subject:From:Date:From;
	b=FiKeBIja6ajXiK/KdP+jJfvjY4+7HxhJlMoM48uM1oobKJ4/zsRKZJ0lqRc3fdVqa
	 K0UXZ/ST/4xgYXiSivCTx6CgXzBeHn9RE7VDoXGzRIO8viqevcKMelw5Svp9tiAuHC
	 CzKhtCqmZWeJE7mUzOHfz2UtwLzbsUJrW8urGlbIWY3WEMS6KdLROyUBXN76eTtwtA
	 xmiQhJvRcpQvDsLnFh2b/CZMOAzOncXXo4AL63x+pcgyhjsMBOLmVeQJRj97VlujQT
	 R4r5TDEkkdybMVgRzSLEMrTROEPYH0wyQMcVOyMrjnOmNKkh6zhSA10VM4Kd9xbTuU
	 FLYKOqiPAme6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE12C8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614479357.22561.6669845622625427988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a34060f1362c37f5946c4b5426fd10daec94b09b0afb3f88ec207c4a64a871a
Date: Mon, 25 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756144793
