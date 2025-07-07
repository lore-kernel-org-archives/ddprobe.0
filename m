Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E45072614
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751864994; cv=none; b=XJ1GlKU6RT+qdU5StuZBrh0XK4347suTJhQuCwCqJ7SBarOfQ4P8JYKbA2x/flTpx7O+nt9rzKximPyI38eyLTyqD159bL7/dSkmbgopa57llRikYf+PVsCXQ9m3hFh5CKDAL91Oih4uddJO33n2YceO4cpB+/1Cm+UwrKTARzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751864994; c=relaxed/simple;
	bh=4nLo4HdXeDAtySvR9BZZNGsyp2IEii8Sthup7s1X+sw=;
	h=To:Subject:From:Message-Id:Date; b=DhI79l3IHEfKFI+Y1PNqP2DakuFx3+yAm8tlJDeeSaDv/ZZ5cZ8Yy27JlcmRwcYu7hvxfTDc3oQy9tdsDdNigs9mhe9NCzVfmRO27x/tYNWKjbZ6aGNPi/0U+fUngv9lNlQSR+TBSPkGFIFh+lw5xcqdhaiTs3RqmZOOKLQN2c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/porP6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/porP6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25C8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751864993;
	bh=4nLo4HdXeDAtySvR9BZZNGsyp2IEii8Sthup7s1X+sw=;
	h=To:Subject:From:Date:From;
	b=B/porP6LcbEVRD5J6OMCESygWlACE6XjElCMTC0oTuSIR/a+7O+EfojOOilKmtCtp
	 WwJUutc+40gZFDTwXs45bbdGEJCO9fFT0tj8MNRQlqYVufdQT7Je9mTqaYntU9dwHp
	 lGl1vdFp93I5M/P3u4tB2N3puW23FCYN2bvR9tuPykpg9xqmBE5i9j7Ivp6Rhz5TYJ
	 RWsRn0Rzo8IFKFHiphBbAelNQxzyJzPToOv7imconiFiu5CfIDASng9R5eda9fNPHU
	 Bo6JA6EEQ9eaFfCuv46JOkZKMI6R2zwHA43vgmkbI4Xjjr5Tr/H4mDNWIBGrVnm1yM
	 unoo+ZqI5mVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91716C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186499357.23266.269776963729152986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca94399e3529168e4925bfcb413644dea4e36a0b182a1e4c873d6186eae4f06
Date: Mon, 07 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751864993
