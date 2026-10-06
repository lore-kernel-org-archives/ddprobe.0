Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2600B3812DB
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791270634; cv=none; b=rf7zi2qSBLGG18Xwr6YqcopEsh7wiJjlCWyyN6BHXJdMm1+b+8Fcx//Pva6ILr4w4q1e3uBd6b0FBdx6L0bp+K8NTu5Z8xFj14d8x7D+wURAQXXQu7HHLM/CFgFDd/nNBw+VutAMttKmfyj7HYeIBDzv2Ses65TN/NcsxivFclA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791270634; c=relaxed/simple;
	bh=kXtg12g1rSzKAp/BhUTggorcP+7iPgMyJIuKKzf6s4g=;
	h=To:Subject:From:Message-Id:Date; b=VdkLsVlfTnTqH79owAjOSkIscXy1aLUaOPb8diP22ikvkD2DsGSKPL0s8xrYDcuz1FaW+kN+QgpGJnieZDf8bT/Ekj/agBD6F5pQ5PPnIoDo98PpQem9Wz2Wiwmezrx2veBhODIw2gEm+O4LoNXxVyMI/pLvwC3eZbkmzx+BCbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTCbUeO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTCbUeO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CD8C4AF61
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791270633;
	bh=kXtg12g1rSzKAp/BhUTggorcP+7iPgMyJIuKKzf6s4g=;
	h=To:Subject:From:Date:From;
	b=LTCbUeO3uINc+Ocf64esRUJUaF8/IsSRZkAyYgUnLcQ4rDX+/z/7RknVbCJpLAoko
	 G4DXZ5NXEbB36QUqEo0O001y34on4WJJeYRmar+HBnhya0UTH5p+OE/653Hok4yJy+
	 jNcKOw8RhM4WjdLqCWw7EUgppXAgR+SqlDjKV14EGn19FC1+djEwp1emelCKuyhSbw
	 sDyHaI9Dhw7ZTvx/uh5ZV0nfz9TUcZnTjzsDsAbMhQL+friyUpu8rxvEDd9z2AgKxO
	 SocYOW6WJwrM3APdje6dp99IyinTKaUO0lWYPWX7eaIYSLsqpDKdeQAp8MvR6LMqqc
	 ZUvEME5E64pbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18B6CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179127063371.20933.14712522225835027041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb64be5d8a9b0119d235033175b6d109699ed8f72b7973c7c13cec74a97bd48
Date: Tue, 06 Oct 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791270633
