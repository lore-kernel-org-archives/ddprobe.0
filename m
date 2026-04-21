Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD78248F6F
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776745054; cv=none; b=nP9yUrgPoIlI/X9fmNmE1lS5/tQjKexX+yPC4N4ekAnPmMSi1gyf7wGRtvYBPdXAoTgVDMLfp6ENYYjMwEwCS1Yz+uo1pIzzR/g+ORMkKBfGpSpxs8zAUR6x1yBV55PI5Ly2E74fzNHcACPeNhocsbgX+syClMNl0ZdX8OAYo7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776745054; c=relaxed/simple;
	bh=fr/eygwYJfd/S1wxPedH+RH1W6Fu0lDC7T+QITTde7I=;
	h=To:Subject:From:Message-Id:Date; b=W7P5jMOFSzzqjMvvMcCxlz239PhuE6NEZWnkiEae0t497gtY8NSMzxEf1Xc8X2+AGg0ucX5C0ch4eAUbGqHvImdFTvUiRqdAhxc1TGwHwDfKkWrFohyfS5Ewdf0zuLOl/TCdKfw3+X7zuDBPhLhXIXV4dtXERF0B61Nm2uiujb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soTbBHkC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soTbBHkC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5BAC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776745053;
	bh=fr/eygwYJfd/S1wxPedH+RH1W6Fu0lDC7T+QITTde7I=;
	h=To:Subject:From:Date:From;
	b=soTbBHkCL1+m7TJC6U6Dwz8CsLe7+cgUZYKwXcmoAY/O6clGNI/iKFnLZyX+MKy7x
	 7ZQmHds/VOju/U8Px0eRkoweWs+9G9leRwpiazmIiSrveEfd2WVt3jiEwvQMaqorpi
	 IJ/TpPknmA89tgFR3Tyjwp8zYsTspmAYYYr+RoC8mDhD8rGZNKoZ9+fKQ8Td6QbutI
	 PWbN91pUxvSFk+zKcX2QFg4ydVchZEbssnUwL+ZaCMqRS9b+gRVrVi0xpkgMxVa7QL
	 hMzVd08nPvv3NqYM7kAOF7fpIzn6PIF9IgCWzxcAB6ZlPd8Py89webM4ng6rgAk39q
	 VYgryCI6Yt4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8CDEA7184
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674505369.8027.10281938786849355264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97625fcb21e791a47decd17456f5a899f8367396eb65318f05597bd898d87d0b
Date: Tue, 21 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776745053
