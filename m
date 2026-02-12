Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251B11FECAB
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770863094; cv=none; b=Hj4KwTeFcna2zwSl51GznEZuaSKRtRQfizXz4rZR+3u89Xjr43A3GaOgQKkCntEsmCECJxl+hdTc3A15CImbR5ndXAjPVphamUDxeqlCfuLSevungTKaeD28tZrV9ZtsOxV59OgpS1fuL6JgMXIO4BWCFyM0rQbvio476mZL/ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770863094; c=relaxed/simple;
	bh=8o0j9zO5MEEvCu2rh5xgwb2E2WZGXTs+l9KlSUsBDFo=;
	h=To:Subject:From:Message-Id:Date; b=JcnSOrlwQBB3r5wDQdoXRKnhwQA/pptF83gfta4hWBq7hMhbT4/kUzr2ekqMThCB6CFRbjz/YqFFPb6fvDueFE0IRoMkorHwxusb6/xlf1nVkdSnBA20RbShe23uy0JOaNZkPIV73tX/rhgDtevj3SIfjL0ONE3ovweusN8t8jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7VOd3si; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7VOd3si"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD54EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770863093;
	bh=8o0j9zO5MEEvCu2rh5xgwb2E2WZGXTs+l9KlSUsBDFo=;
	h=To:Subject:From:Date:From;
	b=g7VOd3sip/ZO9r2DzX8qY0zpc3J7OyzJw9lz/R6xJXkdgYn214JTblA3Iciqd1jGX
	 15DRq9uLI7S73OfUpPUuYGWUG/QRc7Y/ViTG1+wXrAzxP4WWR8xlhn6BteHVzHnBV4
	 Ztzo04NMLq0lr1VsIEwuJhgUPpsidPt0W6P8pfybQXDVSMIvPih8uN9L50Wlp5bfqf
	 ZDd97dPnKs0S3/0ORaFBU4cuiP5apvVEz/RUz6mtWq64YbF/LHgwoYxw2nk8+TleUJ
	 aeUGQn5T6yWnMwZi1ou1/Ux3Cbb5M7Vkn+evdfjXdOkYxLz6pnTiJ4mC+PM1aF4O5t
	 ghuqh6C3Jiq9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4FAE9E31B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177086309362.32661.3909649187762822438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afdaf4c215c921dc0fe05a13bd1ecd39d5b1cc60cee6282260f57295298b52e2
Date: Thu, 12 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770863093
