Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F7C1519B4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777835854; cv=none; b=i+IZEWbVgJELEuMjanoh+Vo4RwEtRf4aBsCafGjGg31SETQ7c/XY4MVJM88nzO+dgh4T6KCV6wxNyA8Ye93zKl9S+McwgsqN+YJiPvAb1ffYUxPqzNqEaQuPIW8S9inrFzUoCy0+SMlbzRofes/itBD8bsbQo+QPhPt3enm4qiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777835854; c=relaxed/simple;
	bh=ed+bJKo4Ikqgkeb1qw8A9md+xFFMXyxEKooaAO7v99k=;
	h=To:Subject:From:Message-Id:Date; b=JGkbDYVOya3qN3j0fa2LAjgrV0zDNBmc83NUpPeGEy908z1YEXZbks6Wt3LS4aOgEkS24AUixyhIOILR93+499H8+/ovDhwJe8ajeIxXkoKu/PYLZUzIockPX9g32DJ9aXQLps6x0efTyWOJ1gseAKszSj77QB5I/WKGnBOj5Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5Xa4ddt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5Xa4ddt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBF9C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777835853;
	bh=ed+bJKo4Ikqgkeb1qw8A9md+xFFMXyxEKooaAO7v99k=;
	h=To:Subject:From:Date:From;
	b=D5Xa4ddtO14VcnYsSxQXq27mNeowZC8fbTAOBtdmWcoAJcxs01tuo2c4Bq8XiJs7b
	 LndDA05BYKDQO5M2rb/mFuIAT9tWIV092seyChDyobLKWUlxGHijUhXmz/NNVDqvyN
	 rCVA5s2ooflQqN7xe07kDUsXBWIakyw108RzkjHXBzC0MmUdZX8toaiPdyT4fZgwod
	 EP2EblZeL6gMB6EQLghugVoFDDjb+CBtzFuDVPWxBZavXPc3EohDIspKPzzUi8x7hT
	 2DBbxnuGeejOfBHaRC/LvDvca2R55xYMFUV8cR5rMTvZ0TvSforXT7eu8b/gotupUx
	 77f07p6+ROCOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFA4CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783585368.28787.8673054657785239761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6014c537a0fefccefd56534ef9e121e06c353cdc432a7d77f7906385c0253410
Date: Sun, 03 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777835853
