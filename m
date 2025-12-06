Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D113B8D6B
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765058574; cv=none; b=Yi9395hVm6EXnRZWYuDO7b6HdjKLZ+dGxvCuteIIFO18yWKatozs3dnvdJd8K4wLStwq89bsEE8uisDfm3yyw9jVweD4yn6QZUQDZbvdceIejwgu2iLPE321/WcjkQW2ym3SwqabNC/Gqyd69klDZvnyqUTSOR9zjuGfzTYW82E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765058574; c=relaxed/simple;
	bh=Id+kpGwTO3a/5s31cMRoKhZmUpAplqoiNLUh16TD6t8=;
	h=To:Subject:From:Message-Id:Date; b=BjNM8S1FyW/51MXlBJ2VqsaT4hCMGe8NRMI+oQyoSAbJzKRMmzhi3QknhZpxeZpbpMMJpqoOU9I7LRPPwtElaDjWEMfy24H580RL4mm/skBVpaErvrzBeYfYTj9jIsxd5OWJB5bDuU7sE2sRun/alanBaPS5fOS0GgU1Baw6W8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYGPILzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYGPILzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6154C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765058573;
	bh=Id+kpGwTO3a/5s31cMRoKhZmUpAplqoiNLUh16TD6t8=;
	h=To:Subject:From:Date:From;
	b=hYGPILzLfS8vgZaSjsn8PK1OM2XD9N33fXfMp/KKdQ0d1cLIGSEjOH+x21iYd4fJo
	 5NVz82R+lqD8uSF0ZYENfpbuEUzMb8KeTIjBLCFAdmdcCdcqQbYf2P4MIb0oiBBvch
	 RQw5ZBW3IcFPZz0oO9QlCVvlSiyju3Zcir5ZAYIm+Y0VKy2dS40Nvz382jwPQmXH2b
	 MZqZoyx+c6GwpwcYDBdhYHvEHDewAJpq5qRpCfF/oG/FoDmuMU48hWsFybCJ1+31wu
	 Juzz0eWnHPOozSy+zmhU8g8gX3ENi9uChEDJPKKJHuapjnCipe1PkHUgwAloPYPrmu
	 9rxG3fKJRZJqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7AD3B7D5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176505857360.13084.5949105675298488954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 949e4680bfcf8dee595292c81e0ce125a9ab474dc6732f174aae4271fb6c4c29
Date: Sat, 06 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765058573
