Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FF742641B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786443034; cv=none; b=gPFb98hbKFtn6qR1omapa0uGwd1ITUmu4qYIljmvnZWMenyQsOztPAY/lqMXsPaI3m8Mp0HgenCCuoAzVQIqCqQdlaa6z5AQUWjaKlsG2D5PQxGIIeTZKVkUhhHU3E9NGvPslO+OhkCwkg6fd6duvKvFLL32dJ1pX90+DWyhyNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786443034; c=relaxed/simple;
	bh=vp7m2b9qAaCiBs5mrDsWtA5Y1uBm/KWsXBSsx25Q6HI=;
	h=To:Subject:From:Message-Id:Date; b=opq1okznleun+wpjq/9mjrjfXPFvJLumvs0NihLnjDlZJdpW9TfUrG8nK+E0F/5ZNPUNBEqYSe7PqLFJsho5H+8vI9oNook+ss7gKjpPlNZexo7Q0jVXvVeXKGnAn0MwZZ9IhjTEYcH+8KBPioTYLxHt3P6M6utXjFnQYuz/26w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9bmJRfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9bmJRfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9915C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786443033;
	bh=vp7m2b9qAaCiBs5mrDsWtA5Y1uBm/KWsXBSsx25Q6HI=;
	h=To:Subject:From:Date:From;
	b=B9bmJRfbupNS7J49lk0AZytM95BkcK6HMtVunH6A5VF5o/rFNTrWsYqVqNON0Zvve
	 Yn1jCbylYG+VS1D7JZvDq6xZKnr2P3B2OuSA8uigEVgjgGUT2kGr3AtgfXXgVgtF5w
	 yMsWoTQvn5jdlhv0pxs2J8gPxCNA8ZuLsgGaS1hoi5rOlMJa+zaGAR1DA+xw+DOR33
	 jGk/AcOcD/fMXoBrAAl2N8ShuGR0B3Y0q1TxT5Epggjp6rbq0N0KLizQOezxJEke8t
	 SO7S1sUQs9slj3KG9gaY1FvLkCsuuMrgTeBCBiHHm2uEGjo2D1OBll8g5bumS29RvU
	 rWtl4cPLwO2QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9647C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644303368.8559.7197968203196191094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b6a059f1ba4d3be7d5d27b001b3fd5efafc4ec5d24c6decbcfbefd01ca25d8
Date: Tue, 11 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786443033
