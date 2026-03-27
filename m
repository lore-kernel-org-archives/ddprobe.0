Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F322773DA
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774625693; cv=none; b=O/xBxOtfT0NYNVwAQI7hmzP3wWXY7Q+8pYXLswpQMkaKCG2aN6go31nHiRECBx6UuiX3BjOKuPuZSK3N819SLsfNprQv0hSZgjLrgxyoPnoYztrZqur8A14ZzzaFn3nmYNfppTjioNa885+WlODHBZHATwkrTRCw4XEBUfGZccs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774625693; c=relaxed/simple;
	bh=XSLYlNGn+HqjtMlh3vW3ej49kgSMgEx3hhLBIEMJJ3s=;
	h=To:Subject:From:Message-Id:Date; b=LnA+72juolbLCIsza60ceoxgjKz1lgS6n8VIEkgB7AY+uaoc+Lb4GIPOqo+4FAIHa//7tT6lAhl3ORKdVgG/mEXia4HJDb8VAPG1K8hXzaKqSCUxDWa39BHRxeQejudWbjpo8ajrnGGP2fiEl4ZEWKzMwvdaTyEiL6Q1MvbZFEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjMLHFI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjMLHFI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F086C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774625693;
	bh=XSLYlNGn+HqjtMlh3vW3ej49kgSMgEx3hhLBIEMJJ3s=;
	h=To:Subject:From:Date:From;
	b=SjMLHFI6s661EEX0MP6kXiz9/aHHLKsDo3BbhFNztJF3ER/6za3kKXAFWcTRrmnO9
	 aCllKPYhJORI9jYuBKN9cnU0HJ4jcKiDysLvotHORiUnCq4cH1UOlwWOtXsiW1Iip6
	 1aUDBrx2InwpHTY0zyAQk6uE0EYzxm784uzqpLiso8eGADQqtqg1czftLOOmoO/gSc
	 +nG274kdPUbqzSZl3a+tpLGh1ZRspKhASpaf/7vF3et2ORof4JAz6EBNACtxSN6XCh
	 ufEmBKPeGcaWofMCwgwDEIEbNovRC/KQWDkA5qe3PyrGLy3CLVw5A8UN0rsS63XM04
	 N3DKLSQs6m3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B610F2843
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462569358.30570.1209515534133449592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64c7065f1a1e97dad96ffec00cc7534487d89a9ef3acc6ac864c718d1767a75
Date: Fri, 27 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774625693
