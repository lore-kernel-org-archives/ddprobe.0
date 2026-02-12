Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDFD1E487
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770923094; cv=none; b=HduG/lIAG5IqUkVRsq2cCOnkid/COZzypVbvsLDrPJVtLqKd9Os3gWGAtMzQCeOUGf67rGy2awR2xurGnpor8oRgIyRuMxcRa1lDUDFYg27leDYRCbWTGRF/wiB5Y3WPES2iheWxpAxHgxXt99zOR98xPWLCcEB1dhbCO0ReOLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770923094; c=relaxed/simple;
	bh=OjL0/3551JMA+h3cKyHU0y1J1PYBgVbxj2bm6Aevjus=;
	h=To:Subject:From:Message-Id:Date; b=bCf3OiSCeKp/2evKYRX2q3Y3MVa/lOxFh6CA7qTPx/4IvqCzX8Ppnu2j23c+0Rp856YPEapWmLf5XlxEJY4tcPK0OVTL3qCQfHCTryFDpTpY0PbNQR/2jDyXWMDUjfZlG+ZkkP1NnmU21gXWpziPqxwavzpGwv+CFVUtNEi83pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv+9ro00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv+9ro00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E96C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770923093;
	bh=OjL0/3551JMA+h3cKyHU0y1J1PYBgVbxj2bm6Aevjus=;
	h=To:Subject:From:Date:From;
	b=Vv+9ro00Rzi/I892+P4JycwNA8qsO4UHBb2PMUc3AbRUgTdAhSUQPi16Ix+/y3rHl
	 Lx0DcThUh6XyQSjynzD44oSM5gpcIy5q2c3EOAb2D7rAP0Zp+qeAQdDvUmziFZSDDw
	 c8pjgT9ifBAGKnU6Iw5NH/kY5BksgoUEWwVC8GKv6VIzQ6vsCOURjUyQR/05bcLh1y
	 jwci/ZmN06DBAWW2D3HbHqCX8mlLXn8XSoEhv10D8SUNGAyCxJSnso1CgQyx6ZeJKt
	 55EnhWmcqdjXqHrTu1CBEGAfK/AGZiOQPAsatNRIRnmWJ2HiE8tlRUosFXxqB3b/lN
	 LePgkcj4b3trA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2606EEA84B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092309364.15213.6949537254907273366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e70b2fc2cc0d672843067385ad0a086cec16d240e77d2a7f5bb9ba601644804a
Date: Thu, 12 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770923093
