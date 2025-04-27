Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423E08F5A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745760594; cv=none; b=FWKTevCLZKcqS5TIfNYLd/GR8PnBIeEUirAdVfvqts6SEhZej8fl6Zg76IGIH/5JS1t09zuHFMOiIcUG3OkBDs9VG5jMNCgNUlycO5wM5UICwgFiInpOCqwh4t2QJwOeZiNpKhccom9t3DXGePqjbCTQZjvqvj5k0nXkNHNfAys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745760594; c=relaxed/simple;
	bh=YNN623R+1rtMXOQ0czQqjzsENDldzxtIq6d2wYWSwwQ=;
	h=To:Subject:From:Message-Id:Date; b=Q/7Al1Nuh1vpwXwIA1E6Z/5vmreqz1RWdddal1ye0LnR4x93nrHMz1MkAj+UHbPg3thxxqAZ3yiS/msIyvTG7y5mYzSdUqJnRYPLUCBBPrLa7mD58oUT8dPl/zM0H/MISTxlrvmoccjI0y5vE8HzAHWLhHnCM700nU0gaUry/+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mg76Ryca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mg76Ryca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5855C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745760593;
	bh=YNN623R+1rtMXOQ0czQqjzsENDldzxtIq6d2wYWSwwQ=;
	h=To:Subject:From:Date:From;
	b=mg76Rycaeq1gqGEeMhgliZyRNvV6z22FYN0yf3x0BvPtvtXunRQeA0Gh6++OB1j7n
	 qUsV0Wcv6TyVKMi8HOZ52Nprz4SI41gddwH7FyMlNVgaE9oHv8duoy8ZXkw24cFIii
	 xc4Pp93uL8rw4I7zz2f6fFOoqrw4DfoVMAZDhya3lnXWVQGRzs3bVh5ochMXV+5YJr
	 TNrWVem7eqqQ81EPM1HVGSrwajZdOulb90QYJSIZiv4Vq0z1sQCmjwCUUce9KcpRFf
	 RhbENqRlMIz8SZ47XUJh2hYDTKy5xjcJMuCE/016ibTw5VlXV5CSK0kXl20oxWG7V0
	 9CHTHjfiQ57ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EEC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576059357.15082.2039577223504180231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a4e813d838a8d515298fd235e2d96f077998ea8f224f10705dc623f6a692ea
Date: Sun, 27 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745760593
