Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7B27453
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751771995; cv=none; b=j+JtyLgXDelOb2qSVcsvVWCwYeAMqOmk0gmHvfxVkYuDczZnbInJ1ln38Au6P4rltw65FTg5X4hGhNgZumZCvaLIto7ymuUzDA+8FgyufddmemGb2BNdM5Eg1d3BD0saVV1IJJSJslvMlfTE2Cdin3288XzkIXuLmIMIPm6K8j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751771995; c=relaxed/simple;
	bh=Cm4CfJXZWkNP2WXV/YmLoSFj1CcMPWKxt+EyXeJBZbQ=;
	h=To:Subject:From:Message-Id:Date; b=ITK6xEDJt/c3+clyCMlX2b951dMIlmf01J8QXHzwimxlV13oCQPVmasq9VHzMxOc44c9S89RXf6o8SuQ1NnAk2JfFtvHggOKXEccmAFrCu/oToSILOnuiAzl1j+c1pL2cHWr5eQWdd7Ozv/VBv9oAPBeBOQmOSd44Hh+pTIdfWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsPtWY4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsPtWY4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A320FC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751771993;
	bh=Cm4CfJXZWkNP2WXV/YmLoSFj1CcMPWKxt+EyXeJBZbQ=;
	h=To:Subject:From:Date:From;
	b=RsPtWY4U8ilpTnB+wr/hPe62MR/6lQg3xLofliW87g2FxItLlA1zz6baZfRFlqsKs
	 jno/4F+3xhxvyRA+EuCnQxuY3rIB8xbhGE+Rbr9/X6UL6VCOeOimhBmKXlIV4w3JAp
	 e+jwyjVqevPzX4J2n+rmZPmxSAcewjUTVJbY/goR4vb80bdD/lrteIBnmbKdjdZY9b
	 NFrmhUI4movK5z96fDWn0poCEiV0IZlkoxOfLocuSufAQ9it0aJhmljqnE3vs8Num6
	 u1tT4HNYkuBilI9k5FXf/TJqfRFVkcr2InBBloZ1Jo7m40nsNETD6muPm24yHI7nuS
	 I365DQm658rOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9107FC8303C
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177199357.17708.15322470679158776441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd056b0a888415e234e4e5ba9244ab7b0f96a313cf44de7be303280106af8e7d
Date: Sun, 06 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751771993
