Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72181B642
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714338143; cv=none; b=rKBHTPA6JAkAzqJx77bM0J42NhaBOftDI+2OrZbzKZPxnFCQpVKFpos2XKXHz6DH67RutoCaG5rKTlX1PXao5C57sNpe5iPeUW1l7HoNWrppkdFmIG164/X8CdY0qVVa9FeVlcsunZhTz5xfqpSodYTH1v64eUwJ/SYDA63eImM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714338143; c=relaxed/simple;
	bh=KF7iisj05+po/nXuPMLh+FRFsmokh+cUzMWRuhp2U7k=;
	h=To:Subject:From:Message-Id:Date; b=ExL7DoG19pi8q4iwXmyicnOhmAAa34HOMFCzjJvBCXwynd/sLMe7n8SRVXSe4xVWJHZM9sTkyr1/0YKIXDQ8KXvj/unQMZUiOblRViWpe/tiEUFkjn6/46cfhtBaxdVeNaAK0b/kai3YCwjkr9kvXMfjDWUU2cumMYMcTwftVGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X79pbi2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X79pbi2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F9AC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714338142;
	bh=KF7iisj05+po/nXuPMLh+FRFsmokh+cUzMWRuhp2U7k=;
	h=To:Subject:From:Date:From;
	b=X79pbi2Z2cJN/svyt+roplGeZKC4eg87Y0yP29GrTHo4Mm6QWhGP4DU3u/CKVKhYk
	 2Ve8MXcCLmrn+unWAc56bObKLJxiuezT4wavaHcgq7SXI5s+SZr9yhz5VTOvfdAZrY
	 +WhRAHNoLblkpAAjL0T/RDQCeHxIPIswWNvHvXO7I/HpGdsObVffkUcogmeNuPUczn
	 /+uYFmDxTKnBqfcclUUgjtunP1STvFsb1veD6cDmrcqXdtgBtZV0s1KJX8OD/kwmxh
	 dHy1S9+1Xc6i3juUfM1b1XbFxAMUo2Uz9HBpvgNm0Fz3ZvcLbTksqLsecn6rmICuzk
	 4htCXy8xA2wGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD722C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433814281.2706.2085838642930862323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 182bffdfcc33af018b489029cd03a047c505046a9caa8b379f58004b39cf1a4f
Date: Sun, 28 Apr 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714338142
