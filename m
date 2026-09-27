Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8CD54704C
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790483434; cv=none; b=dxXCfYU5cmL1eIOuz/moiO4n4mMfjwLVCkfioiZ438YRNuurGSQQ0wNSDEhoMcla190WjlyJwEFbwD9dixmP5KDQh0q2M/wcsOPngDzTAfv5RkgoLX/FbRT0SIYHJRNjPDsbo9kTAQUdllZn0VWN7edkxUWoOs0tyNoBR6Yo/2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790483434; c=relaxed/simple;
	bh=ASuNkffbxSMgnOFVqCa+4X+w7qBiC7HiAujrK6/p1rk=;
	h=To:Subject:From:Message-Id:Date; b=VrIpNgpb04dB6qE3fg+vziPtIYXq4/tr6AwrOZ81npldggdTluwr38PmrX9efahMbXWhu8cGSzWbTVQe76+gUPG+FvKD77aNlD9h09zsf4wLEu4R9GSGiiASIAAo7uG0LFZkon92kR9hFMKddhtxxJc1r3YhQs8l4n4kNYqO9yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5kzlK1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5kzlK1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BF2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790483433;
	bh=ASuNkffbxSMgnOFVqCa+4X+w7qBiC7HiAujrK6/p1rk=;
	h=To:Subject:From:Date:From;
	b=H5kzlK1d/f38uoeJtu3aQ8qLGYNnTVzIyXFwMkNck0tRzA/oMB6EoxG93d5U5wglO
	 L33f8ah5aFXfjT5g0555i19rZQCtn/g5NVTQqySsI2IbEtLMoO3KGIVY86z10cIqmI
	 PuULBd5johXLjPcUAsf7atBPDkw2HOqu0yBZgR/xONPZmLmE+e9C+saug8fCqqJkR9
	 3qU7PLsqSKY3I87/KBGMpKelzdOBwVKEtSF32jlNoWf9nP+5eDWsx1rcJ3obJaBvbk
	 yZDIGs7ywh2fNbEDmZ1Nms0gQ9MAX+gb4WhMgVb7yFSP8BNMK+LYF/y2IZI960FBEi
	 Z3Z8upkwftUPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD897C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048343370.11874.12952751658857903332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a453b4d8bca27b869a311f278b001f12b0a14d0d64761a08db34b44895136f
Date: Sun, 27 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790483433
