Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3395661
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766613834; cv=none; b=txHwmlXZtCuhquT22XKd3kcRGvNCi6Mm3f0tp6GGNmV+DBZsuCmikWH6nrA8U4LwAhbxnRr5+2eBhow+jpck2Ed/oagHeCVDYWQqCd+9DXusuLrs/zILybi7EuxqD0sol8mBjQppMYj+7qv1sS3yxx7lB6sx9vsfQ7qTymH+7gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766613834; c=relaxed/simple;
	bh=UzVmkfngy//jf6pGbXfxmD1b7FmJYEn0Rvf6X3dPAnA=;
	h=To:Subject:From:Message-Id:Date; b=CSj8VkTVpsRkZEjIZvKcdKgKSaQlTtCZb/pxFy7wopLV7wmFpSbY0ZdX6TZocaOw3A1b2ikRWmpPjD1IW5GGno38O5GGn6WKE4qZATawMskKVF5atouS5Rzw7wK3adfcY2z6l1Dcc/V4rPzFQps9ucJZTDT7U2PE04qfOT/hkSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWDZJh+K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWDZJh+K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B02C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766613833;
	bh=UzVmkfngy//jf6pGbXfxmD1b7FmJYEn0Rvf6X3dPAnA=;
	h=To:Subject:From:Date:From;
	b=TWDZJh+KKpyd07b789er9AXvYNvcjAcHtMGnWSEAveCADb/917APsgoGg/+jm1nms
	 CCjFgck7VXaHtBLE4ZNkfp9H8MZAevPWBRhkp0liqseQX3lsBI57p/eDI81cNsJ+7g
	 33LwEDGyqwHHvKRI7t09ZhyjjUwwaQK4p8fBQIP6/bw4zoehyLkJO+HXfMoAjhGgho
	 LU2Y27oFlHcaS3XVd9fJht49aGisrv0oU7MvMqE8XtGMQ6r5y9BC3Ye1UscKgoJaMn
	 ktlyeBbXjph+LlayKDcnwrIDZewfQGcnlMZUt6fj97zKq1q4eFT4SI0RDMNpoTusSN
	 BXotN1zfpOFGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978C3E78497
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661383358.6476.15297248837356079848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348ef9bfcf83f250de295cb8fb5e6d87472b914cfbff13ae7367ead14597514b
Date: Wed, 24 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766613833
