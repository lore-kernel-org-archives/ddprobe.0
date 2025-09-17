Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174DA1C862F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758074394; cv=none; b=KtVDm2OTfXu/Ho+9NqoTE/Zb2koVdlNMISFCTSPTT661/FKxFLplhbsDzvk5OGvInevoNkpvxdqzlI4OEkmxHLZL6jeMpAUx73CT1ZbXGtRhiwTNSZUftKH18ox7nMVCg673EEvI5p6ZcOySD/tQm4SP593CxdBxTVaWrTeKIjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758074394; c=relaxed/simple;
	bh=u0K9MaVkFeoSp3hrdT+xnYPRSVGDIkA5LWNDU1gpzDg=;
	h=To:Subject:From:Message-Id:Date; b=feIHsNOsEDJGdnUUPVzSb/4sVgt7rSfG1kK/zMsf2HbRtjzsl311I8h5bStjGZTx0su2GPaGi4ppLBP8YdhKpQk5MGcYDcopddPXM2ECE9j6g2HNk98L2wd7eK/9dsuXDGIcxWjzVuUow3x8W3O367g1GU/CBriMWQfOIMBLj9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sp1ZRzlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sp1ZRzlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCA7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758074393;
	bh=u0K9MaVkFeoSp3hrdT+xnYPRSVGDIkA5LWNDU1gpzDg=;
	h=To:Subject:From:Date:From;
	b=sp1ZRzlcxkvkGRp9e5jkDvfYcI7qWbkV7rzJcY3Kyasr22+dZMULoIZ1HdswZJuDi
	 379BVcY/fu51v8hrLXEqfiabo3Lzy3uHSw2i43klVBRXNat5w3H16OuMlmCMnQwVcB
	 32sBYoCH0P/dhkmicRxesVxQ0rqt+A+RPUe+jCD5q0YXhb5ezKVUiyDLFJYjbvJB16
	 1wf6CmaKr5ed7PPuLItVZgX+lkSSZKTl0jlT2Ucvb6lmdXjJTokdUijHod+etECCj2
	 tWJO+XoopHZDihCAg7m4wPN3ViUKNMpwB/p6jux3S0sEzqor9uiHgavwi8xpbXXrLg
	 zlggerhLDNtQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F218CAC592
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807439357.4942.6975755983558113843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c11103f8406eccd570487fd35b0efc5200d63b0c08dfc2db1ee829f153dc056
Date: Wed, 17 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758074393
