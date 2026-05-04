Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CD434A79E
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777885054; cv=none; b=K8XXqKdXpxmnOp1EeQM9s4cO5QaT5dPDGciLXmm3R38znv5JxSmIPHGOLExyMVyuLRrHp7um3dUxYT51HEa/XZeNYYQUeyaY4vMKAOFZ1Ik5+UtUp0Yiqz7IuxQyp/wfzWHSXxlKre6aPw4KH3Jpz5kL1eNCxgD/bkLsjzMrFec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777885054; c=relaxed/simple;
	bh=AtRx5HRdWaKrTA1YAkm/P1kA4Nd2J2Ez7eX53XNKWdY=;
	h=To:Subject:From:Message-Id:Date; b=m9NdkkYV32N5xTS6HbM758PB/wPA8fTQXppd2VGJ0Z+PakWxZmxV3nO7RAZZIyHOIJHOi0yma9VrXGmfvdLpEIGMPa+B8zEg4CfDkmIVdiwtQTVoxF8PmdrcrjuMg+MG4sQ92pVLyjvYvlkeRp5aI07sDfY8bKsWj59nHOv1Jv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovKYgFZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovKYgFZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D45C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777885053;
	bh=AtRx5HRdWaKrTA1YAkm/P1kA4Nd2J2Ez7eX53XNKWdY=;
	h=To:Subject:From:Date:From;
	b=ovKYgFZhflAhGyrIUKkM3a6UGU2UypU5FFgUGuV4m9xFCsg34EI+6h10NbuiTu7zk
	 GqSfEr9JpAnyO1G/MrMnYD+3djQC4nZrJHqKeVw8hPKJ1nvUXqV1EVYKaUUyafXdzv
	 LMaMjZfGJ9lT6tSmajI+oWvP+/AXK1qJ1S3gU6dN+NYhhmxBr7zdWyslmpLFQm7qzy
	 xwRVWEgofib7bl0Qn8ncZkOokkh2KfpmF1lEk/w/HHY+J3TANqtFgK44xCk5LDyDwG
	 LOSFDsRl6RuFAeoC7c3vm5ZfdwnPkpkxgygOwbAX2Qmn6Q2ml+kh7iOOrRTjDZSiT1
	 SutSBIpsRrkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F5CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788505368.17872.17744765885120490200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c5eabeeea79b8bbbf1b38ea5a8d7b7d38af79307d6cf471d5d1ed7bceca585f
Date: Mon, 04 May 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777885053
