Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278AD35949
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757862595; cv=none; b=Bz/qrZQR2j9PD3O4Q/SAhW63LRHdtgt9PUJWxeU49nPFPVZmd1Rc/VsTgTCAutVJrvfWVhTB1ppdp27skUT+Jc+g7Vo07KPC3UaER0F47B4cm9hGB5CK0KJBVIH/Gab6QKm3DSDReNy/Y3yLn9ko8Ved+aFdo+5Y0GFievqMgEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757862595; c=relaxed/simple;
	bh=T+Dq8fHxLJY3aB0UNVYcav/JuDGvJLIMoYcZ98eyBA0=;
	h=To:Subject:From:Message-Id:Date; b=DUY6e05pwfBECylvC5AX8nL5ymFHU4in9sQrIBOQCmZLKfmYRjrnovzJ1qiGcdgYInvgMxSppMEo72Ba91tZtli2+gwH9k/rfGl5H5jMcLJJOg2h7HWltidtnQf17W6YcqBQ1uNlq+GP6dSebQRig5vZAnsjHfSvUdmqJIqSIXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q31rLHUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q31rLHUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5333C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757862593;
	bh=T+Dq8fHxLJY3aB0UNVYcav/JuDGvJLIMoYcZ98eyBA0=;
	h=To:Subject:From:Date:From;
	b=q31rLHUF1H7Rn7t79Cc4lPiMAVXVFb1yNpSccRlDN6gk/leW0b2xQFwrznBkqR/Qr
	 ZMFXDH8la5PjmIzvkj+vUROMvQTrVbGEjfb26DtmAv8EwsR7RKG2J8DUb+L2SQOSSo
	 2JTSipJ8WI/J3ZNhqi92kF3KepAZAYoBgr0P8Q/FkLzSn/BJiCVcs5Vf1kEw03DMMt
	 QG4nsFJ2mBD7de204UVkVXPfLiOxexlNZbMRr8OKeZyFHbaCGQdRffifILThUK/8o0
	 2JhJXnJIKUtHIXZE0iOSI5L4jtBNEGgS9l13FUNguwvgqa/5q6JewWEZK/SBwnkI3T
	 PLzGWAp/6OpxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F96CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175786259358.15967.8157274919604451852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4066873bf4887533f541bb382d926121936a44e28c848afdd21f64541966967
Date: Sun, 14 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757862593
