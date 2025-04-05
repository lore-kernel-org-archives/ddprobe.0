Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714D1DF59
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743827394; cv=none; b=I+TUe933w/rlfH1La3XsWGHH9/Q88PoJGSc2gLRf/rkTUGzcYfF13NikeqLfsJBMCTgRy4GHAA7z51cfdZKMokA4R/0/IEFgKwcGtfEUT9GumyFRvc5AvUB3oZHDN1NsBJsSYqlUDoNuancwE3rKHJfNzNOonhHKmIyZS/TpSyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743827394; c=relaxed/simple;
	bh=KV0VmVBOUWS+dEtumkiRGT5JZHiZd7A4casq9JmltYE=;
	h=To:Subject:From:Message-Id:Date; b=X4DQFFy19+WOqpbWxY37e85gR/jm2IYbALeN4q3pVnjkbm3HsiJinTSRyU3BhW/ncHiKRlbPCfbetPkK580G7wKCyw2R1+syIvxLaKTNSppxLlRK540omV82vy2+97zDHPsuENH0AKxOoiLLBe4X9FTSYU6edNjQRWr93KLNacc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLoV4in7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLoV4in7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC8EC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743827393;
	bh=KV0VmVBOUWS+dEtumkiRGT5JZHiZd7A4casq9JmltYE=;
	h=To:Subject:From:Date:From;
	b=hLoV4in7d6fU8AP0rG41SjRTZ6gOFRooaYc4aioUqDJe47JuXNlEKOFgm4c5o1fx6
	 cEKq41wi0flICFxAOrAa/sN9jN4c3qaNsaibOv0Nfmmoj9fr+qEWXwdt0/OlkFqAhU
	 PfHwUSvRbM7/2TzUhn57dEPVsm7EcKqFqJv0LUFIpR1bCDsTHvMcokuAS9NcZ3AKLA
	 tAoUySrm0zyj5NXkZ2I6EMo+LmcZyl2YA1+UDT2LJ9QyAKL6WvgHV0MiyEyfWXPToi
	 rPvL2BbXc/LfcfCo8Wu2fu8qDEa9vBjcXsDmYZUrbUwEYpHTHUVUJw88t5T9Skrjeh
	 t1QOQlA453xwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DBDC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382739358.29897.12619247450854110853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b19745be45f75b1788e4c3d42f9f5d7479582796721945db54318d871612e5a4
Date: Sat, 05 Apr 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743827393
