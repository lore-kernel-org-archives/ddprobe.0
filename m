Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8542DF136
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784155714; cv=none; b=snn+S8Bi0A3QayI/MhdWBdTabuckBxyLfODGfHgqPc1Gq6D8s6e2djKox0Fo4Luk17wqTj7xVLrjf7e6FbKpRf3VOL3DazpZoKf0T2QQ8Z4aEcqMl7wNycTTHeDZoSFEQR6WjaA2k5jw4nthH2OxFYS1OniaFWsE+Lpzqjvvjtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784155714; c=relaxed/simple;
	bh=sBL/PFOUX8Zl21jq6vwI61OTp4xslWnL07e47kI37/k=;
	h=To:Subject:From:Message-Id:Date; b=k9swdWJ4tKmHYdDtw4RGkbnlsRvRfmWqEGCWLXttPDVI66HDnNJJub+HakY6ddgs2W/h5k2E4U1DKWk8llLnWMXUGYKVv3pw8CDgthR8EDJerkiUAurnggNQF5gN8q3bfu9jFeWkl1huK82XN4CSYr8tuyCWXwrRJKLeoSPNnc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjzJQSfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjzJQSfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01B2C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784155713;
	bh=sBL/PFOUX8Zl21jq6vwI61OTp4xslWnL07e47kI37/k=;
	h=To:Subject:From:Date:From;
	b=hjzJQSfwkVS95G4Txd7BRipvktCsCsNEKaP3GhEZ60q7oUhdYny4SGuKLEjuKDBjr
	 bHJBRPVezR31iti/Yka3DmNsmXa7dkRXt9OudcWgZ/DUjcFbHgQ+AUJeoMAYhHhHdz
	 bsnKU/zCcJKm4SdBwtREMja/5EsllCo9whkJS83lyoTQWeifVXutLvtxO1+zU0jJCE
	 cfiuG5YhTdpXxPW/U7eNSslbz6NlCwQam2NXSyFVHkgHKe+gzR5CV4GVtk+YcJml9W
	 eBk1gYQ98PhqmW/jP1kfC1xasnBaDCYafQRpLWJxKFgOCuzHQshm8vBq0k7HIThcGj
	 pzjDEpettqtpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD96AC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415571368.18690.1696732184174482037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21401a788da7a138077bdbb37f8b917f9c768755f5ec472a3b197edcaa88538
Date: Wed, 15 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784155713
