Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669C9624
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715994143; cv=none; b=FmWVj3Arr7pdeBMo/dnfRYBhFItTzTuj3el10RAw2A65XJs/euMUn9IhYxl2GctTxb+/qGO9WZuWeX/LC/yQRoqs/dB6qQnfwiMeMksNEQUMDt7Jcc4lHmLJsgN+sEKNMEP7+At2bCOOjiUO4e8ppqXUWEPgiWXQXNBbtW90CBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715994143; c=relaxed/simple;
	bh=26H92f65vAGrtgNHt06pxVkn/q3UGV1hSnannwnveuQ=;
	h=To:Subject:From:Message-Id:Date; b=EtIb2jELfw5NQNamXxi5cujgt2uE62uECR6+qNAv5WgjVXaeGWmZ9mZTMnMVUZ6fS6/WTq2F1UuVXM5xrI7DzHGrw4x9ZMhWx3wUlxKTvMpNMOXab45o2N6C81GmFtDibVv1Mec+LQZSKGSBB8fBE1U+LHmWoIdCmSbg7qZpzOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7whDXTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7whDXTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE1DFC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715994143;
	bh=26H92f65vAGrtgNHt06pxVkn/q3UGV1hSnannwnveuQ=;
	h=To:Subject:From:Date:From;
	b=O7whDXTcdI5pe+ducijZ0UPsofaSV0ix3hUVFCo2k5EiBsi0Z7ZyHI0vyscQXCVEb
	 yr4sOxZyN1XSZ0q3ZMaZOi1GrOBMbbhZsJapAdPdTtJX0Ht3eADoprtlYXlh9M6DvU
	 dBBRnpWnEfPVCPvU6FlPFwrjYQE2l9Os7pEoORqnuhRMYi+KaAIS38AV/P6pPXqr7F
	 o4DeYvX4eGjL5lVs5B8FaHiLuYiBtVsHGnqU1T0R0eeeWRJPO8ma7WNcfT7hdRgC59
	 nGd5/Xc3oYzvhoxlMfS+ypZELbZCEBaX/voB4Ybgv8zrTQG/71gqis6T8WQ6ncpe1R
	 g1aDlmQ2ka80Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7DD4C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171599414283.21621.3621818057545265042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12abdd7da8b1b61fa4beea8a89706c1caa9464e75346bceb1869a721ee7e4c12
Date: Sat, 18 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715994142
