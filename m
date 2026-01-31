Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1752556E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769864034; cv=none; b=KZpIwktj76+H60NPnY8wnzRZx2940G12upjaOYwstkKnGJ8v5Pi4qdzMTiATRoXpYcglDn7mTuAifU/XAxtkYnw1FTwiTkx1US5wkTVWT+zurtbONIGcaYpCGtj5pSM1o3M59lX2cq7UWW3TnckPlJzCUlU0Ocbdh+6YphJHMiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769864034; c=relaxed/simple;
	bh=DSt4+qYdIWt3WoPbm+e4CT4OGFfbNNCeJirBRRBhfHk=;
	h=To:Subject:From:Message-Id:Date; b=Ht4+a9oOvDqSp4RgHdxgmTAtkk/Lj0MGcJzMS7lUrU02OAgE29Dzk8QnLE+uJf0ufBRE6j3ER2HiWF/d2Ur4a3nfHbpYy1Ht0E9k08i0KUMw4lq9eYD6ZDsM5BJZEodCnjTLByJQ5NwNLJBKODn895+WmFED2HxaIMl+TyzSheg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SECt7l96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SECt7l96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF5AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769864033;
	bh=DSt4+qYdIWt3WoPbm+e4CT4OGFfbNNCeJirBRRBhfHk=;
	h=To:Subject:From:Date:From;
	b=SECt7l96KxlaSqM5R7igGpQmWM4uUmJBc1t+wkJfESp2sSH+Q9xPQbKF8GxFWDAg8
	 rFbDgmDvepm0XYXhdsper50s5SoJx5Rn5Y1Plb4jmMfKmpKwwTm/Go262uzFmecq07
	 2RtF3+/Izn+xb2Ny9cuGzhddU2iauoF8jgCa7Nqah+xZMnXMro/0PbADEeFerRtmR9
	 mijcl66bwNkWJ2vey03Jkdat+NdvNacF9tjYXQmVDHwEvgRS3TT5IxxQnnzGcJlwTR
	 VTnH064eHfTRi1GwvQWpIAWyy6eQKBH/H4EGwYoFX96qQurf4gISJS7sakU4VTKCZD
	 ZYLX0KRSa+eog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED0D79768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176986403357.23665.2497933449663962485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3550f1b3ae23d55f1edb46c0a49b9eae88d93ce618457f7867adc20d1a08d8ef
Date: Sat, 31 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769864033
