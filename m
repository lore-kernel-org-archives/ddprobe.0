Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A14637B40E
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776607654; cv=none; b=maPC/YoQKLraT4TTwccLDZ4bTzyXHJceadbAVl729evIfVFXuydq8I4O1NS8wLkSPDfbkZAp0O1z1mDIasqmwqtavnjysZ7xJbjtX12PdovdWLaCuPLEfYM0uTN0J/m8u5MDYI49vjV7dDAzz7o8OMSV2JWK2RJNR2OQEKOWn8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776607654; c=relaxed/simple;
	bh=JqHn0dfIQt0J4Vbiyc7/pR/8YPKLFAeuJrTN5GEJQAI=;
	h=To:Subject:From:Message-Id:Date; b=Z/K+ca2/yxtm9wLBwIdO4/rGiJJdS/GG6VWwMVzOlmoV7NIAqHnICFtonSS22xyVcguC7i3a1VQmNZUwpnUplQNjQIidmAzNOPwRsrQv4R3Rrfhx6enR/pJDKFrh0XHx+a7K8gHJokUKWZHr4OOkPd1G93j1HgOTRUajkppbAEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz49+Dkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz49+Dkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5124C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776607653;
	bh=JqHn0dfIQt0J4Vbiyc7/pR/8YPKLFAeuJrTN5GEJQAI=;
	h=To:Subject:From:Date:From;
	b=iz49+DklH23K1Z1zj7cg7DY2mJhQkZk+vZmEB/NE6wlwcRryml3Kxi3O0A9BoFXIR
	 iIY2LYXx9RnOXe6mAA2SPCNx7FV9HeLKajcXfL3wbEfchWji+acA2utsQUmLF7nwDo
	 sdR1jSQiFP7XNPEmepDaN6C1C0uHv5E7rdYD8NXsjmiBNja9GDhJI4PHBSGYyOh/2j
	 39KZiykMYlm7JTshSLZpgSP0vUw/a7TGNPu0esx8VuF71J/6RdR82pcWVl/BPkaSQz
	 i6xCmUtY2T8r4EbdNY/OX+6zj1EgFQ90of85lTNyA3Yc9Ck7mrXLkHSX//RA3pdmAX
	 cxNZFR4HEx2fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C45EA719B
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660765369.18303.4275359826036952620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883d85a6bc2a4cd87cc54c58c6a6c6b6b2b8841d41ba3ccac0eecc579c1f9380
Date: Sun, 19 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776607653
