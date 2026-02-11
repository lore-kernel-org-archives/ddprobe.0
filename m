Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5631197C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770841494; cv=none; b=kXo43p7i3Hk9qGmaMdiDm/wGnSxwbVl1ZprFcIdu1bpLy1fJ5l7N+aJYmwA60MQFMHUe4bw+I1q6BgYMnDiAuswefLYvxHYxS3h6POHJISkt6y0rUVHYb9pOYIZPCvOJgZcVveVf/T4gPQX4F/BGRsD+1ikczMEzqGvyJrO5Ru8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770841494; c=relaxed/simple;
	bh=7BYspH2T5K0d0GPcpneEs7rDGKivRUvvOtoaxORLre0=;
	h=To:Subject:From:Message-Id:Date; b=gpTsnVhtB4w0ZiNstAVC7Ghz/GCjwP2I2qIHF8FC5xX0fqseu71fRESVyQggc2+NiYhzIWMt33vRO+CqaMU3BwIP9tO8m0cKJhML5rtk8SQLWxyFAkIjtDMWjxUs+oJWaIvEQhIXptkNLZLb5gTZvFuum5yI5vPMaaMhtetnqQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uN6TPT3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uN6TPT3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2916C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770841493;
	bh=7BYspH2T5K0d0GPcpneEs7rDGKivRUvvOtoaxORLre0=;
	h=To:Subject:From:Date:From;
	b=uN6TPT3BGYirIMbRQbuzNW3zK0iE6FczhUuX8ac46m4kSBU8I/NF7MOw3LyzlOv11
	 EpwVuGoTiivhPxkh0Aqg7nM1ORk55MdIfiEyALsWFNcM/wM8nPrmSIKmmrCtLE50lz
	 wlqBysWDxRCX+oPlpT9vZBeV4yv+EzZB50JMB3iezu/V1OFp9pKeeCRydd3lhYuhWT
	 H0sY82NRNba0IstwwakTIGl8attbA/zkHl2Hud6NQirDfzrr1yRYQR/IvPEfWKISAM
	 ODZW+xpUapjwRqIErMcMq/tn+58JuVmdalTGmKqr5RgaDMUD6roYGUDpoPOu+Lu1PT
	 pI0sl41fyrRyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1ACECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084149364.25265.11650947560925867715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f366b918d644a30b8cd5d4d1aca2634fd2292840bcae7566e6e219a68ce428
Date: Wed, 11 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770841493
