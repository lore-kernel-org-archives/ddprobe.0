Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA8870827
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732077954; cv=none; b=IQwlfghNafqzFP2qwKbvkMAP8WAjBl/kH3gmRIvKTNaobh8rsHLpIJyAh5fbfXocg4N35SPkKzBn5+zk3EhviJrY5Kd+Ua99omN21XvEEAH/QM8M4TZ8Y9vXFTEMrOvo7YIEmOIWzCzDJYCx8MiJ4v/tKfyBVSWvOgyInneSllc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732077954; c=relaxed/simple;
	bh=bzzMi7GIhqM46+EumEyUxqGH+YZgoMYWuBZtlVmQpMQ=;
	h=To:Subject:From:Message-Id:Date; b=qPigxejuWerXxweEVifTPwv+LV59C30EBROOaCT5/XKTGC+xS/RijgVJeET+l6WPcuo8uMw59phVuDaqy4C5WZO0yZHOeTqVqDyxtNF0A9zATK+Ut7lKrfPwUsnr7t/7Ktg5z42RKlZJ2YVUhMh1k2iSdzdd26BwY+052gL7CNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+yifRx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+yifRx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7546C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732077953;
	bh=bzzMi7GIhqM46+EumEyUxqGH+YZgoMYWuBZtlVmQpMQ=;
	h=To:Subject:From:Date:From;
	b=K+yifRx6jX5xRkKLHlP7De2bZIGVM/SY92pi698Z+06KPDiIHjYU6CxlSUgvtuna2
	 oH2TkT8+8EW41lvmgLdwIWUmbjk3Y6G30omC7TtyMVzgOjypfYnXOoXbim8aB4XafD
	 TjP1Q/d4/hZXmG++80i7dzqXLc95xfLFaWv3E9IsdWuqlXcnrO5aFX1vvZZs/eQfy8
	 MGkJVDlieeC3M/iap8evi4NiV5qN86ubOOFyTYvCPu4qXemR+O8mk/Ys4Hft2bhPy2
	 fUyf+DnxvDkpUSYYhra1Gj0ZI8RQSOs0xMj1nA4Id9JxGK8g39J2ZgFh3WY+mLX07c
	 eWQT5+tywX8Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DAD6E2B2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207795358.12667.18166686277399114079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32626564baea94dd2b1704c0abd83dfbd0082a153ea7b638a37c0174ab3ef44d
Date: Wed, 20 Nov 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732077953
