Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2371F14B08A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777090654; cv=none; b=sPS2kbaKzSm9IxIfQrOruSmO5bW2qEVWSvsYri2IUo0fR/w1M9+oS9pSfJzCOJ3lFjHbtT4XEqBfJzA6PruBrb57ZLMK9SrIhyLMLHtJouyix3Gj79phsjtA1tw0Wm1N78bSudiOWBwjXbrUktKVTrXvLAC77KHoY0Aic+CEY8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777090654; c=relaxed/simple;
	bh=XsgcTCj3Jsta15FRvzUrHkexniZHvilOMT7iWBZsOLQ=;
	h=To:Subject:From:Message-Id:Date; b=EQp+dEw9J0XZbUwa6PGUrel2JkO6iyEwHuWRBI86ASaKdiTTSIS+eFgE6PWOo9oAXuRiw9jvsNKnW8YG5WQKTovZGyBnEqHCvwU5ZZ9hIj4CYOVpVO6Xc5QNTNsK8mFUoAcR1itC8SUFu1+P5wPSiqwnoHgOs+LhST0CUS80IdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk45JsOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk45JsOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1032C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777090653;
	bh=XsgcTCj3Jsta15FRvzUrHkexniZHvilOMT7iWBZsOLQ=;
	h=To:Subject:From:Date:From;
	b=Uk45JsOjPUagI7loJ97EqdbemEf7qyil+rAgMlW1e3M+CiiGcVo9Hagn25j2qixCz
	 ocAYbPcPSuI3j5OM/FlfD6qou6GIC9CrC1wKGBe5lLdNxx7qfpuOjv7ZZKLpk5bfOX
	 KDxC24Dv4osvgbWBTpr6zF7AyjaRshsa2aFCS7s4XTW6vDBu5yGeiMFDWtZmNzAuJG
	 WtLSFg4902ECp3ixvgu6A/cB8g/RTCfizVvQzWYX1ky9tkbquaLxuzg9CvmTGDveUB
	 nmN+u5TqfuLz0Tj0kNBDyw7AMTbwWWMQ8IsZbZMj/d73dlwoqzte+5EVjsFwzishxk
	 gDaQ86maOZjiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E2DFF8864
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709065368.14210.16801834950265387514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611f60803103328de44cbf050dd3fe9d5fcb712c6bf7931bb068a45d7b84cb02
Date: Sat, 25 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777090653
