Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A9A2459EC
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745743195; cv=none; b=fHGDPJIpj+TqNiDRItZ1I5Iz0ZbfOt+uS4rTjzVdGXBJkYDJIQKxJWgW3dKXEwmQAIuHpT+H9ieun/mWKZ8iau8O+F36jK6hS/08QAAIae5balNeeSlvTxxS4LBzUpAYHdVdJMF+cL4ZydJr8HWEauvwRuhmBFkh8zhTFA++qjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745743195; c=relaxed/simple;
	bh=HRA4nzbc0mLpH/C+M/LH0Z5V1739JoEAT1TOFXFxVW0=;
	h=To:Subject:From:Message-Id:Date; b=nTQKyAEVKPNk5r5p/gJ3lTZiOJodGDyKsXW24Atu+NCHXX6/mhNP2BFzUFCiJFRhWqKQUFDrViTpymJolE3xXmuMM+kInbHZcuenj/2e/K93N6JPk4UmP047dPOfuK9cC4q61CXVK0nJIg2lC7GIn65u9E91iwpZo/j5ojnUL84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ol3z7juo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ol3z7juo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00CEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745743193;
	bh=HRA4nzbc0mLpH/C+M/LH0Z5V1739JoEAT1TOFXFxVW0=;
	h=To:Subject:From:Date:From;
	b=ol3z7juoZK4kejkIaaSfuJfP4HT8PSIkXu3gW08/HAlJslLz66LP7e2dS4VaDT+8x
	 k+kEXj16+QIa3km7zsu2GRyi4htwIsexrJtByJVwqOMNFgH075UNFBEN4lc204y9Oj
	 JI9qDYVWStYJzTlM+Aj7jrFYXddRpk1xOcT+UuQYInqEXrIAmHukvxxaQOF4CxmHdk
	 CxbwRAu4evkoQ/4TJIA2WDlM2y0UDaC7w32b7DoXwdNSWNuKd4EtpFljqPjsCgzPyN
	 7mmZhAP2l2KjdXZ4/iQog/Lc1Ut7uSOGycDQO+RMoaODOmV3ZXoYG7P1FTZEoob5ZR
	 NzQGmUe6HsUvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CFC369D8
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574319357.27339.15176202965994002414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d51abcafc2005ca7892d4c01b2c1321244a9c8184465cddb85e5cd39a7c047f1
Date: Sun, 27 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745743193
