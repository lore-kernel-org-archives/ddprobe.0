Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CB2535A2
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714402343; cv=none; b=NRno4SvrN1aMnAmmrQ5VYWEnTVv9/EUxNVkju0oDXqFT7J2C6sCVLHpw5b8ttrggUvRE9Eqz7aVFVIwyVjeUmnWwjYQ3+38yZ3W66bqI0GVWi/d3IZ9Bs0Pvm0ruhJ2wjZNVnBQm0kY2a5fi/uo0LVytWDKiloIz/TUsPVdgLeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714402343; c=relaxed/simple;
	bh=DnR3aO04bqlu97/aAt+5vFWrKDNbo46KUbcmY0JlymI=;
	h=To:Subject:From:Message-Id:Date; b=aaZon1xFgtwsG1fG5wbFGib7sTaGAlX+NJikgZj0p4bNGRvAFJDOy9LeOoD3IPFFD+LjBR1wG70uuReOCsCiDwnOz38fjcRhaTM20UdOayllDFh6cUZpUIy5+gJVwWPh++5wJPUcjPavLJPej4qsP6g+AzeVgxUFpz4bRDLSemQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDUh6vif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDUh6vif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53A5C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714402342;
	bh=DnR3aO04bqlu97/aAt+5vFWrKDNbo46KUbcmY0JlymI=;
	h=To:Subject:From:Date:From;
	b=qDUh6vifX4apdpq9HJbSsZD2k8JXENFFQtdieUgkgSDO0yAQiJ4zmZvCjVci7+rLw
	 XOI3PNDJQ92uBZHl1kpw2JsC9kUDBVwxnsPKthexqiNWGXjHrIypvc4eSZEpBFSriG
	 GSoJ6zVy7AP72ODMKn25iVE7EXOA1XP3KHqdaLE9jip3EF/2/70RhDDPvALBMhErpn
	 A38N2pxdYHr72uu5rTLivhD3+VjDcUocp3pH3lXNtkXDTZn6sYbVo3AjVSJ02rTHpY
	 DayoInt2PHFQeBB5i+ESZbumjLZ986sganBvXxbDOkUeHSaSuHOGGe4hD9GZVqI19T
	 bVk3zm7YxHicQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DF5C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440234278.20137.16751867824025910559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9556e26a92cdc0d0755f9952973a1d601de6169d3e516679fe56b400cb6179
Date: Mon, 29 Apr 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714402342
