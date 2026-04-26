Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E90A13AF2
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777187854; cv=none; b=K65CQTxsOEMU89l9SbgH0Jz5YbVP9uH3mNTABPpHKtho7o1IdEnAtUsWxf8X59oTyDaSKspCEZB2d3d5htx1ygepPx8XSgUh9Tzlwe4YwBLod7f/AJ5TOd8lcExhnsoFj0FIh0NUqeV9M6WJr1dAbsgQWx8gJ3OXhowb7I3h6FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777187854; c=relaxed/simple;
	bh=yo1RJXxlDZyn8ZXSEudemYQ8FeU2quwpnSpv2uPod90=;
	h=To:Subject:From:Message-Id:Date; b=sFsYUBPlmz3UwTIsu3NFAV5bKcWq6c17RHLkH0qsUsmI0tIqOnFlFKcuwDaLUKibDzjcVp8Da/z5xA10B6dV52xAnepjSxsTn3HC8sRbRymNR7L4cn+EAoEjgKixvOdCYv+jT9TY5yOpKDWoDseQ0ukPdYxjWgoVRcU7NUA8dFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMXQlyYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMXQlyYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD09AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777187853;
	bh=yo1RJXxlDZyn8ZXSEudemYQ8FeU2quwpnSpv2uPod90=;
	h=To:Subject:From:Date:From;
	b=ZMXQlyYF2x9N/GgdFrXsisyawIvSOumpXumv7FJk/RIXslecwAQZXVGeyZGCP12Am
	 aT9s9K5KRcFDyq2Jvr1IqHjPkVW4EI1XkYlQ4ljvGKK7d54ixVGrlv1ezbCIuGLZqo
	 eLiKFCoPOmU3mb/pK+EupLTcJm7fkVq7DQhurnFXile6u9fmAKRiqjb4PvrLz9bOXN
	 6QTsPfW44ztc+9wqeumJ9UwaKUXGTIE8ls59y2rHUUTswiFtFFB5s1Cp7MEHfs55rv
	 MwadOba/gXzgkt349wwxU1Md7OabGzp2D/4xI6WT47nxeMRDzSzYzv1BGFEj6gjQPB
	 0PomkqXcPS5mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA009FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718785368.2553.10519709007029670163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df872c61cf63d62075004e23450038ed0a07ac76c149acf5ec86cfb05b11920d
Date: Sun, 26 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777187853
