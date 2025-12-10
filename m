Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B9631B823
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765397574; cv=none; b=Dj4tjGgpvS4Nw3YjUyPnwqeQyHoWgovt88YbhKBdvUGQXxhaPp0gzFDxfXGAwTxLvOQ/WTA2EgzUY4uKGOQ1uY1OX69hcqRUxHED5GWwQG2jSdRZMuvbkgTia2j8AcJzrQbkOfqRub4tqCZ7xmMWDWR5N0O81JFZiRvsVAB/JQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765397574; c=relaxed/simple;
	bh=ir9CbicB93PKEP17VYBBw/epRYpOSxIe+m9LtfVNPeU=;
	h=To:Subject:From:Message-Id:Date; b=TArU2WB38bNNy7XpTrEnKxr6CXOVgReVTfqUVx2bU4cYv6MbMjzmtoLp4z3sATi8ZNiyzF7zNDdlU9HD6axhOxIapAJXzGz0Nk7ZlXKc1N9+vUM1xSnLIAZu3Of60ki9zXYxWfPq+5GanLVPNdkfzTpooF+TOZsEvg+DVoyxTpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqTBMM3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqTBMM3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5934C116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765397573;
	bh=ir9CbicB93PKEP17VYBBw/epRYpOSxIe+m9LtfVNPeU=;
	h=To:Subject:From:Date:From;
	b=nqTBMM3SqLlubePcw6dThCQW4BYIidYQd2hvpJsWHatWpm0OLRa6NGUSzvBz07kS/
	 kTfO3ImznyyXPdNFy0BdslmwvPHfRTPRG7QjYW4W1tR7gGXo+Mhz28QAcMxb1lADbr
	 /WnCmDdg3DindcaDHQ3C/WQ0euejgT2g7YMtdEam/wzfku2AAuJg7A57pzoSZB9I9x
	 BBtFWN1gqnZR+R5eUObRxQPCxE2VBw9LdgiWuLHrb9O1rBY0BMnMnOBvMc7b7Cn391
	 SGUxgn4MOSc13socPQ071mbGXnylAdsVDMAoOLGqCR3cY1YckFuimvMwFMRoKInIAL
	 +kcM41NxxzgDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99217D3E774
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539757361.23335.12455406539105316256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7cf82eb90eb5ab53d545577156b9a60503dafff6d86e22e3f438e10bd068f2b
Date: Wed, 10 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765397573
