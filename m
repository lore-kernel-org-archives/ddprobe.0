Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6CD30C63A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776984454; cv=none; b=VyD5jP133VtSVEAdE9PeGx7thBOciGVHktjGHDHQQAbT7WeqhxLGWdmX3e321dAkNN2ctbK7moCHiVWg+yJnwJ5Z6mumqSCowNZ1+x9As9Dd5uVKf40baiFlY7JWAjX1iutoA1vA0GM/1XrcKh4nkOhMnJXdKXp3bbk6Ol5Osk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776984454; c=relaxed/simple;
	bh=mxNOus/+ET9qn5H6tl6YwvIvsU+tMjlm4uVNCgulsXQ=;
	h=To:Subject:From:Message-Id:Date; b=saZVgddJWR9Y3xU4m93Nlms06zMyDed5BKFyrNKJfQ5SX6U80vijiVkiPmuybV3weCPYU0TeqW4pL5pF+CFVJK7e9/c+lUMCSvfLZawQS1R39f/o1dDEllRp6LA3V3Axlh2XdL0YhqYFTxVpSWmp7kdIA4KN1i1SbU4JXn92sHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7Zjug31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7Zjug31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F31C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776984453;
	bh=mxNOus/+ET9qn5H6tl6YwvIvsU+tMjlm4uVNCgulsXQ=;
	h=To:Subject:From:Date:From;
	b=o7Zjug31esAQzggq+Dtk0hfbiLS8cTB2nWMQmMjsOsZl09wKIILNbqAQlIIRIcbcH
	 nzyTD5OYK8TuP/ma5a+h5eS5UngCwAeku5XJBu+TGjdeGDvYFZNhKYc8SeZXmD2grI
	 AR2+lqls5QPh+rYyHozb1uv5I2MtKQWFwDS/MRDg61WWmWQaxuf9HIyvZca+FNG5Ma
	 4311A/nMVU5GCRCR465UPyfhohFB9qK8tn9FjLch3+evMAJs9/HbNb8jOiHzXPi82k
	 iKlgFuUo3F04yNAJfIL32EUHpNQF4Gbn2FFb+eeFExH7OH5B7dd9WM4W8R+7gSh+Ry
	 Akq1Ui6Wrf2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A0EFDEE28
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698445368.31908.10844585931997546269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd14700f7b0b4dcb38aae4986d4d9529489d894b03999ffb4e90586701355257
Date: Thu, 23 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776984453
