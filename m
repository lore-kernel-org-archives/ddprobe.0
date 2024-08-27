Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC3319644B
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724802354; cv=none; b=o1Pc4lZkIc2Ajx2jfuvz7xjdftxE2fMM4fDSCloln6bSMV915muzB9ccWDA97vRG/ciPqkFhyMQspdTlL8FG2y2Uh9p/H+aEIXjpJoLoGCKCxq6WaVFyNtoJ8bHDj//Jyhbo8MAPFuqBQBkb1DcYOEnIEwiNKM2wL2NXBCWIOpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724802354; c=relaxed/simple;
	bh=e7FwIAEeLD4ZJViAueOCO7zUrdUpVCsB9qmk1bHTYHI=;
	h=To:Subject:From:Message-Id:Date; b=RJ46N2Eup9po4Rao6Q45ePgfwcygZu4E3tg9l6NI/hliL0kEViRsZw1RBR7wR0tevwqOzQBtd2+WBRmm6s2Ix5E2r2hNZYgGpX9P07W0FE03MOWEkP+2Qls4JDoXEWmNP3JE5/4Rnkk3/zIcL556SHWejtW79SbclFTYuZEbnEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0dGUT9P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0dGUT9P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65BCC4DDED
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724802353;
	bh=e7FwIAEeLD4ZJViAueOCO7zUrdUpVCsB9qmk1bHTYHI=;
	h=To:Subject:From:Date:From;
	b=P0dGUT9PknuKqssb5F0w/6oDNy01SD8eY1lY7pbHzQVCPfo9UmjvdcGOh5McwxKN1
	 y9A1sOOpiG45MAVxvSQlcX70FpxE5WyH4XJdHglJnmIWBVus5j3/jpLEDAs4S7CTqD
	 Bl/LbV6mPHMi+d1K3OXeJpLX/IYIboWIekDghcrLd/CxEGHIirsdrps1ugpoPMDtzO
	 PUl7VaDzm5NjJktS3ldJ6sgDNyJzvCLYwPaNhZt07U4TG+Iggv0cXVo5octDaToUYV
	 w9/1j59SYsgW77Sbe2yn80pMxqD2zYyapEJBNXyVT0PjQJzwTocLaCLjdTQDCawEvj
	 KvMAa7CTIgmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A327FC54743
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480235365.15433.3742810526511874027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedbaf98b2f24add944f77bdfc444d8bdee0a078ab204ebe72449056b2497ce6
Date: Tue, 27 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724802353
