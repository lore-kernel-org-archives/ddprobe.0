Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2847420322
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763346114; cv=none; b=ineymSUYSqBaI/ihBjgLHOdhtpQ4Yts0FEpdxVmkybwUwioWyxbi8bYpIKlJYCoaqLQNG+X6n9vy/7oDVz0eXz50/7nDYsLE4XNx/2pB6rkDvlnHCcxOnIeKEsiziRAcfHYDnCaFEvSz/uRCpQ+vGbZfOKL0fJdeK3gh5ScLqYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763346114; c=relaxed/simple;
	bh=gTfqNXDOB4mciqPYDFChVIzZnfeYJe8/vxCtHbhvDJc=;
	h=To:Subject:From:Message-Id:Date; b=a5ycZAA1F/hQL90odJoIw5Ze/ewip1uJRi+9KEm0bbQikR5DGpWDW1V8XzrrggkgW7QQvO8sqgH9qfRy7vVUwlQ20n+gfzmyvPuwwNV8eqwPjNcy1BZRvNv5b5LD0NI6hQ6Fp4QKosxlJMKnZxZ4xp1F/ONZ5T/dcjPwHUuL+PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cedAxwuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cedAxwuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D7CC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763346113;
	bh=gTfqNXDOB4mciqPYDFChVIzZnfeYJe8/vxCtHbhvDJc=;
	h=To:Subject:From:Date:From;
	b=cedAxwuD4O0kHcxbSr2MOO9GxKYCCDqiT6O3lfwe+s6Ln60zXH4sNfLnetfuzcbPd
	 il6i23pmMr30+ip2/nk7uOFqRluS38WXrFkSGdX6/4PIIdMstefvWqnsuTstbbeEJW
	 bYn6OUM+9zZJc3wAgboXl7P3mBmmxtVAO6XuYP4YuT2+IAkMqcTpsTk2RTdsz8knrG
	 g+OA3TsEpSpZtiMujJM53ENnDAg0BFe8mgBJRYozPy83KSnkEzsOBJN6B7/tL6O9AU
	 oU0VCFXqg9FlV9f2f7CIvtyFAoc97xZRd+OU8DtM/uiRaLWL2xbolOuXxA4wrVV6mj
	 4StmYNBLNjyPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DFACCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334611360.11355.11457783138971497279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36c38c74846138180bea93428dfb2209c028af82659a87f6fc8445273926871
Date: Mon, 17 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763346113
