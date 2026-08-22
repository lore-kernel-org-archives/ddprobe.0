Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649DDB640
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787441434; cv=none; b=I5BqQVIBMJ+OoMJIkLgKUhjQwsABlhi6wIwDK3tuRtMXpPd+dPiMWZwVZJPKnzTiMJYHDCKRcUzYVELBe8lzE8yNOHmUrwZqjA9xHWhTDH7nIzGGncEyc9Iv0xzZmFaFueBUvoi6yB799AQHLP6Ie9KPbKY5O2w+AjAh6nzpEbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787441434; c=relaxed/simple;
	bh=uF+PB4iJvv+ifQwf6AXxsZoauasspTcZlhA3McF30sM=;
	h=To:Subject:From:Message-Id:Date; b=u0DhIa5M4gOuBWQqiPv/+kTpi+PS6bu17XiCIsfJ7H6d+BpIhN4mXsKJFCu6i4iu8SWnPCrNu5lGMtdfd9PM3oZZYex6asp6Q1p5byrj3GqyPkr+T6BvqRrNfrFDGXr7szh+ozZFTPlYInbH/dAonL+Uhq5eckKRE6xbOiFGzps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFTScP0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFTScP0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF41C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787441433;
	bh=uF+PB4iJvv+ifQwf6AXxsZoauasspTcZlhA3McF30sM=;
	h=To:Subject:From:Date:From;
	b=ZFTScP0wfqsxbrFIAzoQ/ra37OoR2IMDI6gNycP6tD2VWNdL5PnW16QmA/pCShy+o
	 pFrHtT3vTSiptOV3A7t+RmmCXiRbCnTwBdMJr1u7tKgZTCZxl2jYNB6KlXTM+ojDFm
	 0VObCZdauwBMZeXaWyvoJfEjw5zJd89jECrvux6VUqruo4TATTRuEylLyg0GIrD75J
	 /GdHiNX6Sa2SWycnFGDlbFOnk408Feumn1Eh4/lrliyDuymtrkTzvV5XoKCbCnCRvd
	 kU/cE0uyAVT/mu0gRZAbVIpheVcxLhQMhRo/IbD53dgCdlukoKqGgV72sEUCW5tkiK
	 KuH8MTPpoz52w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C09C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744143371.28427.11098637071531369563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5db5ea9ae27fa109a76616657b06d6e9280673c01a53157c02f03196cae858
Date: Sat, 22 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787441433
