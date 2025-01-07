Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A961E3DE5
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736256354; cv=none; b=I6LwAv+fDrAVANVMsF8lWAh6IMyaSahpoWz57gWTyiC2j0pjSmLf/YG4Tid2oPWkEKUdf5shqfCPllqXZtpKlxs8K/yA1ZeCNOTOBCfp49z/3Vroo+T1uc4zkM/irclePlrgYLZ+OtPfe18UYnjecJF0b/uEN2sMOH5d2hZKZCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736256354; c=relaxed/simple;
	bh=/kx0iTcl5ViZCVZiOfkeePDH53xzOLaw9GAD2lVJ06c=;
	h=To:Subject:From:Message-Id:Date; b=cOaGn8juy8MNvk8wy9XR3sQFYM3hwBXrgUQ6zmUADjfRTq6Y5pYdvFkJYEiiBPNm4mHB5pUbIveBSL9AqQJsTKI48uEnqQKE0Oip0q9ybr41VFsncxK4P9X9FLE5r82lSP+tGqKfalZOBBbhKqDbsNwruzY9n7OqyaRG75/FHH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s99XZEkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s99XZEkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C20C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736256353;
	bh=/kx0iTcl5ViZCVZiOfkeePDH53xzOLaw9GAD2lVJ06c=;
	h=To:Subject:From:Date:From;
	b=s99XZEkxeAelbIwZbJ8svnja0u+fzLLu24Z8t84y7dmgEd24JsWGEcEUEq+C66px5
	 duSKz3XoaYsUdNm92heDXnZl34WXxEUmq7yLoD2j0BoRbWNOs/gNqF5Q5e+HywMsrf
	 O8F2kYqTiJ319Bsij9TslaHxNiSg1RN8bYjhKB01TnLmxY58ds8K+CvExqQ1X/vAKT
	 nimmsCM247XERUMUrJmUm0oEMkeZUELgVkmL5Dj5+oSM6N0A0GHqQJvwL+Oasyf57Z
	 LGXMUxxM+3nBznLaeBEfpR0az+ZRJdXWTV73zIzluHhhkhsYlg18EgFDZUe5PFys/X
	 MoIbhp3g+/g0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B72DE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625635361.26419.4053422057111933618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c632955681e507ece559b4f58264f06409531f79fbc6ec634ec7b8d9f57aae5
Date: Tue, 07 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736256353
