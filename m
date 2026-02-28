Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB933563E8
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772315694; cv=none; b=av3bsdYT6201VJ9BOgsFHJk+vgGXn5HQ3OUWecKL7xIDKb6lij9uDig8FgMWCiuHaDpIdUjfR/+50ZPaucKzfdbrjgjb4ygsMNedYS08jLiIjI3eGzn6O9xYhZeXJRm1gz3NXdNzcv+S+6kuMq68IsZ5yh9G2BO53yn3BeOwDaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772315694; c=relaxed/simple;
	bh=vNarxvciEJ/IlsYXGkhgaZFPdmAGXHQJ6vlhXQQToOY=;
	h=To:Subject:From:Message-Id:Date; b=UlydqcjP2tvcx3htf6g8LPlIcOnc3WgyQRRVn4jBt6uYy20liwxdhTQqgpG+GgLRuhaHSGHcz2MvJBzY1CDLc/ogyxQNJYxO2fbw2UiWIJL3HjawXnqM3z5qQZL/R38/rOelw6Al+zLNo/nJMHZxzwl+e1X2Sq7apADmBCAk3Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZcuDj4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZcuDj4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B34C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772315693;
	bh=vNarxvciEJ/IlsYXGkhgaZFPdmAGXHQJ6vlhXQQToOY=;
	h=To:Subject:From:Date:From;
	b=bZcuDj4a+Mlx4NBVKGq2IOXxfw9Sh/uelipkkH5gNSS6RXXeD8jkoVadpxxoLFrOq
	 KTvNnf+l1Ej8RU7jOyKQZcsCZQNGHDds612HA1mlPyse5IEAr7o3eiyPSVdm9Ujt0X
	 GajTB40LS3+v3AbGe3f/Qm7Ul/Xx9YCx1WcJprvSp31iP+8kByeWZSn+xHBFth59R7
	 yklQsButK7lP45qMW1kiiZj0S/HwlbvWFZ401IjKTH2pMSlaHnCOHgV+WCpp5bJt0w
	 ObMUZnBA/LEA0Jh7VBtFraYo2NhJ5xktwkS5b/XzY75M/StSSkR7LpVPyJkcyMyZ1D
	 22+BlzibBK4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0557FD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231569362.17306.1486808203204130468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe71bc0ca9ceb676b8400aa6d53cad0cd715707fdca4376733858be721fc5c2a
Date: Sat, 28 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772315693
