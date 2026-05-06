Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4013CCFD2
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778053054; cv=none; b=XUGUniWOSDdwO5M8gNJWUi97f4VHCIeJdGYwnvRHreQ7FKZzQlgLRhFdAcGZQolLMKB0MO9Hn0ry7FPd66utpkaJ00B+U5535K3aPnMasdy+rwUpx7fUran6EHWxF0Qdiic5kIHnnTB2rDU1IGfEooKoyTBSwSDAIo8ddKjnyb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778053054; c=relaxed/simple;
	bh=gS4BkaBayJlOj7uovsoKfidT4PnZ4f1ykVSvvah35iY=;
	h=To:Subject:From:Message-Id:Date; b=SFkLNBqtZ1ga++0rduPYWqWxvDK0NxHAjdFWLXvCd52si2m5Ssru6hWUtOSHuBndKP8COCvIko+Ou6aoFWpCel/e9eI56swHJq+77gVKcMYk5pxePrFO6XlcAQMrIcEEBVXlyxo02vqnRqf5KumU0BmRgqnK2s1cpQWhZZpMpK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvcQBjK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvcQBjK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7193C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778053053;
	bh=gS4BkaBayJlOj7uovsoKfidT4PnZ4f1ykVSvvah35iY=;
	h=To:Subject:From:Date:From;
	b=UvcQBjK082uiI0EvijrPcBcQ9hv8AKxXSMsPsk++sSExL2cut5gjjVt0FI/P5WIWo
	 E1daXDmmEbKt7rmFEfWcZQ3D3eBRLfQrsFZhrCn56//0SlO3twKQfeXCJkMRA76cTU
	 XrnRZ/wwAFd/h7BKWduKjUPFHFbi6ibMD4CkqOQnu4M4TLZREUEX0UbktmDRaLSRHp
	 QHekSkg5f1FdHjzVf4cPT4Snhjzcr9al+Qg3R+c8GeVwCEXfjI3hvV6294h6uCEBLT
	 cl0bOxHcoh02hoOs6z2LoSkO06DVMMPSPgUYL0qul+V8DfrHQYfoT5OnOD+Dhjz3PW
	 p6Q9PlFxJjeZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CE4CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805305369.23432.3112275132255917381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20e291b2c0be7ab42b1b780bec1ef06d41e879daab8cc5edfbd539f15dbe7d8
Date: Wed, 06 May 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778053053
