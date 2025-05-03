Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368D517A5BD
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746310194; cv=none; b=RxcLV4sxpM9U9Yo1ufridJL9lu07xZCTKdv6vqw14u9G9YCJJif7Oe4sozkmKBr6RaDFW9nLfEiTgTf0fFo1k8MZoqAHSDUBkSz2sZCtF6ZIArG607Jwy53SzD9Kt5j/Mr8+APLeKgi8T/htsXSUFplK1NO+tV0BMosfBWrsFmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746310194; c=relaxed/simple;
	bh=f/AkjYpgKwtk+5XDY5ksbg3mR+QgEz7dRgZIKzdgt58=;
	h=To:Subject:From:Message-Id:Date; b=n7JgU+0Wbjb1U+ATgrq+OvqcN1PWLxFoA2faBfTOv/l4xO01/Gbcx+Qw4iw+i6qXm4YOEJ1n+HfeGMzUpokC9rZ2jE9R6L1Yp0iiXxR1PiiyHdXd8J4xGEo3U3TpQ5v8mkOVYeUWTSrvXGjIZHwAnD14FPphTaxad8MpHra34io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=daCfMiBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="daCfMiBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AA1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746310193;
	bh=f/AkjYpgKwtk+5XDY5ksbg3mR+QgEz7dRgZIKzdgt58=;
	h=To:Subject:From:Date:From;
	b=daCfMiBMkRsAYHIUW/nwmSgs07ESNlxO94c2FXcLC6aph2pVPf3xcyUxIE6JKR4lM
	 SthLuL2TMt3mcch1mXq+rzLGwTKPmMU4W/rKLE6nI5sS39kdi+2QwqYXu4O3ahcioF
	 hmhx4xqPLZUNE6kZHgCRZPtNzAXbPp2vJEtNlQjpBjj2EOQofv+tEQ2DOh/MYgLuW+
	 cYuvAa4F1BEPFcKeo6voF04A4o4SlJuVyINjpCefGt/xDYwwh7z1CAMSw0DMnjQirR
	 YMPOiEP/6fscnkK/urBOzwL8yMStqFv+Z2prlVuSiJa3jwLTwTGreaLijLB2HDJhVA
	 8IrQA14V3CYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94264C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631019357.27669.16164744014853352835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95130b39ab558cc1544e7a398bcfcdd49e214a10d18c25df9cacca2ba8132764
Date: Sat, 03 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746310193
