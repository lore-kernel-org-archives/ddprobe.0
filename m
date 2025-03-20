Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4310A8F6B
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742507994; cv=none; b=ZPw7vAPwDCc52Y48aMn1cmYOerFPvr/W26p4Q38+6i0fJbSjIWjv6jTehGk+wuzGbtfzsY9as1kX9Q16yclYqki3R4aao8jMZUbR7vv4jtdjsdYjGj4Oach3Aqr5YBbX8NYMKiQk0SSfPbvrkZCzC/sZpVTl2k+wZ8dn64pK5Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742507994; c=relaxed/simple;
	bh=m82YIQUazeUoQ6f06rN7HVSh5m9sXjirub7DFQU47Yc=;
	h=To:Subject:From:Message-Id:Date; b=DIcQUoWAaBlFog5Fenybs2b9cw8LtzFmpUJ1diZpkSLjzl4ImjgKLySdcedwyvZiv1PQUmz18ZoFC3Srg/OT6juEox/TaaJ953ida9GHPjndZksTkJ6did5fmQQrY01wxJPLEtaVooqDYc7BB+uQHDLEriH/982ZAyOvUw3ZcBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfbjPN9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfbjPN9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A682DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742507993;
	bh=m82YIQUazeUoQ6f06rN7HVSh5m9sXjirub7DFQU47Yc=;
	h=To:Subject:From:Date:From;
	b=OfbjPN9mLJYDWurUmSukBOYD9VE82oNSA0/bZL9+o5yGbsc96LNtUqd9m8r3p2PQG
	 LL+VG0KrCdxv2pCmD+ZBDbwIT1WHrjQ2AQUrrcFy+PUFCG5xfN1MiCrr4EhaiFiNMR
	 SN1XAC1GbpGbeCTiYUFvVOORuWOHcJUbuLR11q9K+Vlu/CXByBgFysj6A2PEYqGp8L
	 H/GcRjVwRMBzuCpKY0k3qQ95MJlDUVKp6RpH4sKeiiWI/f3hRcL5ob5uPVweg+jZ1c
	 x3NIFjtXM8hNtNCSGwPeso5IHJXZsDVJdKIykVN63vZJskqdD0siHHTbEXcvJy7tDp
	 H48gTgtCdenlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E502C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250799357.25609.1656107452930089221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0c864c45373e8725db5538bdce4d25615f458de97d9f1b17e254d911bdb985
Date: Thu, 20 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742507993
