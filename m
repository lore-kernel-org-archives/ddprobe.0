Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFE641C62
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776390454; cv=none; b=BMgYFMK2gX4hSOO+Gfsw8zIqRd5vQ2E+s65DImrkqulOtrz4dvOk3WjOEFU4PwTvVM1uTQSB2SLvxbOdLdn1kPP0nSrGjgYOO6vEJcizfzQE71pEFn/VRgT6bJAAU7mC0enmlo6MyCkYzKqOb+LpHNiwa9NrDzK5f42m3KEPtO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776390454; c=relaxed/simple;
	bh=AG35M02IhlS7embhrD01v8ALvvMWTsGSsbprR+/XyII=;
	h=To:Subject:From:Message-Id:Date; b=tfx6QTMbJMk0aYiNdZRhPddUF/gOpC+Enst02t9ykXf7R9sCbUSH8J6chw+wl8NAHOBarUM74mV1eWEw23yuMp8VKC+no6+pryjbAywbToKI2AApgH4Ma3Fxss7RGSL4bdI3Wom62mwhL86bcI9P5Epwv3jAMJneKQBGAsHi55s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oohn+ghP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oohn+ghP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE47CC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776390453;
	bh=AG35M02IhlS7embhrD01v8ALvvMWTsGSsbprR+/XyII=;
	h=To:Subject:From:Date:From;
	b=Oohn+ghPQQlN1ne8lyPxtyl0opJoJzol+jCsmCXfXaMuCOxbY/yzLVrjRAs8CukMr
	 m1GSgXxbaRDBOOLzFNo7v+OwC1+yM+YZyltOhunF//5NEt3hnLl3fpc1NSAV9V7Mpu
	 ATvX94FnOLbTqxgmksynVOxTyswQs2hN+ekXA+t0t6K6N0hAcN64Md4UspMdU6MWla
	 LBfl/J968nuWsabxVSpfnvPbwMQ9LguhILtnD2olptZAdAubN+S+7wo/z80HwdCZCN
	 3JHFylvXLosyr8vTJeCBpkn+9bbLOe+3HRyap3sejSBn5ylIRqhSMMnX5PSjNyQFnp
	 Vad7GZ/qQGcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6C7F8E499
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639045368.9111.15375145977065068452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242027a89b125ad92737931fd37470406319b4b2afa98ea6a780a7d3cd5b68c9
Date: Fri, 17 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776390453
