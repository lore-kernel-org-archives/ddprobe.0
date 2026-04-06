Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40123312826
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775511934; cv=none; b=Mu4T3BqLR0EIkm5i2L7IMEbzxaPZckE7lQ0WzIyQvIKxo1oisJe1Z1JAadLoG7M4Vq59y2oKIApJUYul/UtYHS25ep4IqZ3K1U+5jP+pFAqfxRTdbONzmTW5o3LhWBE29PMR9LBhN04jX8TIyJQU++XEMb25F1UpcvCXwXzNJM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775511934; c=relaxed/simple;
	bh=49VqnG5BDBWunhSiwdTPgZ/nf3l7HYb7IZGRsz34rDQ=;
	h=To:Subject:From:Message-Id:Date; b=QvaoTKGRJBMyW1mwYz95tGgxi+Z11Rpdt+q4lFw3VdSh3M3toTwd49Vwo0xJwXOyaqCtg2zOnoURvJnKvUusPhvkvOCCj0rjwe9gi+IiThQO9mQEBykaxt2Q1tHz9UIV9nSAG5ly2ubxDbB+jko1q1YJO6hN6qrxONMIu6Hj/m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ht/IlBHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ht/IlBHx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35B6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775511933;
	bh=49VqnG5BDBWunhSiwdTPgZ/nf3l7HYb7IZGRsz34rDQ=;
	h=To:Subject:From:Date:From;
	b=ht/IlBHxGtsxoyEUxskyKQjh7dezeg8NblYrxBx+7ul3gavNtje5qwxnm67rrZPSQ
	 BMTqnaDdY0dlW0PlseMHVSR/cKeqfB+wSJGp91LH4TVShgkCdDhysJp7tjaOc1Uo7w
	 zShLkOemjoS9GWExE4ZsF76BeDwbPNg3G7hIgh5k3dFtv8vpYA5c/1RJx95Pabho8x
	 YvxnIQmGXwNJMufAvpmOcpQyMX7vMwPCzAVyCs2WDC2wr1Kxp8j9h+i3U2JM9awc+H
	 EBel1nwBuCoBuUDjBlNX1I205uS77mCo+Uqh+R3J9QWTQZ5b4XAW6vgIuC5aaWLm1U
	 vSFMmbnGg7ygQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C42FB5164
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551193375.13816.7299740723302937609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e259f902f1785e9ece15225bf12d7274406e19e9b9363da79cdfcd23da9d8e83
Date: Mon, 06 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775511933
