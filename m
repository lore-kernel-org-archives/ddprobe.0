Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4400828373
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783708714; cv=none; b=m3xou6Ygq7OFFiP7uvz0RvdG7TRqvfCxK0cogLOBUGoyJn7ZjiSkwPbKyuKQtkkpzQwAX7ubwuQ4AUGyeTxJO543TAXK0FJyphyZL2Z88XT89sWZCQt60BAVpUfGOTMZpPt9B9WYXrYAF5aES1pLx7gilBUIGlGEvvxVkWrIN7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783708714; c=relaxed/simple;
	bh=tOVXjHMbV85UGfdzhwl+AgXIUo+JeuIJ2q99ojh17gg=;
	h=To:Subject:From:Message-Id:Date; b=JeSUbPg526PIjZTxV5fnV+wY8wyflGgyY2AeSHEOoyFsZIG989yru1VUvrX27m60IZlpEwH2fdB88Adq/sMvZZE++9dxV2s8xa8U9LGLROux2X8F1K/l1mfbOu9HAosy00IrdgLQ0RtUoiGRPioaDIvxyGSEqZzYhp9hBINYqQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxVL501n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxVL501n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1CFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783708713;
	bh=tOVXjHMbV85UGfdzhwl+AgXIUo+JeuIJ2q99ojh17gg=;
	h=To:Subject:From:Date:From;
	b=IxVL501nTgEycIApjToryH5fm4r9kX+IpgRMuHkqmMCjY2tJD3sWHTyMck2v3Oyiy
	 S0NUzYsyoAxYx0FvwVJglgd/I/wvK8DI8ixRMQ2srBsi8X65EZrOt+ZQm5cACFOmwr
	 3IWxoMjivcO/0LwNHKaVTCVOrn6snv1LUyq+2BGFtMn3X17iCqAR0tzuiTkZZM5Hb8
	 XIGhTEVmD0fEwjexbmFBTWkvfUq0Nf6OioaZ04+DVmMEoN17teGMR7zocZONd6RdQA
	 ZF4nyXn/7ZumvW3GOSe78F8FagbTDNchwcjAq/6eJ9E2ct0yT05uIteSz4hrZgW7pj
	 syR+1RIYDCleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8463C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370871368.27344.17688225781414148043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8537a31007a97962df7552d95497365a813a646bbf54245cb604a5773d3570c1
Date: Fri, 10 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783708713
