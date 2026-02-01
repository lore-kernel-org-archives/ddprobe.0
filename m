Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F28223DE5
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769981034; cv=none; b=EElCUU4uBiF7/6nBfd+A9S6bJfItYDD1iXTWBXU45gTjQu4wG2d5q981srtN3orP++YeC4bNdzNvCJXHz8cK9FshH08p2q6Mx4jbNCbw5uFUdr+ITuFNwmm9hTUSrZKqvm1DvxcbhhViONDMKP97kSsNOvi6BYubOjmCSQULgYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769981034; c=relaxed/simple;
	bh=MOLPd4IcMZCdxMAV6YKFRH7zl3A6aH3OR1lBQAksCiM=;
	h=To:Subject:From:Message-Id:Date; b=ondFgRS8TQ/xPGiZM4EpRrVKN8bnhxmytzcMOGoovdUW48dBV6mB0jsZANxZoxTMfU/Bntiar05htqlT2moPxA8oFsoWd8g41NZ9Zx1XkRd44i34Ph9aThQ2pMoOolkp9eoMLBmyvyc4VmUBoU8QIJxKVTPf8DKNCbhKDJV4iHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uembum1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uembum1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83E2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769981033;
	bh=MOLPd4IcMZCdxMAV6YKFRH7zl3A6aH3OR1lBQAksCiM=;
	h=To:Subject:From:Date:From;
	b=Uembum1yM8faAlojjci+LmO6IZQsd7RicUsFzYIkUL2R2h2lImyUZ7DCgPhw+E2da
	 OyMvfB4ZYKiGC/IckbbDrjGFpPfLjArp1XGwoEUlfMNRWhNkya42Dxp3VK5b4hqii/
	 T7Sq6ZPhMAPrd3BbHWDqJchCSQzgrI+xcYFxRULm4bvFfJk5xZhG7945V0y0TDd4hM
	 l+3zAC0tTbj67Km5b3Bsx4oRVfxMoiWJ+3g4ZOSq3131g3pUplKHzqDQwaLuaOKoFp
	 pybutr5M4Jqs3nxi0Fo0J3to/Zjdq/YPC6FrtPBlk17AGoW/EwvG9UOwDd7LCIYh+j
	 lP1GuVbouTshg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C2FE65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998103359.8771.15987211018563038275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64348ac34b3931ccaed99de967f5f1457e90f06f2dce74808f5737657414350
Date: Sun, 01 Feb 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769981033
