Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8094119F5
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790526034; cv=none; b=WoKLgdlKMHmEUaBUQuNT4d0ReFH698ocFC6hBxhVg3otQsG5YJtBqYlc7+i37+yptAGD8j6qjtsAQKJK0Rh1PxrMXBYgs51DDukCHl7LyJn/O+EFXsU1JTdDWgMursf6LN/yFOBA9kwMKJ7I/s+F/35BAa4gU+lFu6KpidWqooQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790526034; c=relaxed/simple;
	bh=qm/IuyXTNP0My8DE5gKvNvXAHaROgW1Vrz119JeNOkU=;
	h=To:Subject:From:Message-Id:Date; b=ZXMmrXEwNWxrz8Q16S5V0PHTUBW0kc3hnCaA9akS/v5eeiUc6P1ElQx1ufS6SmWEsE6XEPTDaFtVyqYHjLsiqkYfNxhdtSUwtpbOsk6oAUc1TMnppR/rEzx0VwQELIIBw0bPLDcMihBqTjx5pgCp217IT+sZSDsfuGsvWb3bg6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elne/oXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elne/oXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D446DC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790526033;
	bh=qm/IuyXTNP0My8DE5gKvNvXAHaROgW1Vrz119JeNOkU=;
	h=To:Subject:From:Date:From;
	b=elne/oXXgOtE7q/yMx6ref2qiPOh9F0scMQWgV5uEfbxAJCBTUki76h+bRPjS8G92
	 IgHzwA3BjDPdoJd4QHaQ52x7Phl/PD08xLqbhzr0K28/Bl0t/TraaB7m68vdaZ/ouK
	 nnc4UDAgulMG4PdcM5VoD0WxH8AkIytLkCjBYyHdmTBHSrBrsV4P/HgaqVJpjxy0ZW
	 RZBroeCCzSIbW2eNya1hOFo+Wl+Urzvc5gQUD4Mf/rIEGZs/rg5kF3J8T9Oe7yoBft
	 XaOCPzWYTZj5G0/HGjqVpK4Y9peXB1UyNIMfu/NlC/hq+Etj+WYye00Z2W7Ex/6OAW
	 845rOr6ruVgjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B175EC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052603369.24495.14982664221907455778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77bc665c4b28b745eece3c7bd9699cf9a6556271c3c51f33a211ca5d4e4bd90a
Date: Sun, 27 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790526033
