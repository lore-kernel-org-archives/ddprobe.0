Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0087A38E5ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772012094; cv=none; b=SCPs9o5PvXkKzO3ZddE8e3T4jl0D9ZxMk5TW2iFG1WOLRzzX6wWkWqrnjlb/my16jlMZ0hTccgBAvilcKgyVXcejDnJ+UQOpn8N7bi/w/2jNxGQz86xUQvshyKax7MR4CZDM86n2m0V+W9ybpwuzxJ96Kxh7ThjRO+Qr95L+Jls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772012094; c=relaxed/simple;
	bh=GBnMtYu/raCIvO2DwkfIGL9PpuRk4e0StMSeJlleRYk=;
	h=To:Subject:From:Message-Id:Date; b=XsrXUASmJoylDFXdW4/z0nTCq7s3xCeZo/ZA5T72l8YAFs+0wd3tZxkSBC9QgHgidRXo0IX50OvVpIPc2v9bqvLlDvR1WJSmL1sTCdKDJV23Mydjg57BeZtHFOdEKuCjg5zMTTDvMSIbxFIHarKrGFuqVq5+nxAd8loRH0bztvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUiRuRXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUiRuRXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F77BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772012093;
	bh=GBnMtYu/raCIvO2DwkfIGL9PpuRk4e0StMSeJlleRYk=;
	h=To:Subject:From:Date:From;
	b=fUiRuRXPgOWvShLRv+WeUNBTk3tkeyNYeuvsvZ4q+LruWEUOtbx47a7ZueqGoK7Nd
	 mug5x5c3DNnDAyOb+UwPj2GIYudinM+TMEUqeygfu32ISVF5UIxsApfniqldxe7/sX
	 pGmh2Yog+WvexvF7YpLp6iLUZNAfQhVvQwyCSL3Oe4/hZONjnRq4kwoHwyMwQVHyAa
	 FRyew4RpRi0fGT1C2Kq1Oe3Qp82p1HXbWH6OZXtVtVcWfp9+K+XxOCyyG3WgffNCr8
	 YCu2HYtkmcyl1RIYCQWBVyusRmgMz5CLXKvOZ9mn3RkTrAEsWrzkWfCZt6+dSRZoUb
	 L3fbk9yQcCYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE59EFD216
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201209358.19361.1741441896615334415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b882cfef6379e19f7387a23a4fd1b16344569ff06e84c511bd40802632eef3
Date: Wed, 25 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772012093
