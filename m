Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2464C9008
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788448834; cv=none; b=fP2eGR6ETI0Hxrd+i5ZJLythkl25y98OOvDbi6IVWFCmRhYn0pLiuMTztNTzXzPPM2Ghfb2DhtkUZ592W2Ybn2Z3InPR4/m/gP8WlFmQpnML+XWnuFTfuyNqZW2rLC/qZs55Q0D0FDyTuABc35RNooOnT5b2D3fgrJiya93iVV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788448834; c=relaxed/simple;
	bh=17EC7caihrKjbnB9WNw+6NaTKvcbQjoQoYdTJDwz7nk=;
	h=To:Subject:From:Message-Id:Date; b=QYuzmgKBh+z43E22bolK/T/d69BnlvyCmxV+5mtontvERxHMOSYomAWW8XdSGX3C9Rw3RGBwxU6SJd6V8Ipm8X+yt9eQlPiZx/SaIIrZWNM8Wr36ChPnvM3sfBzl0ua+zcfLfhme0F60ibegQmMOl8WUrEeKF5VMih+Mrz9efDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oInuWQv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oInuWQv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D064CC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788448833;
	bh=17EC7caihrKjbnB9WNw+6NaTKvcbQjoQoYdTJDwz7nk=;
	h=To:Subject:From:Date:From;
	b=oInuWQv+y9jR9KGcDVtVVuU2tXsf3W96Cd2pZnPp9bEXsGIGgIWdYqbXjvtJwelNA
	 J58ARuaiZgcIXhO2mxTnPHyTGV2tPsjmihvlpDQNfTWBhciQHC7XmCIAgJtJPfBV1k
	 3lSBII+7pmArL0ELAyDk6CKM4fXOnYiNF2H/OsMF4M9HXyA2szGaVSX0mG14GuD0fL
	 2drVqIcoTdeV4ASkgTUxQM6j22leZaCXo0L0CSmUj5oIKxmJ9dt6MkYr+thh6+GPrX
	 XEYOp2frDJAleTbMDLrIycAhYFX8xfWoeQhv/s9Wr07zLP5Z/lX7PaGjk8WgcoE6UC
	 tORets1y/xxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDDFC624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844883369.15523.3003759300461588223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74ebddf461f3fd9fd95cfc3762057acc2d61149a7188c24b188425d579e28038
Date: Thu, 03 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788448833
