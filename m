Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9A835F60F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777631853; cv=none; b=QTqCpu4ga/IynVHxPtsymw2FovebEpPq5E1GRnfxX8wphg0dIhQmC+r2lnAiJnissLbuEQ97p/G9XJkurc4L4E4Wy80l0H+a9joj8Zq6215ihMlj+PHZ0tZ2YBBIfohqXqtZrA3dgFy7glSERAPs+IIZMKW3RMn54J8VPFucCh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777631853; c=relaxed/simple;
	bh=WXMtCM6Kz/lS7DAf9C3W1xkxQT7HRoVyWVjlJ52v/ug=;
	h=To:Subject:From:Message-Id:Date; b=KCNJE/ugF/6weHJ2WSNE01OGJwt2zBaPSPrVbMWzpxLtcE8B0Zr4NKpW/e1i8FjDeLK210nuJ0CMGjp/azvj4KvlXKZ4P6AkX1PdUwl5zULh0PeGg/zO1qb5i1WQAmQpiekZDNn/nWSTqn2OWkp1s/aoACfSeEtpYnAw1RDx1ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BounN6TH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BounN6TH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01B5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777631853;
	bh=WXMtCM6Kz/lS7DAf9C3W1xkxQT7HRoVyWVjlJ52v/ug=;
	h=To:Subject:From:Date:From;
	b=BounN6THHen5zTltQ+8/ngilPyjVS8eWG+4gePW58hjb/k4oDLcQ1sP5ToeXKX1mw
	 2Bze46H+h+4uC9OZW8xOhwugyy5WyV5z24RS1LmlLuCyj/CWKv8ifRD51KHx+uNiIi
	 osssjhOEhQJjjKDGpHXnkAH34BS6p7hTcS2WkhreZCeg8MQgcFbYWlFgTRyEAWeM2J
	 ad0O7PqPRN/2Cv0RLwX2XLMKX+q4CbWBv+hT8+nGRaqYHmsvS0nuh4HZdYBoMRvoZq
	 s/NmCmx/gblbRZI4EuFHm6HBOeiSYTqlI16WZNNwtt2iWUe1M2gSPlnhoN0pjyt/0M
	 XineLMhyXtbfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF08CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763185368.2077.3434528356052222690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389309fe0a3e619103cd793b378bb0163f88a04ef7038ac0fdcb27b43563f2d1
Date: Fri, 01 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777631853
