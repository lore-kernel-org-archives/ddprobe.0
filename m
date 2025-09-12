Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDA62E9EAD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757680194; cv=none; b=dmTI9pL56vHbfDN9fYsb6rAg7J8St9d/efPR3tfjVhNFBP9+XazdiKyx0SjEvG10999Re6N6/FDyWlDiCVCzkwWNN3+mtUISyKFJRTPqQiWHk1yDzxy5Ua5Jeh+kdcNk8hgw2bnyp27Iv0vKn/944TYOpm3jSYu35ystyaYE4WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757680194; c=relaxed/simple;
	bh=cAlRyUR7bVygb5AMHEuSNAhMPL7EmtJkhVjCKiBaen0=;
	h=To:Subject:From:Message-Id:Date; b=XXCYmt1TR4YyuGks3r2KjgMtBrPsgTbG0xA/FCr6wAjvbHiVSpGhM3eJIeln5ZkGXJkCPveMK+2qXHx8hetpPISLzb4gG5coVeVJX+BzAF/SgcmrJWAuE3nrMhfO0AESOyRu0JxdgpfURh/TTF8jdIJKA6RQ2HtHpgVA8f7okug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViShS8O2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViShS8O2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B8EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757680193;
	bh=cAlRyUR7bVygb5AMHEuSNAhMPL7EmtJkhVjCKiBaen0=;
	h=To:Subject:From:Date:From;
	b=ViShS8O2zFhJpilnm1uBVbQVLGI27bg4L5u29EFMGmD5e5c0uCJdzrTflCupRYgrY
	 yNW/qu521vCLdlRYlbahshZKZnCklWGje9bzduhZD6VTmf32rZEgc4bf3nTqOqXxrx
	 6O52DdcDjTuFmbXScE53N0enz8pg1qlF5PhRFHBZN63/sUHBv+GFs8Gdr5ZFa2AFaQ
	 2FAXUXWAy0IdBpjYrmNeq70YxR/GdfLwNj6i3jwlJMJF3BBJaMrSDM2lwnGR4jmmaT
	 RdSMHbC87Q3e+cfgazMIs5xh3J574TWr8XESRDHwSBHXxF8P/kzG1blW8g2nV+qNVS
	 Dj23qg6VQ/Eew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92651CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768019357.30701.16418513497077012772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb40bdcaa485be72bbeb79fea1007c6bdc397c1fa07d5512de645aa58f528b4
Date: Fri, 12 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757680193
