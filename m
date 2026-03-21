Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171D7282F0E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774110894; cv=none; b=BS9K0ukwW08sGn+yECW2ISHut1ynMDldrziY3/fcqRjBoCOTyxSa669Ke1FVGJhgkj2YEuSNLB1pJh8syuBbpDyy5U1DpbSh5Y3NhQX7box4tMb+jaZKdk2RHyDrdHOYP8JTdf4jQNfyHs+0RKZRD1xf9GZac12YJPXGWVcJlgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774110894; c=relaxed/simple;
	bh=I5rzKjSV6VkpAGs5FRB7qgyMJi5E+VHY6CDYoVxOKAc=;
	h=To:Subject:From:Message-Id:Date; b=l52S1g8OaC50TcWtta3jUfayhmWMiWLEG2CO8qUIfmCV6zTba27cRgwt6roHrN8wGx6DwLWukXAAZT2VP+D69GBfJQQcgyx1HNsCQLPnMoNbSC8uo29ph5iZP3cB1IuSAXiwG+2aqX2NsxGzX8tKvp3sGK5Sy0jWcffFk3V+hnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYOR1zho; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYOR1zho"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC6BC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774110893;
	bh=I5rzKjSV6VkpAGs5FRB7qgyMJi5E+VHY6CDYoVxOKAc=;
	h=To:Subject:From:Date:From;
	b=oYOR1zho9swqJzR9HeAoGNOvviPNUtk4yUCch+S8+j9bmW4JzPKixYmlWAUyKmpR0
	 nMU4FQUvI1ZT3MoLt4ns8omssvvmbxkO8LGgZGMGNZzZLPgsHPEALpbjyy3cFOw455
	 HpUrUM/0+hKcrI2n/5TFaHKa6YKQqN0y6smKhaSyLiijrg12fe0baHXDP5ljiWg7n5
	 msGUswLPtqg5nFNZaNb7Rh7EdRkKXjh7oObuKtaYnbG1Y2g/eqUi5x8MGu2Wt2dj+f
	 1NwwcTN3zbXiNSFRnsRVx6f1X6matQ/hfPj5+BUaL9JvDll2IQMWnVS3lBinM80+L0
	 wxT3ENq3sX8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB21094480
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411089357.21679.12421668513892879200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc6bc5de1b3b730c3dab515517f2219cb5cf0808899f37e35a3714731e8c1087
Date: Sat, 21 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774110893
