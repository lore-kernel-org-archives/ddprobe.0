Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E881230BD5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792291834; cv=none; b=j1e3r/ihHxiVGoocBM1ETm2FChwVlKoMmZxFx51S8Yg4n9bEp7UrLUlYnJetLqiaf181GRLznkVeWPICRzvx/hiBmi+T66q0MVEkkU9DDcA8Dx1V2D9yvX8gx2sniX6C82hzc4fF5oCZzlVeE3ddfO9yqHCjpr8W664MeWx1qmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792291834; c=relaxed/simple;
	bh=rZL6z/GAE4f2epSclccjuUBogriv4L1apL4XoFGTLzQ=;
	h=To:Subject:From:Message-Id:Date; b=Au6ZfdYpYIEpWcKbsteKvfnkPeS0uSbh2OjfpVZe7mp6c42Gfze3NbQSddtfLYcxMgT2AC8YO9LCbD+Sa94aNf8n/pUyyvJHnSxBej8O97p+m4W1QE/bqe3i3iV0Bvp6BCdH33oLc9xn1m5b7jP5ADTurLFVsPMBDsojJymIPZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUbdMdTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUbdMdTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABA2C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792291833;
	bh=rZL6z/GAE4f2epSclccjuUBogriv4L1apL4XoFGTLzQ=;
	h=To:Subject:From:Date:From;
	b=GUbdMdTmXB3wq/FAy0+Zp06ACiNeCyRySI3obvjA9lVwoF3SbsaDLLKVBT4OK3Bxe
	 v0jH1uLHBR8G5eT1tQwzzbp02cvyo2WfspnECubEa+jrl9JbDMwUob4xq1ijcCHgQo
	 KIqLTkFtOUJldtgLwjHlB548CPN4QT6HQS8jbfMMoYaHNB+yIA8SmahL7wI+4+FZjS
	 +5XD0YDxMbcPwc0bNVr0F+q/28UNa6kcoI5AbLJTmkkBdG6a6e0UwSnufNd01FjvO8
	 U7GLDSt8c3e7e30fHZPUWN/XsZV/su57Nidcdnz1BA8MrtviR95tJeclIL8iCBpy3z
	 F0QwTk5VZl1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B83CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229183373.26702.16653085935579298199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a395d42dee37b13ca821ec443f737d83cf46d9a6910733017bbdffcaea09a6
Date: Sun, 18 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792291833
