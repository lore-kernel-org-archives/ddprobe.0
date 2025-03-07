Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503A918FDBE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741322334; cv=none; b=KUv/z1Aj+iN0qDvhOhr8TuKXqn1dD1gk5v7MKuVPyOFEpyAeZmT97JMjVlMGM0jNu73HlZ8O0iqM2JsKyIqAg+qIYvA9HZu0O1M1gmDmiF3r/QyNXVW+LgS18Vh2JIUf1HLoem3C5LloNRHfybbxsFfC3g1rvZy8/MiESoDAMk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741322334; c=relaxed/simple;
	bh=3tpXSemdF0UOr/QaMUKObWiAFkEv84nR1YsNK2QE45I=;
	h=To:Subject:From:Message-Id:Date; b=ucp0CNuJpCp99i2ubOLU1M2DYi4CLUG4cLHBWcda7DtsuS+mhHdTSV8AKGjRTElq7aSnklZWWLuSWKntigpNNJZacklOaPjFDBnNiHdrOzVLhZw33OkGfJFeRFG7+ftFc4x00sYZ6nG8bIheTgLjaQIOSevnI/UptOn6qIO931U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJYdm40R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJYdm40R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741322333;
	bh=3tpXSemdF0UOr/QaMUKObWiAFkEv84nR1YsNK2QE45I=;
	h=To:Subject:From:Date:From;
	b=iJYdm40RbSy32zHJOSm36FUegVSwHpeCZGqGX6SDTgsx+gXVgEiMhowtydcObviIw
	 FyephZoKPueZTnEGeZTG32hnSJvUfUDv8hOWkzFBPn6E3oZBadgxa3nVJTa1Z6/L29
	 S5sJ8veyTcPQekS/x29ra/vtjoKZL8o3Jr3Spds1JmbdIf0Vhgd9+wb5cPcSfEHn+K
	 OyO7yk73NGJJB7stcjxCe/WlXrFITCcWl5BEKz6cWSqu+x0KM0d1Y0WSQLu9g72Gmw
	 vUTxkvlG/88SV33y12k7raKD6ZznOfaUPUxtQjsbMerBRocYfic2Tt5nX6L2LTmeAg
	 3ZqHfgdHfzoHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A3EC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132233361.26068.7899968628853991816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20858c59f15d1e88de83a4d1f728f4a18570ab2c9e0b31ac158a0b9d03903513
Date: Fri, 07 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741322333
