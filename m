Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0656D3BB5A
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774328094; cv=none; b=HRKMHDIWY6XtWUZsOEiuSY2f3ZUa+FI6MSHbCTJfe7HGP08r8e5YwqPH2mWikmbU5UA3x50q231ngV6mNDzb4D4cs9SrW5dyNLuAvZ6NrbhkSjbhNSO2jvLSUFDeXOA7n4m2ktKcmWdj9kHeNj7CAKOb1EqiIxj7X5cmM4rMPTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774328094; c=relaxed/simple;
	bh=hnNilaGD9Sn82SaPmPMmFbDY0z3tIH5/tzBnyjd6/J0=;
	h=To:Subject:From:Message-Id:Date; b=QmYQ7YtWylKj4y0LWe+8uYmu/UlU17diSlgbxywnZu5BlcqNzGEZbYmoiMsiTs3effHSb0foZDlq1PHgoYnYmrgaBuXGOERsWjUyAtJcpOb3lziWY8TUEXQJwVu8gVWKRJj9KfoZWsTafuqu5mzzDLQMO+lQhhKddWAuk10iNXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLkz/EJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLkz/EJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37A9C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774328093;
	bh=hnNilaGD9Sn82SaPmPMmFbDY0z3tIH5/tzBnyjd6/J0=;
	h=To:Subject:From:Date:From;
	b=bLkz/EJMOzUboqcnbopEG+8TmB7Tk1wPFXmr8yoNDhc47nF6FEzKvPXOQ+VUPZdDu
	 HshckMF0elIVfuRpWkA6hrRGsRTVAMBJ3NMfuLpzaL/9nRmJUpv5PT/zASr4ZKPqgx
	 qLykQDwv77Es+IdiVuG/zLmCbYK/zCyt8etbqOooOAgjal6mWnoy7yzFI4YrMYwpY8
	 955uWvcdMjYjwiVpstd3829twNHfq1aElFtssFmAPnPQS7mopCh/oTHx6ye+8D0Hrv
	 RZqwl9BmqOBPnVhVH1j6BnEa8IYmimbSNplaCyGGobDVPt+wPTZv65Hr9wjkbUI+kx
	 V+FyaA1ZF+JTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF74F532D5
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432809358.19490.9314194752450645074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b003b9b63d5ab55d316c69a4fb628a6fef54ded131891e7fc951152d65d2fa
Date: Tue, 24 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774328093
