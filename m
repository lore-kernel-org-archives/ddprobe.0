Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABDA22157E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765806174; cv=none; b=CU0lBtYYcoqEInAxo26Ak+YXcyE42/AhUzKlWx9XkaRNNyHwClqIfPhwchhMBHSP0k4+tmUrHz5WqvpJ/Mr5+UKZC671KaRZ88UdQxzSe4JgYunsQ5r3kAq0j7RF2sNUGuCxWF97MgHSA0ycEn6b0Y/D7IwcbNRu5ZHJ0Bry+Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765806174; c=relaxed/simple;
	bh=o7qUZcN55hby0RH4+ya2F0SrV4WQGis4hcU23vyQt9c=;
	h=To:Subject:From:Message-Id:Date; b=issT9n4mY9ngGTow0+wPcCQXu8AN/w9TrKgGDAKvhFztQmxxopMDVd85mD9N6NR9gUA8uxswvDSp+RNtsGOTucPLlwhoTmnYjzLucrePAVRCivaF/NSFQu95/75/D9yq7oGaNRI8CH8Nk1F72/ddfG543gTQK/YMRcGs0pll23M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN183sOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN183sOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2380C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765806173;
	bh=o7qUZcN55hby0RH4+ya2F0SrV4WQGis4hcU23vyQt9c=;
	h=To:Subject:From:Date:From;
	b=eN183sOEcpAdooqfg9FwcLd8CRTq4fTfWYM9wVOUdP7scPmxtfYJhYMZ9YG1GPjPu
	 P5tFGAWgwPedThawyDp1Yfee2dUV0Y5ylz2ftdLv51nm+fV1iannou1pYMczINLzVB
	 Uqo5iYvkbQU2r+uDFVJMmvdg2K8wxmpBZoPFSrvZpgc85h10MaBTkTaVUrMcQKyhDe
	 iiJq8caW9Q95UsT6HEZbklXKFidmriLMGMo16mX2SFYZam72+mccBGBRN99Z/qQ+3g
	 c4VCxaEoucRVQEiXkonRIRYHq99+ir5FZay4vaxgnaguy2rmnJa/lTnWAU1ek9Y89E
	 F2cvxZpVdn2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF76D5B16F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580617358.31118.5885708466911808777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b848a072415d47eab986951e44e2760106e17b4863276d9bb2596c17d3a8cab3
Date: Mon, 15 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765806173
