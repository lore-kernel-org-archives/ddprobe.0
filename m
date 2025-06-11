Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176921E376C
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749661195; cv=none; b=DCM4Mv8wMhBs6Sa4YRE48A2sNqvgrhEhtFgFMkugOFIjl3QF0efBxlr8YNi/8pmoxAz6N/+U+Fz5BH9/S71C0ykx9CPtDQFt0gwUp5prbrQL9Bti6CA1uhzMu6u/NqKrx5Wcd3ayeDp5VWkAXJtPbitc465oL9uo+f4u5zKlOdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749661195; c=relaxed/simple;
	bh=pkblnWcu91sdJfuk51qiw/SrqP9D7wjvi6pDr5nKIVc=;
	h=To:Subject:From:Message-Id:Date; b=bVZnVcrtZNlUn0aCcnFnKvhE3/hweyF1dz5YsGn4p5D5SYFqjHOxRF3Iou3USXPQPVfHZY4+GRvwgSP2ibLx80TqTi84kLOXQkTTTZwguQiEYm3Y4UMjaIPtr2IQ+n80sreK4HFMKupS1IjelLGKDbCs+W71x0G8Aweaqt8wgZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iGlOHIEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iGlOHIEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8560C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749661193;
	bh=pkblnWcu91sdJfuk51qiw/SrqP9D7wjvi6pDr5nKIVc=;
	h=To:Subject:From:Date:From;
	b=iGlOHIEIT2mFI8KqxWu2hiFrOVXEViOTUFPhi+H6uE50ZHoCWl61jY55uZdmnpXRt
	 BP02SeW/3IUq+O2DkywWejEJSg646o99FUA+x4Q6TXrNa2tybq4Gmxn0NhybaGh+5X
	 0CjU8ilsShp1NCUKhKxqGc/JZnBgp/yVzI8vqjosEUrCbjHNdrUjqIAbGCb1YqPeOX
	 pmmNV+eGGl2/+pcrCpxdCpetEL3IlLsVvDxSOFZ0GweSHYYQHOKybTuVgS1ym9KfOR
	 I5dEQIAc3isa903At5PaJI3wykSoA3zO9+4+WjjkyN1/eNSm8/Do8n+H5RgMB5CWQZ
	 FAsVIpTcDo3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BEC71137
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966119357.26597.11590732232664993505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4db7cdb2176e21e3d92717e9ea040552eda9009736753e1a0cda6017fc060a0
Date: Wed, 11 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749661193
