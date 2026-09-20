Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6984C28C009
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789938034; cv=none; b=IC717H5h3jlODnCyNswAd2kasUD74sYeK8xXgziuP2+bG8YdCyajK8isfFdOM+IaqtfAywTTWbk0n/OJC5dyP7c6bh6QYGcQDxXiEJAevEXkmJq5urjr82T4DRsGDfZv61HU6qEmOH9mcW2Ii5aDTjDBkplLuxS50/7nK+5CTPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789938034; c=relaxed/simple;
	bh=AYrZobcmCvMbi70DPZzrKxU4Z5B4SRpdW0a6iR4E02E=;
	h=To:Subject:From:Message-Id:Date; b=sl5Lh3UrOKeYGqwAnHFz1FedYiNr+4QmdPWiw0FWe6tZFdblkidFc+uDrp24eqw4SsQWynrUz1r9YBd8kKPHV4EvyBgXUVuEXS7T1cjZMFTvy/FwGfWFGhUFTOEpkhaGcjXNXllaOq3q+N7iufwsttiWjEUOGv9AftOyRA7xzwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccAj01oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccAj01oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE828C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789938033;
	bh=AYrZobcmCvMbi70DPZzrKxU4Z5B4SRpdW0a6iR4E02E=;
	h=To:Subject:From:Date:From;
	b=ccAj01ohxB4HrVEn16UgRbdIVME0pefFw73DP3TyO0OSv4XxP+6sroDjztgrlS16X
	 gMS/Dh/hC1E0In1kV900uFW6I5asts/tdLYU7yLkD2UcPdeL54UM/kEqHqneZbHNvw
	 iN0du4jJdDvjqBP8NSAs5qEyvFePIrcE38zRgpQkZDI7APr9ifZ+9+Mz0bpd0CCXJn
	 K3GRYAjROtWmuBDMxTFx3RvIQHr7lqKcswMmvyiHwXUn8vldgvPYvZcyGn/7Sfi4Ms
	 mtnV1Cl0Ad9TY2xRvrrFzEhXqUV9hmBDFegTrnnffKFvz1APoj5YOf3jXOZArW8f+I
	 AaY21/ok2Gonw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA303C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993803368.31145.11655312692857526441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a2f17f7886ab81e4e4eb984313f68084925aafb0668b00160e3c34cb9bd73b6
Date: Sun, 20 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789938033
