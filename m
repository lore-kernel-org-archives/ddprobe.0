Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B1B3B2AA
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786263634; cv=none; b=jPpBk+s26i5X1h8HNvLR4NROw3874bCuQFMu2Yppxc85G+XQ7LYSFnVk6EGZ3cY+0UnJu9wLyKpkBa+Pswjf3AhX7xRFB0T2M5EnrtTn3pyJBHOPRismEAycASZN6hfvM3Zhq52owan3FS/oQOp0oS30q2fO9JcqYWPyYSDZZZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786263634; c=relaxed/simple;
	bh=STDm3Pzp8pZYMO7BOLSFgiUvqhsaSofjD9CMWY6LFdw=;
	h=To:Subject:From:Message-Id:Date; b=S810Vn91mBgWXvGy7SkasnodNXl5WHYzO4Vn8fvKeRDzd1VIZRul6Pcl8t7Kz4WB1CoFm38xmpawTr/WJIBaq386GlzZZmpKyAo/sm7aBtUztwa6TyM7ta0AChYi9tI2O++ZgcLdSUaTN0+bLbETQlCYI2pnj4lNU2ZTAi3C9es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi7oETIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi7oETIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E117DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786263633;
	bh=STDm3Pzp8pZYMO7BOLSFgiUvqhsaSofjD9CMWY6LFdw=;
	h=To:Subject:From:Date:From;
	b=Bi7oETIyoKurtiZIyRgdnDuqVyjM0nKfEu8/odYAPN2Ug5FleouDVr+tooW5jX/yg
	 KB4TbVXM7Tkup7obFpRmuhMjCOc+6dprFdQOQtDUA/FeJ2y6wj/pUOXUXY4F+8OUGE
	 dRRG5o0X8S4Uwpii4U8JsfaVt/lyGa+XkxnEp8cs+S9Mb5Kv2qYevRgNQVgogTMgMG
	 5j1WmV/4mDY69wjT5m1glovcsEN3e6iNQu5jrRF/azYcvcjWOAzXW1DS5xzp2osqOX
	 vuFWLReWaTtqC7CVNEKS2s9zXILhnxb1fRpnvxZWfbt++Ip4d5aPw2FSFIkD7qZDlT
	 oBK9iV+krZqpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C9DC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626363371.23487.12778138024311235482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7960d2d79571fa5c185e698df0dae49c35c91643d49a23816b70102982c5ef2b
Date: Sun, 09 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786263633
