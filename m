Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374CF3A1E7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767552834; cv=none; b=DfFv0vUzCb6T4zc17MKKrHH3DRLu4qMmNasF31qk1eBLGQC8SRSXJOy6bVV3E87j5ofLBIMat09pzElO1JsxGXJbclMFujks9eTm9GXUTp3Ibj0QpKnAdHb6C11+GEDISQZoM5MWhvGOS6n0mGPr/E/DGlz05zRN8av/pETHdrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767552834; c=relaxed/simple;
	bh=9Yg9TPJ0CLRMCjLW+Q64M/yFvcqg5sn7R4eZjVjsLrc=;
	h=To:Subject:From:Message-Id:Date; b=YVWZcO13Kcb9RxEhujv+EmaAnAagHsXwLUlhF1D4gfJp7s9nPC/6k2SUrwcC9nzT0EBB0kvY9lD1lnC97lnRmozEovru7lmZjHC2HW3uMZ5Itsx07bXqPdA/2GcHYNwQ3kjQctj4hFZB6D8GdSCg7Iatpkt/8uAMoqm9UBneNfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNBbWsL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNBbWsL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41CEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767552833;
	bh=9Yg9TPJ0CLRMCjLW+Q64M/yFvcqg5sn7R4eZjVjsLrc=;
	h=To:Subject:From:Date:From;
	b=CNBbWsL2buZeI+kkNkVGH/tRmcJrd5p8MfDuX6APuyroX6hI9gMcmEbOulJ+X80dw
	 MqxGgIBNM7HhSGD4KgInUwDshGpfhY9+IbdVZRVtwuMZN6/F2A+KwoH1lUrbi6mCJh
	 cNdDkQ4tAQgdTbILGXgsuWlA7Sd+vN1zrkhr4P8sR0yLcXb/joGqg7esZIuYLyV07O
	 fJ/zyI1EOLosff4qDPArZn1DmxY8JJt2ks+hKEHV5O9KbFinru7I4084PIG/qfyhAC
	 DsRl019rF0K4j1iiZa9TQl8jVsUntwh2gf2BvGtyM89BU66wP/mVFkfGb1X2P4igSf
	 Uyf0W+TJbnT6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919C8C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176755283357.32643.8967160402140455030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2977dce5f70d26dc798dba2e322d7d58eff61ca507d365c968f33f0b49c2d4
Date: Sun, 04 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767552833
