Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524C2470440
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789392634; cv=none; b=iPJ+i7cEM6Gpvvl0c2uKIn3sMvzTzFrtviOcis3JAM2SSf8+DpEc6S/tcLqdnlahADWgmAYpZQgE/UJae+zrrcO7Es62F7Iec7Lvd50fWniQReJ+knDrBFkKYqzfWivTU/Dvm9V2W3tTuO0R8Y42C0t1P1/a5yabxMLVWJ9C00E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789392634; c=relaxed/simple;
	bh=vBH5ABdE+AOQv+ZtfYPaK8x6RiaqLgnkUaKgT7J83eE=;
	h=To:Subject:From:Message-Id:Date; b=DGDoyj0aTv2dAtgFG2V32XefXjbX4Gk4uoYgSaxHjHdjo4HUOEKaHQk5wdizMgO1AbgTjJ92swbJ9DGp6g3ydxfZzYkQX1s9r7V9Q16ZoXKmEuOS+xTTkPy/t4pghxZLxLpOsZjHPIOhIlwBJ+3hBwOUtomA29sAzcsOTAXEG1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFNDV9nO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFNDV9nO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB61C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789392633;
	bh=vBH5ABdE+AOQv+ZtfYPaK8x6RiaqLgnkUaKgT7J83eE=;
	h=To:Subject:From:Date:From;
	b=MFNDV9nOqfZhSaupWq31P4pms/POPwezIviWF6obkhN7DkaIsTZ5vEywJM4AHrkXb
	 1agdFU0uMVtnFxgkcEl+J4OQR2ioNzdGWhi3sdN1vVMyoy9kSDBqHvKeWJexZNVwxt
	 wl3Zg1QQ+oM7xQszmp2QzBbaG6s2rkEUP9fgx2515D0mgIEsxrF4rZ43VZwwWdTkAM
	 8kpMAsn+BOTkDhZ+/Mv/n0vORX/fKklvSzSyHy1xzrA0/jEB8z8BLyV5QDsnBCkvZr
	 BWv7gnsg5QS42fN0aZoTd4jpR5ADql/1dgJApewrQCLTaCrpJBNrqQDKe04UwANcMA
	 tBh2HejQ+SNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA94CC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939263368.21786.16078475978792985675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c1867ed63879b2f534f67e062997c6e90619cfabf090638f060e090341194f
Date: Mon, 14 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789392633
