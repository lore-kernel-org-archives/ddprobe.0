Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44599356771
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783063714; cv=none; b=SHvxM/jwOtvS46kYBUvsb7CuphX7QWGALjcxcHdI0MWWtSjt/KteFyOaPkU26rdgj6he91twspzb2Zu4zjQfyvgpNPga8+MpQf4BCI0IGZOvt/F1fNBGPx4aTrRXNuduuoXd5oXrr9f1D08P8Ef1DP3CuWo/gmWE8ZOyYK5V+0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783063714; c=relaxed/simple;
	bh=BdC/e0uL71l9gtJI6yu0NNpjXDFXJQXLUgFsAg8n4rA=;
	h=To:Subject:From:Message-Id:Date; b=DZbem47k5I5xEjesyyy0TcJxDAD4JpBf+sRmk9f4wQok5aFzFyPlvr53ut0vOSZrAY0qDvhnXlXacZufISW4xySZiPFvz1grYVtiD4u0ZipGSlSvvjn6IjhoCuBcWALubxiEFNMhETDC5uaHCFwgaRbLZDLo/zUkYEVtq+fXnG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5NbAMer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5NbAMer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC95EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783063713;
	bh=BdC/e0uL71l9gtJI6yu0NNpjXDFXJQXLUgFsAg8n4rA=;
	h=To:Subject:From:Date:From;
	b=p5NbAMerQtkUWaQglUX53Jlfi4Kds4PfsUsSLByBKhW+4CZPXHgTvbtiAgx2yd6ru
	 uyaL+oHIT2MKX6xujzkpKxUthSoeZVXuOcn03rnho4GUV6iUfoTltURmbIlFGsyHwM
	 Yx5bC5oiEx4mD/wDRtKfRSqKz6N7W5J5WY70uyWa5Jx/Kwt0dlB/LPVhzkPnbO1mOl
	 bWbvRTrTc5KGzzeR1334r3uLFLdOBdCdVJOwj66KLrODD8iExV7LuL2racXAB+5Ufa
	 Fv9llaAiKi6GgzlUquMwjyQFUfqcrMT6VB1f0P922Kb35vGar4RE8S3wAvp4ar3Zfj
	 7pdP8Ak4kuOIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA9BC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306371368.7667.15605450957136069692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a238d19c4c0343f44a13088d4140fe875604538e9622fa5edf8bd8ededa157
Date: Fri, 03 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783063713
