Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA4920AF8B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743589194; cv=none; b=K87WO240zA2D8C8ySp0c6XiMbpz9O2/L2O3JhX550b0ZYRJQY13URCGvwpL3Y4YGjCmM2Rm3UiazVYV7QjRj+E1GKBiZLNvFwQQ7Toswh2bD5RRibGS99TkxOpvviIMwnIWLhn/CrAaD/sbzYwds44v0VAP2D7sMYhgNMGKkmeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743589194; c=relaxed/simple;
	bh=arCEUUJr7+6F2p/Tf2sCHGsCuHqOYW04I/hKX+qW7oE=;
	h=To:Subject:From:Message-Id:Date; b=sN39eIY5lI/kmrDSjVFlyzSvITLhyD7exL4Ez+LpqLb5XaIxLEPhGBK2Ay0OFS32CMCoE1Ims1WaUI81HlPcns5WyZlaI6eH8Piv3eds1/BGepfPDb8WAHhFxY2V3VKV/DYweWyZjV66J8OmjQeD4peyQw9crpgdti5Fn4WCHHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkdfPjUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkdfPjUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF57C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743589193;
	bh=arCEUUJr7+6F2p/Tf2sCHGsCuHqOYW04I/hKX+qW7oE=;
	h=To:Subject:From:Date:From;
	b=ZkdfPjUfWMF5ZTZ2g+crgbNi+wgG5FB1ft1mIOFsJDi+rMyLhmiOetQX2FJHGnSuv
	 5rluxKxkIKnay4I1TxIwkHRiVn/adV0jEvsZ49/sodoKNXCbzJ0Yri29xvVW4H8UYD
	 kdOWkV44psFYPC4J6R7hAv00T/IGu813JMZegkduYqKkCJ+wSX+A/td1u1HnlkajHY
	 9e2EaEKEukDKFdKQjAFNwxS9Y0QAn2Zz8uL2u7RTNkRDzDlLtE0HEiaq3g0hptGggC
	 CG+y6FCCJXNfYnt4Y/c38djAKAH9EvzCikZx9fge3B6k80V2sjSwoaGF2tKeqkRcWp
	 VmDyAuG9Hedig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7BBC36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358919363.19502.4263366180922559390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035fdd9975339133d03e2a5b868a588931cdbcbe8b3b94e89398459869863e8b
Date: Wed, 02 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743589193
