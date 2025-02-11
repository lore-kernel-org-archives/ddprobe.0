Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9BE26BD85
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 02:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739239556; cv=none; b=tCEyiyjv5BVOqb+CR3uK7DS79B9P1JeDQyfVzUsT+KOwha0/xuBwkDmpJiR2EPErDhMv5pKzWbCLVxYNInK76irsRxlUAAkyqYox3PMYA199pcmeb+gTiL/ObiNV382ewxJO+/YGLEubk91izbV/TpsjP4/sFe2tXxZMb8uXrW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739239556; c=relaxed/simple;
	bh=4GhAts2ZT+xoskpaluq2Jp6rFDgO01GY/iekM60dJ/A=;
	h=To:Subject:From:Message-Id:Date; b=Tx5dQSlSOK9ehub2+4okBNk/SZK8J8TuiVQ7fFSXD9nUP+K5GTsrG/yPw7h5JFpwHDIg/rtuhw5FfL0bR67WioVs9DJLACn1XoyPgXvgr4IRaIm8G7na7NaiWoigGYw0CxyNF6SxD67I1Nl4bIee9HZImI7YV+LkCTe4ECKgm+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmEorrRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmEorrRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E920C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 02:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739239554;
	bh=4GhAts2ZT+xoskpaluq2Jp6rFDgO01GY/iekM60dJ/A=;
	h=To:Subject:From:Date:From;
	b=jmEorrRWOMlPdBGeqdA5DfeT6tjnn9wKuI6vZt7qJ/RaXpk+F+87OLd2+CtLzmP4T
	 oJSjMLXypP3Dc3a2RYoFfamxQafxl8pr0NZbEsG+ow8ZRKhdpdjUsrCxiU59uH0WqY
	 MzDkzbaBEXmKU8OrOVCPWnXRN4LHkJ214aXiwdgXmJxaODY936uFSR5G/WfOJSE3d4
	 I/+cSrH1cyEoivZz9chbdz9Nkbd9+wF+tTty9amloiY+Q89XS80V5JiDNo+sJLUIoG
	 b/NObuELMB7VOwzby9o3JxPzmKI6CC5BbdDGFNaAhzxj/++khhqkYRRRoC8HEdwBXN
	 G8aI6H1w/usJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B8A4C02198
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 02:05:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923955401.19720.8851932140076018214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90841453ccfb329199c70763203796b11ec929b483f343e523904584c9812315
Date: Tue, 11 Feb 2025 02:05:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739239554
