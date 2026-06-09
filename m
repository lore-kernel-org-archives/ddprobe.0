Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1E93E51E6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780991074; cv=none; b=MLV8bVq/EqDmrJ+Pu+E5t0KExvMrhl/pLFh6kDI+rNiRGK0aB7jAvrNz/4oZk3ehVF4RE9VssfXwrT3W1ggg3+MOrLpe+6bo28DkdA4ix4gbmVgaY7l6N9ZkcNPIF81uEkt7mcKBbQ+Sw0qOxwzkg75V1Ke4Na/oFh/17vE7/e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780991074; c=relaxed/simple;
	bh=3uL3uMAk9UPTuBt3ux2HpvMclik4V0VJMLDxT7kKmH0=;
	h=To:Subject:From:Message-Id:Date; b=ByNFeJE6xPSNNzW/Pu1t2HjpHlj2m0AsPMHx9HhNSdoQIJSRkx9FBTR5oeSJPpX+5c5jPSl/MBwh8Yf1uXvTJaV3M++u+8Ev4L2+RtrZxiBzL4SJrNNsLdvvky4gc3FnptQClaKmDCUu1Rr80b0kyD+n4DLoPJmFrySEssFdQnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7zL7cpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7zL7cpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8B6C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780991073;
	bh=3uL3uMAk9UPTuBt3ux2HpvMclik4V0VJMLDxT7kKmH0=;
	h=To:Subject:From:Date:From;
	b=b7zL7cpEG4hWNjNbIR2WCPK2ec5GxTEuDhIXc2R/uVwSN0VzOkq9edEBJKRjvz6kO
	 sKkk/1qWM7vKqs3BQvDH/CSC+mLShhkcAtnmeQjYLXfieu2ZqKr0kHhWzPeK+I8Lsu
	 kDgcn9iDAhUCzGRTUS53Mrbr4nVROHiOR9UpN976K6Y0u6A4tVdL8QEE4ynZR0+mJ+
	 hSzcm6Te1C3LN9IYrfm+K9tCi7UeYp7m1L78chzVno7PL3BfQZuHNkmIf/zJGH+OVr
	 s54AeFLHqvjWFtk0qXM63xkdYx9T67i/NhuXCForDEEAiTTGBiIS9MZ3b02hOGDWXQ
	 Pn3U1FLOmf1Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF53ACD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099107370.1082.507004426360793841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d968b185c309ca8e5a7428806107f06061f9f10760936f8345240c03eb502d
Date: Tue, 09 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780991073
