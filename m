Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450A613A86C
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764385974; cv=none; b=LQhCt+EkfIh1H1uTEzhwls1TZitPPOLDiAcFpEfRnKQt05FGqThtheespLI+a1AEBVram+ZX1PsCUUeokwbslHKsJ0RZuGKLTTrV71BrzVmeByZ4i0fWdjF33wbnroGWSeiu+xI40BhsuXCCd+9qPGJ5ksnSJsTeYOs4OkOHqDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764385974; c=relaxed/simple;
	bh=xnhMw7Y6wcHVveCv2jevN0BG/30xUPZw4IdqFRzKZiU=;
	h=To:Subject:From:Message-Id:Date; b=eJVvnm4UNezRuX2kcacZRc3kP6ArfmQbeGQr1nrWXirzC+M5y2dq7ALx/hS7WFzvlhF+HU+YD2KdiJeyYBPtUTe7BnkUDF6k3RWRq14tgHUBeK6eCRrVITJ1WNiX3jENawretx+aRDD8ujn5H67J6nBqi3p8rGfYjfhDldjaZq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N6lFa1Ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N6lFa1Ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA02C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764385973;
	bh=xnhMw7Y6wcHVveCv2jevN0BG/30xUPZw4IdqFRzKZiU=;
	h=To:Subject:From:Date:From;
	b=N6lFa1Ko7txwhOt/7xSnu4qHiok959nBzjHbeHTGqtIiyxP/YrBhE+JI+r2UmE/XP
	 S7gaVNmNwMHot42a0depwR/RE8v0doLDeet1Ox3o1nwCyRqqohm8wO85E29K2mH+RC
	 2Pep65CYrYNFkQCuqsXxfNM0ratY7q/VWe0l4DdAB9QvJfNd+6Dt97BI16BwDYhxLR
	 S6UYhqX7+ASltyjJqGdhMpUS8qYIIWeitz4NkzjgOCalz961EEL3KGzz8cY8b8HpK/
	 RDCQ2hGt26Yu6gf4zC3US/9I3oA7oFExJ4/Cm8eDQdyHIigUxnBqPOJ6sS11iJB0kk
	 ti/umcpr4s0uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96825D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 03:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438597358.32643.2944833989135039366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41373fb6be6b42b79b0b6b9abbd6b3d044712fb6483887b6061dc6d2c16883c
Date: Sat, 29 Nov 2025 03:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764385973
