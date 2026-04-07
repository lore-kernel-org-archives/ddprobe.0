Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D6033B97A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775537134; cv=none; b=AA/w9p8jTw9BOgWBRwlibkJmXSbMuPXDB3BYk25XCEGTGl0xIIDMxxzUlfVZmBfuz8UNTU5tbzAsPlp4O3iIse1Qo/dWTvV+qYH+5etZb6iRwiSOZiOLc7n5jQnxeKcR7rbYtafXVfmWnpDzqSj5iAKNCiNOQUJ2qLPYrdgMKqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775537134; c=relaxed/simple;
	bh=fZ4o2QPAcnlDCCDSSujO1kVyW5baW47sBPAErkg9HZA=;
	h=To:Subject:From:Message-Id:Date; b=EFHDyLoM0b4CErIYkNORhB1avQf/8ztgJ6on2O1mzF2i1X1GcrPe1akfk4Tx3udzk3r9UmxMgdt+DSsny1fGoHiP6bTeOV6jpHDJ1Sjx6ueU16wSP8II4Z9nnMrVy9250BqtPokv7k42LOxfvniRV0AvzvFxD4SlKfX94/3j1DM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKIf/wMz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKIf/wMz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF61CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775537133;
	bh=fZ4o2QPAcnlDCCDSSujO1kVyW5baW47sBPAErkg9HZA=;
	h=To:Subject:From:Date:From;
	b=dKIf/wMzwF4W/9YPTCOwuaRYAI3PDPtqL3QLyUil0TVVWYYzY26xZmrBXW2wkDZ/i
	 0f9JDjP8mMQNloQSa99Y4SVvUMHxZAhvFs+UWFn3MmiZsAdXh077fLhwhJ/K62IGPS
	 wlKBV5nF4XNVyrGtBVUXo/jup8YzDOy/0BqsyS95V0FKOBe1CUUcUiBqAvEdsJj/w4
	 jXmUalfeIKvBBM0q834KQa9UzUrLqE4uQSwLn2zkTcomAkinZUpDEWrC3CyvyoiHTj
	 nveo1ljWW9qKc+poPLoq6Jz5/ivaKhY75skBgYui0hmzmadgNEfdFrTm1pU6yzFDop
	 dKH/S5EhvlHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E70FB5190
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553713373.9783.2342486919203757455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174d384b9602851099dab63b2907876c49ea9a5da04d4325c3ba4c464ff49ace
Date: Tue, 07 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775537133
