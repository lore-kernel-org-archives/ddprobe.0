Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26299381B1C
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791319834; cv=none; b=dqiU3R2/ZjMPjFO98es72REGUni/OYS6ePn8jNtvG2ogkKyCwhoWfTrbqbkwSNsK85iq8RkiLqyEiGeVNc+lETvK866N7auVPf3+DBHHDT202sOfVsXftsIvMQ0NgDi62Q0em6/L6g8e4mIoHzjyK+KwG7wN9kWdp968jnUT83o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791319834; c=relaxed/simple;
	bh=IRAzYB9tcQad34yh1iZ25EpE8QXNK52wr+HuxJXII98=;
	h=To:Subject:From:Message-Id:Date; b=OpkgbTCJoFEQkHRZlyIYYvha7VNNwQ6c3zZstLOGFTe9vuw1yUDTdfo376p1YOd2vqrmhy5EPMaTaW3xum2TnJBL01Skfil909N85rFkYLBBBPhkkCmrIKtakSC+hpOAM/BJl7nDqV7aVdxoU+j+GU/qGOgJazq9PO7DCQnvaaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHLM30KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHLM30KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCEEC4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791319833;
	bh=IRAzYB9tcQad34yh1iZ25EpE8QXNK52wr+HuxJXII98=;
	h=To:Subject:From:Date:From;
	b=nHLM30KSqbcbxjwpxPsZRSiOpXipnfb/QGDETefBSEjmnZh2voCF3cr3TBqmnZ+D7
	 kQqgI+er1840W3PyHQcKq+zoD9O2xQy4rzjDpZm8wZ1s62bHhwHsf03Ses4WdKiyxh
	 EATv+k7LAQEMS22od3GVpi6FkTA99A3/LiNYFA1QSG0sJ1nLWWdto9+6K84BBDpVwm
	 jNFrlRWpmUTvn6PkEJApDeAuv1rKcFCEmnxT+hLAAjPeXjIVi+qWhkdKz76nt9RAW7
	 3vommeYcmzF1FGKtYnELW5Hutr/vquFvw8mjKV3NAw75Lf1giXlqYDfAb3iyTpHSsW
	 TBA8yfKcmiCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF32CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131983369.28379.9089162396611128611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12e42473afa94660f6e2d52612d7ad4da5d40056ea5e7085f3a8563ca09406c
Date: Tue, 06 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791319833
