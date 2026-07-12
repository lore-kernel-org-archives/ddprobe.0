Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B8A23D2A1
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783833514; cv=none; b=tl+ORDbWWRp1hgdlOLlVr7TdhGJDNoDdHBAMHT9dYIDi78qXY5eDkTLid835trGRqpelfYyMns1TpR65N/OfVL6dEoqpCIf+MG3A6xGrjdaGnSonE3mpvgAd1NazZMTfk9v4M2+Du0qPuaC/6gxTvgOCfUw7WqcBg+ghLb96ATM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783833514; c=relaxed/simple;
	bh=Lco1RX2FkMZk8s2E69qSOHQO2qM1P3inn1mGIf8Z9Ao=;
	h=To:Subject:From:Message-Id:Date; b=f3+mBjZ6qIo4O6S9I45SUPl5vtvjqbbM5TaCJqbC0ANbj/0vbbUWmjukCW8NYZTVF644GvXrgQX7HnP7x1As2BY/YPt3cObYL5PsD7dw02LQl6rdgzLQMiqnJj9QFV2aRGarhYeMRU7BiJd74ognA6n4aTy8yUNNWl6X65dcoXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX4PfTvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX4PfTvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD3C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783833513;
	bh=Lco1RX2FkMZk8s2E69qSOHQO2qM1P3inn1mGIf8Z9Ao=;
	h=To:Subject:From:Date:From;
	b=nX4PfTvLHA811EAs+ODkQhAAfxgXgQLW3Xvf+ruwag1s7W7c5Qs47ONWKrhBByL0p
	 Y/gVsppfwmpLgal4VPTbNpc1Zzttr9zla19KwkQ0o5w46OiupXoNECMGcXcmqIg5kU
	 GKaYSbc1xAO4TuMCcl168jYhdmgkS/vSg+uzs8tmW7AVDbt1+GzQSNPwKTPdRIQYFc
	 Fh7stvig8KvV13iGdjng7G2ykBTPTNatb2bDbldLmApwDkvhunJ70wm5DDe5xYjIVq
	 MpoIkGUSiF2yo1yfwaqK2iIw43jNOPjWfuvs8/qTpxOYkpgyDQeBQuMxmSLV/L6bc8
	 esSy5tfMNjJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB877C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383351368.14809.17886907589548964375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba67e85b88e799d480475344b3b51f9ed968152162c0d479d2ff8a8a8dfa7cab
Date: Sun, 12 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783833513
