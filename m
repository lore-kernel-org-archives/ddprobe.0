Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04391FC0F0
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745687393; cv=none; b=F1Z4f3UJWJiQlD8tuhd7uXt0ITA97A25rLCcFFcdd/+S6/7unyPwM7iU0MBU7kT+FtDAHMf6zJXE5d1zD5xPYS7hpwW2lCOWT9Nh1LUOiC5m8gfKhQDWUp7uBR20eVKLm4rpBb3GMTg9qQPd0mdGR2oWNFIzFVgsgjxKbdRRdPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745687393; c=relaxed/simple;
	bh=e0s4z+0pp7JgVQHYdvV51nYILy6Byjtw2FcBx0wGfnM=;
	h=To:Subject:From:Message-Id:Date; b=Kw1M3JlGsEM2TndGpKWxGyljnej+mcQVbrVSIXLU7oI9WSFm+BXkrC5sMRtP6mraKF9IdV5hZHGbbXkSOu1I5tOLgKZPM1GPf1fMghWUfJmGODF2HIGrNYhIKXMw9ltPBi9ijw2reu2QxNhxyT1D5b4Wu3PXmQ2PRod9PD8ovvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVR1QMo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVR1QMo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E511C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745687393;
	bh=e0s4z+0pp7JgVQHYdvV51nYILy6Byjtw2FcBx0wGfnM=;
	h=To:Subject:From:Date:From;
	b=hVR1QMo+87rX7aiDznO9VhdzghiXzDyr0jkAM6XSiPH4rw9ZZGv9wjwI8f2egHEde
	 kssEHS9I+7fVwQSRV2RHIq0io3EBiZq4JZbuWB0z87DPGFycIb+aSlvt54OHdlRTB3
	 oPQPWznWFbglcskjSylPnkUBBWek0WCMiPd+sGqv6FVxpCRlG5zKM4Tn25oBRK9rVF
	 As6pb/JDysT8X5/aQPPnl0cTbiywh4CUUNnNItbVLzJzOyzILeFlH1QSOcPZgky1/D
	 pDnfGYb8lvvPLAtYKiIcSXzkmORbifIb3xPwPBNudSmi7LJD7uDNQS4CKu9JzMxn/w
	 0iFEP0l5gfZHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55BC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568739357.23294.13712247149141855027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c777a2c60ca70ab29970d91e7dacfba19144fcaba8080ce882efd3f3ea9703
Date: Sat, 26 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745687393
