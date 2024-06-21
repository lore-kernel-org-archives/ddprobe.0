Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B2D4EB45
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718932883; cv=none; b=YzngkRi6uukT222jqUrGR/tDliT6+3GYIrDy5m316I/BhYPFCpLI/7j8H7y8QZos4zcLg2JaAFX8NROALExmiNFNVyUgPdT2D+kGaRs8VjpkRzB8+bdo1PnKHpunHSKPpWVK3p/LMCR5HBWhKUnA296w0LE2omK3k9FFuTlFIsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718932883; c=relaxed/simple;
	bh=wKhn4pHWPSDmeZCt7lc51ElunVyIUzH9CIpoxTsLg1w=;
	h=To:Subject:From:Message-Id:Date; b=b0S4K6Y/iZnghMNHtyPDQ5y8axjjAbuaUYDUGuNzfDBw1MjSW+kfXtwXE5R/6YvvrSM220JJFUNlK1FJc5pqDomiJeBbg2oUyXosSwepmx0+geX3Rp8ZCKxTCbueZ/ZAa13yrrnVHsKoeXJRy59eopm4DijzSRPRA5sBy8lNk8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DtC9Th+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DtC9Th+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62F2C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718932882;
	bh=wKhn4pHWPSDmeZCt7lc51ElunVyIUzH9CIpoxTsLg1w=;
	h=To:Subject:From:Date:From;
	b=DtC9Th+eG9DdexlrHiGWMdXxDG7Rme9cnq0aKRms8DXte0lOi5f5vGjzohffu/LA0
	 1XSH3CvZjX5hKSTLVdjfIet/ch0m9yaileNhji8qVdkDbJS0R/Blbo7ur40dBRXwCu
	 IrufYDsutv/eF5ndmcC95y1n3vQfaW317l7kVnUFFruWbfqwvpuFmQIp0pDnE2u1Ly
	 MM6gCG86JnSvPDhOd6UwvVbNEyGWH3ipJO3jPCvDsE9KEcDX6IN8C/ZbGPyhIQPqza
	 6GdFg02csfoDqzonDxxHvd30N/ovjHSTgz6744NqotxDLMg9QrwvH1adixeK8Xk/Lx
	 nnIOEcTr8IrgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25F2C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:21:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893288277.16261.9151516762897955916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a1d50666d14669cd331b30cc868642a2b8ed34b7777bace7faa2a9de910babd
Date: Fri, 21 Jun 2024 01:21:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718932882
