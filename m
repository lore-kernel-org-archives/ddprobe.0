Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D7E4A1D
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751849994; cv=none; b=CgaWNzSV0cfYLgE4WapyJWQgimsiLueBZU2H1d8RSIpnDF56fcf3y81v/NiU1CXRCFayRzemKBdtQS5q1evFXgI5LfzSZ4+KtqYnbSLU2yVRA1GPintLEmo95Jiqw2qhHbUhOr01TRMT46hkynHfPkO46qTz2+lZE0YfoIZa/+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751849994; c=relaxed/simple;
	bh=y0ht0W2IkpnhoQzZ7XuzAYdW9rDUObUP1xvFo/cLXps=;
	h=To:Subject:From:Message-Id:Date; b=ESrADjJfF7RNUX1tMofONV5VavKo4WP9uznj0JtInR6tSEi755lGLosSh2DIkVc3OGT7o7qJatbv4653lA+tiRUGJiudoC1MNQTFZesEjKvV8Wx7OM0maZSdaj/1PI0VFaR1byL9ENECdfc2UYf8wk0d6BfJUQoHW2eA3fNQGbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9WCLudh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9WCLudh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D616C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751849993;
	bh=y0ht0W2IkpnhoQzZ7XuzAYdW9rDUObUP1xvFo/cLXps=;
	h=To:Subject:From:Date:From;
	b=a9WCLudhj3NDBRbhsOEJm/1Gm3QqrajEvfzGeSJXlZ3VIPufKTgEjxPGANhl4Hrdq
	 7S0tjofApwD/SzIgaEfdeU8QLPpeLcJP2cFlm4wnn4ZvhzEXkCgKOvtkvMUq8GcsJh
	 0oB6zbBT2k8kpBAmZJJutUnmHj65ZVgpsgjkw1JM1bCOexLBe09f7Ntgk0yIrt/Qkj
	 Tzi9YYowEiKTe2M2sLUS4i5w7pi8Dz9SbpoGHwoPa2xOCRBwqbwQ59PMm8+DOqDRsF
	 uzMklr3Ez7USfD05GW4YSeue4E82XiVDqFnMtjtKRJqZO/AVcf8cb2urn0JLZ92Uon
	 LcNcgnJK+J94Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E378C83F03
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184999357.26054.3899459179093206835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fa03009a7715aefd0d901f788d30ce48badacef65c372b405093c9567a0d73
Date: Mon, 07 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751849993
