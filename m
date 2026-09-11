Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EED47A873
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789131036; cv=none; b=C4RqilsobI94F4O1JB8WQgvAsSVJu3HFFnEctyYBMPEj4C1m27zLcSUCB7T/zXZ2C6oeEqqcfGymKzmogk3134CiPHDancYawlfNAwiNi/ljIH1d/NIEcs1icjYu/fI7/ztMIncKOkcNB9grfy9rAutKc8pbTz6t6/IrmcnG6H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789131036; c=relaxed/simple;
	bh=Vksl3YWO5jHnx1uGRN7NgQyWVKKDKjyONNdt/4kZCoA=;
	h=To:Subject:From:Message-Id:Date; b=rYyujcsJEVQkiSBFmub4auOqxX/VlOdlxyf7m0Q7ztF/5IjYeGc1c9WxZYIEBSDau2AggxyqiM+YVTTcsAvizD7VaqzMjYu3RQQMLO+oaDMrdocVYRZwylcZiEszf1VgAAySdc84TUGy4EVv+vl3n7fXp77Dl2wvFaCM55jsMxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WA6W5fm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WA6W5fm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6EEC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789131033;
	bh=Vksl3YWO5jHnx1uGRN7NgQyWVKKDKjyONNdt/4kZCoA=;
	h=To:Subject:From:Date:From;
	b=WA6W5fm2x3R1qMGHaqMwlPfHCJ+qPRCkI4Mm2jZsC29xT+ZPDCRpAXkPv2yzlDou8
	 SVjXGrYTLoHLDO4WlvDYzUEFci04dnknPzIz9Ak4k0cU3r8Pz4gPcxBwERh9ywYJcY
	 +euA1VfDRtdBbM8Rn02Qio7cK3P1kYWwbO0MCjIBojMF3USZz62x+K0g75Jr3/ywhZ
	 LHucYRa7rKPZhqGZWbDZUuiptIpaF4rs/6b28Ql0JtqcCikfoPP8bHnlSfKT9YB4a0
	 iwp9H6LwHQgdNDtDzkK6AZXRVA/iEXgAO6KsT0zmkZhbpoBAxWjaLV7M+EsmKoEuUF
	 cU73N5QnPnHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97AEC88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913103368.6736.11841976845283151098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46aeeb21c46481fd4a48cb9bb081aef9bfd7aa9bafff121fc8a757d9272ce53
Date: Fri, 11 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789131033
