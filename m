Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C09442F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736049954; cv=none; b=Sz6sVrML+JkG89mC2hsvCMG2gd4zzAob/m2v7aS2FhbkQj52Wgz8C3FPgnjTM4/DocTofHyvmw9sZe/4zMejoaFg+JY/xdw2H91NkB4SZv4zZ4uOjhzsgAp3W5sjt0yCyHrFJ+Tjjho/b78N3/GAqEiCvJN7RvzAfm30qO8gjlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736049954; c=relaxed/simple;
	bh=bVNv9Pu9ok+tM5ymy+ag/BNXE9kx4+yrM87XBS7a6Zw=;
	h=To:Subject:From:Message-Id:Date; b=KhZacnarLkG1ZXBtnFYw/LXIMuFetc19cs9cOHGEySMYRR0EciG8ebIrSjBh6SBYzjAzL9XFNm0FhAubzOcm6RXJ/OHgcGT19d43y9gXbfxePh3kaWghkZ7v3j0cIu948/N08SvefUxD2jR7IBAkOMWzW/x/Bbh5PiYB0z35jRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2up4294; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2up4294"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3C9C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736049953;
	bh=bVNv9Pu9ok+tM5ymy+ag/BNXE9kx4+yrM87XBS7a6Zw=;
	h=To:Subject:From:Date:From;
	b=l2up4294K5/tOtMyYL2tJ1VwGJqPbn7LiL7og2BTqHEYNVT+6x0J/r04+rNI3sUxv
	 7iybD3A2a/9tzDy3lI8Kq+2dEe2Z4gmiBT0o9COLj45L0HXys7lGcL3u65AXPMbtBa
	 zZihlOMzjAUuyY4XlG86Y9wM51G7xXlGZZEuRK474vdI/n2eq9Bce8Y2E1KuIRNEJA
	 gwtem2PzgzzB8G64nkXJRhcoiYSRZtlny4P9SvcWAiN5w9toKZQA5nvWYUqDeuELHb
	 0kGzD++57nxfnCXb4aDq1Rbman9FY5NZyXyU6b/BCDmxY1qjt4OmpA3mc+/DS+avR9
	 phYJ1lAcVVdaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D39DE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604995361.22349.8373348048707631867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6caaeb787e0071c256be517a42cea4289544f804142282fdf9a7e03862831b
Date: Sun, 05 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736049953
