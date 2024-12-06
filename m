Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6D91EF0B3
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733528755; cv=none; b=hg9kjO5FFvL+GvrrPULQT5PNxu++JmW2WSghZYJ3c6LT9ZL2OXXczvawHXsZ/Nfgc4QrhktifYIXEFWIOpx20MeStvV+HVjDQZFLl44vlKX59gFjZFO7JAPzhCuSfrxLwo6GyCCwXkzsjOOv16MjAZhzwHeKzcUvjyqcik/HhxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733528755; c=relaxed/simple;
	bh=ITzm2Fn68zmj+KPt4RS0nwd6tDDbPR/plvzfT9S4xsY=;
	h=To:Subject:From:Message-Id:Date; b=kyliYBuLHCUzYIZ4sUMoxHad7trPcSm8bqsuVEOZZkDsvG/SXOVgoz88rIfIX26kXlbCxRvzzLPhl79lh+xdi3AtewYn4twC8EQi8I5IvnkrOcR5TgS4B2VMEeY1p4KCaScemipJA3wkaGZpUErk086ZjzeW1D/8tbMCvjlIDSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av1nap57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av1nap57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42DFC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733528753;
	bh=ITzm2Fn68zmj+KPt4RS0nwd6tDDbPR/plvzfT9S4xsY=;
	h=To:Subject:From:Date:From;
	b=av1nap574higGGRIRbk/qsx283B3q535fTFOHR2yFRvER3mGykOR8R4nTD27HDzdE
	 lc/cF0Sb99Tj7f5dDDekM4H/FA4xsjp6m7oOlZKcad7KKn+fDx8oIZ/4QHnUi6QRov
	 tO4dgFbgT5L8e6vyr+EMVW4Gfz37SD/3snwGfsMY1n8to7dOLyDiAtLPvNq0ae7moi
	 zmHGTPxsBSRV9X0awt3nGniMFPtUFYYG+H+9IWvyaKb8zOENWnbHVghJlaR70yYrWx
	 FZNx8SvU3uzORXn8eSxsk34Tmimy95GQ1ZOCWGq/Zh5VuiidjBBbACqCAhGO1sW3vZ
	 iubYaISBaVmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C9CE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352875359.20524.3346201825483214202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbe901ed6e4f39c788ab6d29bf3c52d9faeb4835208690395916497e441b395
Date: Fri, 06 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733528753
