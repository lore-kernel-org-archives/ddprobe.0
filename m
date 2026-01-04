Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DC43A1E8D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767500034; cv=none; b=UfYQG/3XCL4u+Vh3/qo0smmBx1BfOieK3YIPe5cJoqQJC8BG7ciwIIR6fK976jH8NhPyyFdT2cd+Xh2g7ZNNOZn2MDdU1x8OdL+BywB37Bd97sOxBd6XOAmFPG/6HqiWhMC2lEdZtQUEsIjfQjUJZQkLG9Pgbp6iXcQxNjS0qgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767500034; c=relaxed/simple;
	bh=rhrOCHd64MVEH3EofUAgXQGz+iaaDrjLGKWOPmIi/Q8=;
	h=To:Subject:From:Message-Id:Date; b=XGHCb1OrKs9aqiQ3BZvwz6gR/u741J68/aPl+ipuWgTF15ZgADRVCcWSExFpQUNVeUDlW8T7GouvsE4yKMxVH5PLnt96bUYhKZXxAENyu2SXgBSyJ7OXmHdcmXFMY8OGYtxqeTqx7/ddRB9ebPb5YrzqkOvwqE5lGuAR+nQ80Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rh5oKiZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rh5oKiZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F00C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767500033;
	bh=rhrOCHd64MVEH3EofUAgXQGz+iaaDrjLGKWOPmIi/Q8=;
	h=To:Subject:From:Date:From;
	b=Rh5oKiZDsMBgYRXKaGPm1GHGZQV7TZOxPDbJJLy9uomOkgP0OV2ZbZQQ0yRDXgxqF
	 kFDEOoed9UJcTLmJ1E7f5WWP1SbbzVtGVXiKYc0TIvQxvO6pKEi7U1ht28OY/x1xqN
	 acFKhjHyg/E12jg6OXTW6WoN9usecuso6ml0PLFFXtY1povdsPXX5UOQD+6LfiwCJx
	 tb3JtczptH0QWMPj7+5mA2UG/r2nwFFBdtHSVVu4/Y8dOVl7Ftw7LBjiE15RY4leGX
	 /wOAvFq9H6sZMCN85xUKvn8S9nd3C7dhLdAW5IsexcS8B0UjaydsYp+RtLJ5VPxzD+
	 x5fb2CJ1N3s5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C6C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750003357.15491.303664742992046039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3dba93488b0dbf1babe75945fb207e9c3c4568ce6dc98a55bda093049411b17
Date: Sun, 04 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767500033
