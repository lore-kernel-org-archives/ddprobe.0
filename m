Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDA543147
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765577574; cv=none; b=t1d/iHl3ob4ndi7rx/XMTI7Q+JzjKrFOZcenCmOeAdacDzktB2rEYLEFqT8oL1rfcLwX+9TInSdSEMiqmDfRu6muyDVGMxecnNHnPhNDDkepbkLQXbRHSLjZfvGVJJQC6qIkjA7P/XGg1Mi3uTDpKtnmxe008Xjn9iM7Fd8XyyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765577574; c=relaxed/simple;
	bh=o8J6ZoBP/xbgrD/sk4XPcxFj8TmdpOX83oFKt1Zr7qk=;
	h=To:Subject:From:Message-Id:Date; b=iVIiYYBiL+2CNcrMOALmcn9trF64ubJnOBLx3wM2Sz7DLGGMbUFeo9b4vx/iB4Vtc/1pW+WN/rF1GJgp6JcDTgf3EwCA/YW64hQfIiLORcNQLMDuhd23WJwOwd9kMf1jCvy7W2eTJaAPeOKbbMlZY5mFh/7aRayf5rHEPUx4/t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKi9qLv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKi9qLv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A863AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765577573;
	bh=o8J6ZoBP/xbgrD/sk4XPcxFj8TmdpOX83oFKt1Zr7qk=;
	h=To:Subject:From:Date:From;
	b=RKi9qLv4uoG7g7htA0rpjIINmxYACioz/1/eBNW+SyhyjYjJapULV++8sAjR21cpJ
	 TPcBXRAOsayVP10ZM4c7sK+Eg7KCXGHFwW83+dgZCNFxjJKcFdVldAAps73jEE2lPo
	 qyQtvNYN7PEzhB+h3GMOq6NSmhYXYl/947xpX9pY4+sVQbcMBZYBpRmNXVjnbI/hBf
	 VLlsegGOAlHBUn6FlHe9PuXo90YaSsQcmLmYO5aKqIq3YJ4qLmbmEAE1r+Egl8OkRa
	 1TxwxRrst0MaPhYmlGhCNmtNeLNphaS5/R7TW7Iqo6cf+79aSYCaAi3iBUi1Qp7KsW
	 Pc+XWSvLgkbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96338D59F44
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557757360.18036.13425657765296647176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31fb472484caa8c35cd27c02b94dc2766b1f701b0bcc20733780664626949cf7
Date: Fri, 12 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765577573
