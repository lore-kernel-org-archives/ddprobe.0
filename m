Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083652F25F0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772279094; cv=none; b=mm7ngX9t2ZTrGKA1K1fqUMjZYnRzxNxUtGGKtX4+g3U4li98JlOkjwLNg+LzCLnZDI5nTaYZNIIuk/mK4h2YswhtSdWz8wsPs7rSbQewuSAm6eMWjEGbiRPH5dVNPjYcR+AUO66vJVurnDzGgygehoOT+YZVN+pSwmwWFIeuDcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772279094; c=relaxed/simple;
	bh=RCGMTq/DaGe617LoS09ZKIUQxZ8C3hvK/SoTbqPnhDk=;
	h=To:Subject:From:Message-Id:Date; b=A8PO83+ciWYmbmMng+0psbQ8/Q9lgl/fS+LVvgvt72ZVGldEgNJqSWcIw+/m/f1VZjEznVLfptOk8ObT8HmEUD/aKxogOl9CoHfl8LOok+ZLHWmjKvzK8e8ux/y7/vaBtooinwK31YuTOfc++5yQbormrPQ6LV90nIryFa4aLw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i65xIXdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i65xIXdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2857C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772279093;
	bh=RCGMTq/DaGe617LoS09ZKIUQxZ8C3hvK/SoTbqPnhDk=;
	h=To:Subject:From:Date:From;
	b=i65xIXdDKIlHlYPQKGTOngzJPtSHPfZO4pgbsCdlwoX0Vv+Pg1Disj2r4JpfFLbVz
	 S9l+x5V9hiEd8lsHwGzA89X4cmL6gZCFQTuFxIqblaVP1vnet0g2aVdxzJ6xYPi9qm
	 JOFk8xoi/WSa7lR6enlsxXzVhfNUc92qZiSNwFCB0gd7QzJCh+pX6J062sfO6m7+6B
	 sOr1dsFt1a7530VzmwmVJVvVrmqMlmcpnln5PO6oXYXGU4t3E/qEY5FpTbC6gqj7tu
	 GfZHqtkSW/JJKFLBhZhpaw5YB+hJRnHfkz/J1ppqngsqo4M6+y4TO6WscmaNVQLYp/
	 rranjNX9JK26Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED1FEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227909358.10834.12211867508850641795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d19fd5e810afd371ad83338eed9675c7f25c27ac0e2090e04f6398da635b9c9
Date: Sat, 28 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772279093
