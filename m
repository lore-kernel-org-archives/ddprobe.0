Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C17C3C06
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781496394; cv=none; b=iopfrq09zYK2SRfvkgJDPYpuDr+iSJVWwpbWiSCWYSCvgP5xHVHn+JYFDOqdwtiiw64vA+UnGS+YbPwfEhzYegJENIXAM+XcG3M6OY/+oeyOenrIt8oA/xdZAad1pW7zp/hWYwNU8UG9WIxPVfL4kxOhfeId6HnubxPuIrb2wjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781496394; c=relaxed/simple;
	bh=3U5gNoTYaLLZzuFkDI5Dl4FoH6wRA1F//gATXgEoIlw=;
	h=To:Subject:From:Message-Id:Date; b=NZsiCdtiTebgMLjFitynWZ53KbVl29x37QYPCtog1hEPSSM4g5M0m1dV6vAG0jK7UXquAa3ESRlKfYJ2lr+DUasNZyt7Wq+4zthxmQGL8ZiNZvUX3lg4jNTwJH9wGeeiZ2Pk7zxh1EK88LmIhTVGj9VRlTDdmCzzY0D1JbvPiIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7QHGYTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7QHGYTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3853C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781496393;
	bh=3U5gNoTYaLLZzuFkDI5Dl4FoH6wRA1F//gATXgEoIlw=;
	h=To:Subject:From:Date:From;
	b=Q7QHGYTAOq7VOpBhPnwF4PdMDZ7tJH2eXUvBK+D8+0xzZjTEbD0zoB6LWA/nmvWMX
	 S17SWZaLugRqjdp6qgvE4VmgyQhtN89OEDdWK78P+LduyrLbbvt5U9psa9R5dQKQG8
	 Vh9wrU5Eg1z7NpjXApH8MiW0vsh1kpht1vEdg4RWFztTey8DaPPKbDa4I3SIh+BAQZ
	 DoFNPcxv8M8z2sxzixBTISTte35EYX41M+AwBbe6iTWzfJVQKFXCSmmsFWimlI5IXZ
	 izDa+t2HdCzy+Vx5kk7u3Ql1edsD/6M/LNSBBKfi5UB1rtPYsxDtow4r98/hVcu+j/
	 MpRcOuRMdhheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C7BCD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149639368.17683.543608843183783852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dcf03554ebc113a77d6527f51ef4ebb124de3cbccc20f0d070d12218bd4ad8
Date: Mon, 15 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781496393
