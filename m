Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635D233F8D4
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777358254; cv=none; b=Z+chgX4TNk3RdYo7HZmmlc/I0Y0nqtt0e1Vzb510pPmhhYWx7+7kCa2QbAfjYoWAZFYwZXSovOYA9y+23Rkv7TPyd2PvYK2luzZT/DzWI5el8JDuYU0iSrGwQTWhc7JuW/pASFOFDzpOFp3lCemlFjOxw1I4956rHOgYilyTnG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777358254; c=relaxed/simple;
	bh=hjH48V0H8SDCSmukkyNZxCXyTpIIWKk3GGVmwrS1p60=;
	h=To:Subject:From:Message-Id:Date; b=ORAeOhfKGex+rNZYpONDSZd/zORE59dIco9fRPg21aC+KjOYBCH6U+RS6nabBUZhdnniHhPJN84ZQdQGPgVSgb2q3VUenckd7JH80QCREvGO72nUVupenmhZBvpGTRDlbmKaKbBBAp4vM3W68ihNXyovmGHn3IvMDCyvJZ+ZyEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHAydMfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHAydMfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE61C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777358253;
	bh=hjH48V0H8SDCSmukkyNZxCXyTpIIWKk3GGVmwrS1p60=;
	h=To:Subject:From:Date:From;
	b=bHAydMfn3WZNUSKGlPlN+4tLG/oXocw6ZjRb6/hNVCStEXrd4tC/+f8OYgQb2RiTl
	 eO1IbSZPfOXywmE5N2hRvQNjarpR/kOTp0CUPqY6qN6T1N81tnXfxDHOxEu3si3Q1d
	 uVHhL2mln80vWh86a+UPFtLOVDBB2h2ghvglf55o9FmbKR2IhJp7Us7iUevl5wKARz
	 op1rJWkPF5Uix9r61XShznCoWEsKtYarK3zZt2loEuE8P1t+E/duvz2S0eYefiQRBL
	 gUIRCcDp4aakSQjoIdRPHsSba8r0KZSCvpDItP+5BvKJGqUerHqXXhzMM9HGBLQ66+
	 nD1+tLxdkzWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A878BFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735825368.23728.8613911632508115777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017eec0f1c0ac919bf4f9132f43a0ee3b01c7a21eeb21acf5d538ceef2d7197e
Date: Tue, 28 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777358253
