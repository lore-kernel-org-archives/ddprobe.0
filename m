Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FC517557
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738435554; cv=none; b=r4vVD8t4zHD3TcJ0crd2lToSJJHhZSyR3kIckUpTIKIz0NicX14IVq/fRRGsmLID/r1+LgNi1LcftvxqmYs1QxLJBKx0vrz8/PjBgoeZKM8dYvOeRdn0OIHH5PFSPZu4L6Ns/Z+pmLphonqql6pHcNvYravoDz8+r5m2hECdynE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738435554; c=relaxed/simple;
	bh=jaJpKAE5nn1K9T3qjnVPrKqN6m7PcC2MADFDnvl56jo=;
	h=To:Subject:From:Message-Id:Date; b=nT0m/L3NL0ePkFKzsFezJGH1xvgT2qacrf82M8dTy03Y6flw+THo872yZXlMkRcO7T/YS3qasezNnlTKyhcigX6wrATV+MyeAFQvGCnRcaYO9qndThIn9jTKC12Z9eTDPz61Zi0CWAoacS/NRi5gXhkuL3R0OB7A1BJmN8m0iLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHa7luQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHa7luQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39D1C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738435553;
	bh=jaJpKAE5nn1K9T3qjnVPrKqN6m7PcC2MADFDnvl56jo=;
	h=To:Subject:From:Date:From;
	b=qHa7luQKQ3mmY1DIGy5g4HZn6xntWt2hvWxo7Mf5mfK2oeIVfjgbzEe2QLbeNWaRB
	 PnPKAfoNVSdBG3RcMlDkwqD5bPkYxvpvnUz1Hl2ccQ7ZtTiAxMTiwy34EBTMXRkZF5
	 ovvzx2uKOjrPS27ycvZwUdRW1/jcVW3VIaWVowNaxhX7GUCCtY6dT/1gjjPAPg37qL
	 Ee9iChJQvdt27H0GWkOneqa+y7Ddk9+VsMH1SSQo3bwfrUsR+vusdRljPq33oyAq8G
	 qEad8rk4h/RJVtQ/oj5HlAjFAhKv/aQDurbfkCJa40aowoC5ARZ0+QKv4xYbb4oAmo
	 dOxlrfvedY2Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA73C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843555361.12190.11147722471926769725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7633562551f9f5644c33ead5ab8b041a7a5c7a31894469dc08ba697a5dcb502
Date: Sat, 01 Feb 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738435553
