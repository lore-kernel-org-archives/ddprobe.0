Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B801A01B0
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742920795; cv=none; b=UmZrtOzbn6U6V8BdRktWPOHgjDfN92Gx+X11q/xCVir0geu5dfyRUEA+5bEpQOsu+62/FTV7wYZmRwddvNJB+OsCY2A73SE4mxip7yXMIdqFO8pZ3JggXTOG+Cf/zrZ5EzWv/zaynmPDsQGaTJ9Sz254M9LAaGmYCseBaVRqHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742920795; c=relaxed/simple;
	bh=LgemZuoHrrRSmQi0PkQsYeQ+BdEPmiiyfzkxnrJMNcU=;
	h=To:Subject:From:Message-Id:Date; b=PIITDaXIpB6P16sePcJupE/4oETIyq40IOwDzgfDTAoy2dkfMmXylqBsP88uTSJRPc8UNWuv9WM8/BZwqp3Wq+SRMnnsB5P3H6mNpJLQkAF3s1PO4VtzWLzNRFb/U4yO4nZtaq065GlTPF5a7nSgMF1QVVzoxxAgP04ljPyDVqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojJVcrlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojJVcrlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA925C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742920793;
	bh=LgemZuoHrrRSmQi0PkQsYeQ+BdEPmiiyfzkxnrJMNcU=;
	h=To:Subject:From:Date:From;
	b=ojJVcrlb1qBOfy2tiAOl0P5xCfISXth54sgiLZ0yjXbMNeqTHvgDyIibDwa/Sh+i0
	 VeRF487g9jGxB+CUw6ECSpYUJXK5ND9iOSvtHIfkRkZkq++j15RnJEEygBM/NZDqbi
	 rUgFHTODJQEVpdiSCZWV05ERaFx3HuT0ukvFHcNf22KX8n/KIl84bt+RBMgeJ31hjr
	 JcZBAN4Ei58XPzs4hRlABNvN0OARABTLcSeDlHPWiDD+AIwab93S2C46XfQn8294gt
	 SxsHAQpE3UzxU6YcEnBHg3wlGZL6wteOOF4VzW8ex11WryYfHTbdKNfbtEAiiwSxc9
	 xP7PQ9QgTGoug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9893FC3600B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292079361.28513.8624270506680872913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4aa113a10d893fef8c25645e23d7c02e2a7fddd7eb5f8d23135f2a1ba2b441d
Date: Tue, 25 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742920793
