Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1201317AE11
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771265694; cv=none; b=tTHsSB0M4sIknm5xAE2SXvy2Ec5Do38i63X8AQL5qkhdDrnipllKcDCBYE36jXhv1/gae/F/b18GKKVXIEoSwIaca79cMyszzzfSdbhSP2UwFI3K94lG8nfa7qXSjXNwJf33s79AATbG2OB65xeJlvwQR0EEsCgTG4o+04vrth0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771265694; c=relaxed/simple;
	bh=QgrunhMakz8J+h/QzfBFCE0Mg9sZ9VLDnj+CYJdT5+k=;
	h=To:Subject:From:Message-Id:Date; b=J1ZUCSoA2V9P53YUIr48fh0XFQwh2sOdNb3oZp8bIQiGHzw3nsIbwuKsm1P/TVhWl9UTH6QFN1I7D1IDzx1xexZ3IQuYCJmm01MDTusMxxgBj6pEjPOszaXIxXdSHBhrW6qvaKvVE6OPvqyAVWmiuEwpGIsB0YCaufavWW4334Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUV4gduo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUV4gduo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A2C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771265693;
	bh=QgrunhMakz8J+h/QzfBFCE0Mg9sZ9VLDnj+CYJdT5+k=;
	h=To:Subject:From:Date:From;
	b=AUV4gduowhIScOCra5PwfU7baH/Wv+xMi2y6Z+bceDWBftOnN8E4Ib3HfrrgbW0Ro
	 aHFDm4dnlM3KW21wfIqHJehIE+mR40rc5NhxV9jGeNXEikQKWqusARvsPv0SjHKMWh
	 DrQEAiGpzghLIdQ5wfBKZRFuAdaJFXQwrApeUeQGJ9nfnKCARggcQcMTKjFouIVrlB
	 nrU75CyijjPok8kl8nILNuUdZ8QVbfsj/67wdnQSkN2Cs1kA4ISJPfxejXch/zLHbp
	 0WDGM0mrT9RYWmEpd+QKyiC5KDlOD42J40eeMPFh3og6qd1zcvMFsLaxYacjXKOxM6
	 XjvV4q8yg6m7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92132E83821
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126569358.32485.10881033431506024140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da708858ba8df180a607ba576c7921cadeedea45edeb919a3206fa4fe04ea6e
Date: Mon, 16 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771265693
