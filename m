Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FFB2E62B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784519914; cv=none; b=aJINCJxva5b/lTcSDshmSNtm5jPePnesrS/sXQvYWMkKOZvt90Eso6FXeYF16cWnzClwddpsWvvTTCy29BoPifPGNLb2uqqaqyQiKACdZFICL5/PNrK+xCS6VPDb4atnCNXcnAC2plA/PrGVRyewCc5uJFDbCePG/2DcByQjzuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784519914; c=relaxed/simple;
	bh=ScGRiZh0tK2GDhXg7cQTFR0JPEpCf0w4UjP9YLtkb6Q=;
	h=To:Subject:From:Message-Id:Date; b=ZbtzYsxClqJdQjQqwXiccG+3ZVjJUjzQCU66t78eojhI/HCjPc+JkDeyH+n6hQDNqOP2TH/2wecis1l36bg5Rd6dRQPs5zcWVt36qD5s3yMBPpfCyM6ywJGJ/a1TpON0b2hc4VEDGYCfi/KweJLHbeI/0PZ81rue00HZlTEuxko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFZ3E2F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFZ3E2F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB932C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784519913;
	bh=ScGRiZh0tK2GDhXg7cQTFR0JPEpCf0w4UjP9YLtkb6Q=;
	h=To:Subject:From:Date:From;
	b=RFZ3E2F01YzSRl0WJENg8ySjE7RTbvhYuKqqiBArEv6RIscHP+Usz1+ff7bpdxJGJ
	 wgXldAt6FEFFauW4ZWtQgJTJzRDrrxrrxkfGcasKc/DA8u00oU4Q/AW6+r/fWC5Ltl
	 NF2X6OQl4PM71IZnQct031ey6zHbLN2p6GtVP3T99hiXP4RTaVVxm25Hm7bs3HrHGY
	 AlXnEaz7defPCbhreIhaauOquq2ASQ7zPmyIC9UCo2hY0CHBGamm6KyoxWS0YWESjM
	 XEjBgEh/0Vl+cpIEMQcsdZIS2k6KXwEkcmO14qAaCkG1+wyefJltf1f13oFIRGhn8u
	 0nXK/B/3nQQJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9681C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451991368.5901.15994507804416870041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc283749da48bc209ce2d775c253cdad9c3affa3ee0f75abf724611a0420b96
Date: Mon, 20 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784519913
