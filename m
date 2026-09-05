Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAFE46A611
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788611434; cv=none; b=EtHjTl+V/pQuXdbknoH8eK0l8vu86uOpuwQFbpuIWTYC+uEznHUKKrwk/vq6rRKcbu+Y9NTVyjAZzYoCH/KDzmK4fZ6JK+MejgiX6vIfH+ZEVrGy+Nr6ggQzA4d8Mlu8kTbX/sIn2il3zdYB3ec/UgY9oNvsZPid6ee0zbnMLK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788611434; c=relaxed/simple;
	bh=bW22kxucfyojhQ4W0KUiBHWljdkwbjjh8F5POZnIQGo=;
	h=To:Subject:From:Message-Id:Date; b=GGGNACdPEhXcUU3gtsDzaXZUlbcsiJT+DohxMj8nAjq/Zhe5rteTeIxIJWyldJwaAbIDOMqQ4O1SFDDoQk7ye90q4hpH/2GtWKtcU5PJBBSGQ5xI5ptVQyXCDn216wkQUAQMweQ5dghRKidvhDt9cHVPkA21nzBo5Zd/oCAgvII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSPRS20b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSPRS20b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD487C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788611433;
	bh=bW22kxucfyojhQ4W0KUiBHWljdkwbjjh8F5POZnIQGo=;
	h=To:Subject:From:Date:From;
	b=dSPRS20bjmVpvCgIDTl08YmnxObikXNOVgfAXZJAlwbtuS3+uE2eoxKZBO/qA1WAr
	 HOzMw66TdIMtBkoVnnGBFcIXDmyWUNQi9JKHYgTqGtMXi2aQnqjlcKZZ04lDDytsWW
	 aSJzHa8sU8wLZe/k8nW0ltC0KfrpQR/wc1qbjqL8KUknxpQQngYf4yUr2u9PPWQ9IK
	 PG42Jc35OoyDGU9m6CJICRiKSAFAxA1WSWoX9aMLumQZSToon9V1yQd52Au8gFLkt2
	 BlQx4rA/EOaWkQVkb+stGVPh/bU7t1/m4V943iH2XIdAMMLgIcsseOrUE9Mkj1OgEl
	 eA9pSOMAo13cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC5FC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861143369.5150.15595009125159410159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3603f5be10b6f4657e1ff3cb21a074e504912ac4b7f413274bf565ed264d07
Date: Sat, 05 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788611433
