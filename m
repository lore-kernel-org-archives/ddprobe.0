Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0636F2F2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764462774; cv=none; b=i5bpw9s+UX8CLUkjs7O1BtgxFZRGt/Qbhw3AJ+IxB147+pRHNFcewxqP+dJcRC/0kWSMWK9q2qUtJy9Y5BQ6BjXsw0DQbIsFNvzQraJ9FM2Oixu5d0uyhD9aQ5vCmIDl+0BI/HS3QFgeiTkBoNYIFKnDX2SD/cvDGhuEfh43mfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764462774; c=relaxed/simple;
	bh=mCitMGk1V1eExVtGfGuNvF7USp5y5TShgcwv8WX/5Ds=;
	h=To:Subject:From:Message-Id:Date; b=D9+dEJSPrnP7al+zWsd0vyhHE0uqUIUIlfxzyIMbHWtGu0VPu88qhujJuCoWnGEtJouo2pxJqoFoH9NMMkpX84AMfUvdMSRGfXCw3imYez3WNKutohebthiQtAh21ba/uOGlkaEqlduSueTFOfYIPSsXpLndzQIKXEqcy3Y7bAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJN4YYlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJN4YYlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CCFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764462773;
	bh=mCitMGk1V1eExVtGfGuNvF7USp5y5TShgcwv8WX/5Ds=;
	h=To:Subject:From:Date:From;
	b=KJN4YYlIDSKaxxA2ua2fVL2Q+YGaMpsfZ33/0+uQ5FwkolOPSo4jPXsMMokYesOyd
	 q64xMTsv0Zm0yoHX6kKNckrVFE9sA4gTEMdyJw+GloU3q8kVd4sclqgdog/1EhHaNh
	 Wp55lSZxiyXKXucDk56WGfZjMkcsyYts2HkLY/ATO04xXGXFwoiG4kPaKfnlwp0kaq
	 Y5cytFf1h9ZoCGBcPyidRDnj8jQ43+1tRa80V89euw00NZxojjx1NVQrbftIevX7ZJ
	 XSf9X8RDRrmAtmLxtfPoDaPBSKDN9UP4jIpzevtqxtbHzDPx2lv5Mr+mVpPHZR4Y36
	 eCtsk4uQI6dhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B95D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446277358.32100.18418522593432990795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0320dae4ca2f50e30c53951d16a3b570a200dba1313d0150e67b3f302ccd304
Date: Sun, 30 Nov 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764462773
