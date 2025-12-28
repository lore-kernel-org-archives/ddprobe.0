Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ABB22157E
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766895834; cv=none; b=BqKBHMmcrrgRx/5z0BeEKEAbbZK5PrAwTbP5F9P1gRd0n6F5+NfwILbdgYdFyvO/alx6k3t6gZfguFEKGoCAYtoaKlQH916/IGm2WcKAREiixd7mxrOIcfe5Y6x82F1vi2xBrDPr4kWVz/S/eJO67s8MHtiMD0E7gRi/KVJZmcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766895834; c=relaxed/simple;
	bh=riN3Wshu2lt2PZXxLUaSg6VU70ekQQSX3QyGewqS7zU=;
	h=To:Subject:From:Message-Id:Date; b=gyGV/RE/+xhHX7JJ1ikvMKtuIt9IJmJFJwjXh9Q0/XMbuqB4gyq2s5uI9IfDygs1clxNHss80S3+olwA5Rrwo2fxArVJlAVBfGQZAOnPNdgyYvc6N1/tjQ0CgbYeilNpzaVjYVw/Umoa3/0FubmytUyCoXJ0A3ki29Q90HYtorU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQOY5Wcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQOY5Wcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB37AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766895833;
	bh=riN3Wshu2lt2PZXxLUaSg6VU70ekQQSX3QyGewqS7zU=;
	h=To:Subject:From:Date:From;
	b=NQOY5WczczOoYTz6yICoa/hBw0wimwJXRzxqYAt5GMS2LEgHUIVCmQMmD+BC/Ty7m
	 Av/R724OJYyidzbpjeuGisWQUy2t1JunD4bVGqHf6s+tNT8TChbmi5Aqf/J1rdJdIf
	 5qWKHZi8qJvuWNuReoUNrWJrNMgXXpfikPcGPI0wc0ssZ/imyccHdtzvtGww/nT/KB
	 swrMlshzl5sUOv05TgOFYOajrx5iquEEol8IRkyby5xj0Moz58d9qkMOxi5jBeLc67
	 tRZiIPblpA6arSrtZnIF+x1kSYWYVUuWUa/17VVTWNnEg0qLuhaCXVNGi4QsSyTOXF
	 417aAlKfinKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D8AE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689583364.29633.10946714414472221886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b21a57c7ff6410c63e80f79774e1f799b25f46dae9ef94b511034781aae8707
Date: Sun, 28 Dec 2025 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766895833
