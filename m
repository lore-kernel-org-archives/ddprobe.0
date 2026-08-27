Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5999535C185
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787842834; cv=none; b=YgPAkyTP06CTgEFtO3hdHlqtQ6FdVnSKkW+BFVR25cYB09/RcfJVelBFZo0YggUsOl2BLSJPAdX3C3Wiup2DsVFAcvbPJLY+bSRFmYrJ5d2Djw5Y3PeFoyo1S/re811mL8mLM1fli2Guo/OSlDSREcPSn5uU33RDl6yDBbbvL8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787842834; c=relaxed/simple;
	bh=wZrVXO2g/pnsIZmsMMA0cTAWSL76ReJ2/i5q9NEcE7g=;
	h=To:Subject:From:Message-Id:Date; b=OJOiB5BOFjPGV2u1Z3cgoQM1/biEdDW7dQw/+KF38gqbXjgXYjtMnkGdZqP1ItQ2ICjf7NJtcaLUblWahIVX1Ge16b+/DkwOCWWwlkfxYrhtLZmPCKB6A7UCY49dtNrirRle0CcWb5BI1HamWD1uUphPMijunFGcUNPXnjWtNfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toezIy64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toezIy64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA65C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787842833;
	bh=wZrVXO2g/pnsIZmsMMA0cTAWSL76ReJ2/i5q9NEcE7g=;
	h=To:Subject:From:Date:From;
	b=toezIy64Q/7w4yqZ/i1BsBWSKqHueis4rCsMJXxibdCFY1W8RDWOarrJ5xtobZdVD
	 MhFymdD3OovPampul8iCz82MoXbHIfXM8wX65uUYXK8Cj1OnNorFCh81kduMBjxX7M
	 ypFkR8XsKp6oKmvTklMFQKdI9EsHDBoThr/u2M0rMNMzC9uzO02oMF/chn+qRVqv7m
	 WXUHyz1c574n9l2RWC4O4DFacUyOuSmr2KrYZCHSlsAEOmlRRDbqWhuNuM8ZqNSx6A
	 9xUZOT/qAc67iDp8uALlMQnOEpukhvTpNARZ3HhHE53uFk9uSe0mQZ648YEmZLMfbo
	 lxpHVF/aAnSGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9880C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784283368.24042.9404485437329907968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb456c0fe94634b76c9e6e2e9bb1240c3185afdb4bbfeb96b58c902ec319d65e
Date: Thu, 27 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787842833
