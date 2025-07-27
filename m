Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87E21DB13A
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753645193; cv=none; b=qCQ31/VZsRzPY4r6Jqs/jYCuoeMyy1KBflO3mBLhMzc96J5gmW/lA4oi49ShbsPTqQ7OHagotmKMVx0Nhjwevs5c6GzloyuLX1Eu6keuhCV5ZyV2r7zfLOoBqH5+MazbaMZr73OVXInngy8xmOcw8x8d8I9X4nGXcapbMR1Egyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753645193; c=relaxed/simple;
	bh=HtMiV7GR0Sj0tAPEDqPXaDTk4VflHy3trMxYUqCat3w=;
	h=To:Subject:From:Message-Id:Date; b=OPnfnMdoben8cA44ELry/Ow+4vERYg3+kJAnE0IEZBc17kyKr2d1Wnss3ILLn6WNvPwz+qj1x56vQRmkC4avIpyl6BTE5NwaK4uhVXxQ1gbz/c1RznyG3AmN6Z/lovn8V9ojIYJofD5e46EZVVozfkQbvA43589y40uH8mm3T4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFfsdTvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFfsdTvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753645193;
	bh=HtMiV7GR0Sj0tAPEDqPXaDTk4VflHy3trMxYUqCat3w=;
	h=To:Subject:From:Date:From;
	b=KFfsdTvr2Pz66j9FniPJUdo2WiD/WKrFTAbZH/NMb9OyXMQgm6HGcv6ksbf2jY7cs
	 EnfNX5d3zkQ7xVV3bLpEVp/ue7PfXDj1HZ0S30RSsNQbAh2D9l4DoTr3+R79wS1bMr
	 OgZlrpQ6xAgHAqxd1XR3CM8Xa7gR/eO5JC16cfSvpuVnuWk1Yqnjvm9De/DWOglXfH
	 8HZVWYm29+js1QpmuLj8uRhi6yvZjJpqYA7dzcKqAUWl3QT2uMXbcyoNCUyAIoru/y
	 pECfwRMz+8ItowXoY7rw1JzYROggvRsmHq0Me1D2hSMV5gTOfpQ0avFDcRF5XHGqou
	 oJ1Ai3be92m3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C8C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364519357.9527.3550680072398102314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15721327768c29e3de3be738f6b8375dd30c88fb86a37407f251405edaadc599
Date: Sun, 27 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753645193
