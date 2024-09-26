Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B6D22615
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727359554; cv=none; b=TM9ZMAurm68nZNsE17RQEmKCPiORNauQVLtMu9quGAgWczyDnH8Szed4i0D8bggS7U2EFRgmR/RKnlDp4aOAf/eVmdz3+YQfH26hcQ3AUGHBGMYUSXu/hOif2ceex1ktmBelTvYuoqNE5eVU9QxzJNhgr9OkTI34KFA7dm+GsN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727359554; c=relaxed/simple;
	bh=9PpUjuzPaTnyO3ynGt+n6MY3bGQcgRrkf9kPFUYJ9F4=;
	h=To:Subject:From:Message-Id:Date; b=XAmVEuakAEVsQlC93GIHkyrDjRkDqmjN37RRSqbhOglPaMw1sDDrBf5JeuaTnB4pQz/gXeG86kNm54qU+vIMMzOK6sHeFHAz933KyOwHkKAbkMnCj1gZLLE53sDx99zvFb+PKGL+to1GcEd57w+hocZ5fjV3LmbGxqOjg5rQsDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDQWaFUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDQWaFUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D72C4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727359553;
	bh=9PpUjuzPaTnyO3ynGt+n6MY3bGQcgRrkf9kPFUYJ9F4=;
	h=To:Subject:From:Date:From;
	b=LDQWaFUwOyDSiTS2ntV36yhTqtagDFJIsH2S8T4W5DAzOfna+T7+P28uAYBQorfo3
	 gXQpO7xv8fzyF09f5ENMGHJsX1Byin6SfV2dd0OrmvKb0rCO5NZa6JpQrlY1wYATYI
	 LI186LIX84jlIR6eQXKzTTY2PrwncnKbMEkRa5Tkr61Ahm9+LK5OhYDZZ+zKKQg0d4
	 10AhoASfj1TIOeSmtr1ePkCMKv/Y1UeRWm7eoWAOQhZkRCTFYl955LkXYRlMlDM8WC
	 xtsy7UIOOmQXTA73oNHXFRNjxhc97/CWf3NiFzn+oxVNZOQoXwNrwFfzgxRkKjCX5k
	 DIURb8Pw8EYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E5CDE00A
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172735955359.13895.7235643012276095499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b40bb07745bc958db8767b86d4581674f3fedb47db22b703ceae70f560e3e9c
Date: Thu, 26 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727359553
