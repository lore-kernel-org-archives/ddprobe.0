Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15476277038
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757251794; cv=none; b=YMPd3YU0/HJxPiErjW7t7kQwq5cAzuoTVmiDcGjNCh3vXNqIUNH/spscvA4tKkTUv5lbE2DssJoCJVyj/oim5XfctK+L+wPZxTDI1TQejFgoVlpB7SVsIhe0rU4w8CeL7xnVyBokMRq3gHP36GEKrRWS6sU8+ZWoUI5VbaO0+hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757251794; c=relaxed/simple;
	bh=5uFFd7PCedB2/g+n0gyHcgn8Wrx/5jncoaAh4Av4Y0M=;
	h=To:Subject:From:Message-Id:Date; b=j00INFsgW7ubdgFa+yf2lT91bAzBVdLdYGgxBg86c/CPzgeSx8Uj8P+JKvxLkJlCUfc4C5i91cnfF0+75SHz+pCqFUSbZlw+alLyOwtuuzrDaJ5pCtD7JBtICreSvBoLgUQdyp0kxw0mD+tphDJ046iBaoAaXfAApmr5O+Kwlqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glq5bisz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glq5bisz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2174C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757251793;
	bh=5uFFd7PCedB2/g+n0gyHcgn8Wrx/5jncoaAh4Av4Y0M=;
	h=To:Subject:From:Date:From;
	b=glq5biszJXwJF02fHicvbhOOOEoWTBwoG5ys9cNaUedpmoLtl6bb6F9kgHRLl7Hp2
	 Digs+g7LtCacDJUhhKuX3AV3qByvkuNYbGpX1MBCBGmP/J/gETifZVJu4Yixpxwc5S
	 koX7EM6RRrxR25DatG3So9gUAkvuD++jSygcnJS8NP25Pq/qfL0AE2wT915mBmK1rg
	 5fcVW3Yw/3LxNliaZcf+XZnYqhmipacmzvOuAXhd+L9A0FPsZPH9G5opLRoo2WJhlb
	 QHpQ+DcSwidH0CVvu0L4iw2a/K8Gdk8yxGK1auFZq20xh3O8xmfXyjCvfKdtkUJJpR
	 VqdCuhS2+Zt1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CC7CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725179357.8214.15815624371182392474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e800437d8009e2bfc1b19a362f9bd95d82250698aa5982b7c4801e15b99335b
Date: Sun, 07 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757251793
