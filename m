Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8C84A07
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777149454; cv=none; b=YhmodHPTSLuQ9wDRDQsskl75VGAbuM9W8QBauJ65O53Z1dV2/G8YADKp+7dq7LiEmCUFbPPCaH2c6lprqMPvev7heALajIFWz1ncd3nP2f5DpWnTjoGOHrGleRlM4jfehU1MWfVGdFCpuYt1LgKzAbtOZXEvYpRmmNboBq4B32U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777149454; c=relaxed/simple;
	bh=kwNcpWV5yhpskuE/RrP1bXthq5ATEWdiqPSQEKHUK5s=;
	h=To:Subject:From:Message-Id:Date; b=QGZzOH92lJBxayNyVsRGBwU87ekNdOg1A99uHW7o4eXLwxJvGoxp2KazykJ54PXAXd/GEIZvzoi/h9AYphyMjNE0qMtOTiYmdSLQ2yd0AMYTS+/UTlNkpDtx5F9anFCDDeHTI65U/m9/TjCxL7rPYKLemtlng2t12jibdSHTYcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tw9+P07z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tw9+P07z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA423C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777149453;
	bh=kwNcpWV5yhpskuE/RrP1bXthq5ATEWdiqPSQEKHUK5s=;
	h=To:Subject:From:Date:From;
	b=tw9+P07zbScj7N19w6hjc50i0inqU0QF/HkWK24Ojp1zODROyKEkAIizlN4dOLDx3
	 qQadWw/7EFRwBuf39QrO0XaE4sCOcWrrBGbQST4tp2/7BKB4L/mpAdPUu0AjmIKPfo
	 45MyEheKq8rQeOJ9b6FFGCC7PbWHeNbEaJqDiJ5nhootEESZrW8HzsX6sBsQXH5EbR
	 Z004z7FFPYTT4wZnX5qcnJp/zw6m0+4iS5S5eD+0iP16YwMZ2f2w9YyiyVfyzleWdR
	 4sN+Y0xKCwrhXawk5/8kM0zTTHwNKpI4bJtrB/YiFc/K/2QxaRwR7GsnDlHNb6pC9O
	 HQflaFx5t4nOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E11FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714945368.6837.11326865662048691303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975e957ecf90b742fe540aa3eee9cb237d47fda541c2a1c6f971bcbc2319b80b
Date: Sat, 25 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777149453
