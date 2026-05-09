Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B27270575
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778315254; cv=none; b=ikz8JP94gojDFFUlcyeUdh2X/X2D5PxSEr93NZUTOA3a2vkuB1UH4pzcgvcXUKwwwpv0lB18kJ5G6ZA437ycQ1XsCE8Qj2NEhxwkJ3WtGF0sPnnyObbR4OPp2dF7vUC98SnsDphwH1r8z2xwSWvH/ssxapj5NXWZ+h/J7w3+VHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778315254; c=relaxed/simple;
	bh=HBDWHISwiElvlmVbFsg/63kXTZtpnwQ1eJ4lgU7TAXY=;
	h=To:Subject:From:Message-Id:Date; b=sOf0TSGUeH4IKrxjjNl71q6qlGvwPR3iHFtSpc9HTtYZF+6YYe3hukt77YXJhiMyGp+HgXiTudp+nStwJLH98wzDDx4qcRyzL1hx+FBq3djphL8WYllIOoDzpxjxOe0AMaU4TTHLGtxv8MLeu09+k1fjazWMqJQGJIx/7DvuNfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ed2VlKai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ed2VlKai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B002C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778315254;
	bh=HBDWHISwiElvlmVbFsg/63kXTZtpnwQ1eJ4lgU7TAXY=;
	h=To:Subject:From:Date:From;
	b=Ed2VlKaialTFtJwXGtvoj0JVxTmcqkIc2l9pk+aWkTxt8Lc0TuxuaZ8infOVdekfi
	 XQLZTMjKrhKbCdHG6YQuTv2x0iWZVHFRMa29cFMxRgMiQXOZcZ1EFujMa36CylE/RE
	 d4OWY7ojqXjaqcz0mskhFQNBk+vrSOiLQIcdSpJy+ZAV/9U3HtxygeA2nxLV+qn1P2
	 h90JkV3Li9OO74BVsjj1c6WlPk1Xg5XQfFWM2sD+KYY9L4sXHY35R9+bq483c9P1Y/
	 4OalG/Dn4np8nNd7taiFwju/n7MD0vcbFX2+2ijuVpX1z8RYgFySs9n+qB/vAFyUa5
	 wgV20yy5IJvqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05D6CCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831525393.5168.2922446837241365153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5f6066ca8381bd572228a17610ad0b40c28222c224d0eb9a2d86490c78a8b3
Date: Sat, 09 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778315253
