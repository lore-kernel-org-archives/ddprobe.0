Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C73E7404E
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792122034; cv=none; b=jeefNoy9O1ixpjsgzROx/oVoHCWh95tTRJ9DCazQ9x103amuSMQ1K1V5kti4+TpfIGrBe5QdqBF/4thSXM4H67U8kTs3YvIrpXxR+uFpRDZ1XxS9dRDVdXGfCw8FHmBIdFMqBB0QNzlG70rv0MkfByye4kUYIjbUHt/yZMAGxEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792122034; c=relaxed/simple;
	bh=oeTNYd+oqOVYglSb3ti7NY92l9OZeYT20OPp9jJ22qE=;
	h=To:Subject:From:Message-Id:Date; b=NhdUD9RZQTWhilabgJwDq1NS+V3PPi+RYNgkXz/emghA7ZtEve8/+cXib5gc3ZiZ8iSwQtmylCBu+he17RHmxmoPUzpm4N+ZoGoOFBtrDwHqabC9P+WfXwukO0MHFKhXPqHedPfw5agdCMzWRBZjUdaNJZhFmWB8HsOczKU5+oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6ktRf1E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6ktRf1E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF30C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792122033;
	bh=oeTNYd+oqOVYglSb3ti7NY92l9OZeYT20OPp9jJ22qE=;
	h=To:Subject:From:Date:From;
	b=O6ktRf1EZD7nCTct5W/V+/WpcYjVAeJT6vzxoHUdqE9NEeNMzh0CVMozMzhQCS4y3
	 O8M+/couYTZB8e/W1L/8thhclRBrVbadLxhSmkht4XEyxpkye1Rcudif07xxBq6Eti
	 KCnlk5kovrAzJCqPg4/QogbY510FncUFa4PDepmgg9HaKD4utXLa0gw9DqP2kV1GFg
	 EsoCGgqLo+EZHN1afA2ovR6tYd5g2g8v2XPbB8v5i9eq+4pI8aHmdF6hgeSEVwcHSC
	 1sXKN1JTvljuPaX5/qg1Q/n6fbOq7uRA+LKm9XNcYXVHyMFuRUz92C2rbex5lA2/RJ
	 45Yu2H0MI0K5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1DBCC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212203369.20351.2428439255352532286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcdd608cb7f23d67de672a5e193a30876dca1a26f8796b7944a081319f85209
Date: Fri, 16 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792122033
