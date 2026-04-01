Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05EA1A267
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775002494; cv=none; b=g772XpotRyGNjx8uETJY9EbbdMu3rn6gwVtohwN95NSu/SG5jfLgWEFVBroQjHQ5ALpedHiPHpThZbjnR9LNFps9IWD9fIjOYv+dUyIzmA32fiDvc3wDykBF1lH4oUKclxd/BqA8BnQjlqd8SCk4JM3xPCXCtwoi/TSqCv2U2s0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775002494; c=relaxed/simple;
	bh=CjnjTZxRbMvcrif6xAEPN1Alpu2mx0JqrwOxTp6WreM=;
	h=To:Subject:From:Message-Id:Date; b=rfgEcq5jB3P4zB1b32rzKny8PfZftS5vXOztAi0ZCndS/gKDqMO+Ju03kJy8ipWFYZz6Li9ZRi0ItPet0E0JddM1fjGeQk9P1OrZst1Dl02YWujr1rstKCEOHgG2QSkQCqAPghIlVCPXetoqIxF1Z15qG1J5y0GiMP1kBxhyjic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOe8jPQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOe8jPQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A478CC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775002493;
	bh=CjnjTZxRbMvcrif6xAEPN1Alpu2mx0JqrwOxTp6WreM=;
	h=To:Subject:From:Date:From;
	b=XOe8jPQQKRlEevU8bIVQJGp+/MXFIk+b0DHbL02dwlE10veeRdMQ7jNA+pcjTvmuu
	 SLJnqI5K9nmVw0RqO6i2lwWKLUrbkPRn2gcMHDW6wP3acyi/Ke3DXR1n97Vx6NSTEa
	 CJrC9rLhB9JgmcNY7MJXlCcduT9IhTF7+TI14a6PkakArN9dhfoAtw7Y6FwC9ElbA7
	 Oc9AkR4LmyDq0HIEYuMdtiJvtpM3dPERqHiBjzZUA/6zZTFQf6CjNY6T2bzWq4KpX8
	 xK2G7ATXNPriqan0kX6yLyMr5N6KuSG3W4WLdZ94APkcdqc7JIqEnTGqG7nnsFwzGw
	 lmYKiOyDdZLAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABE10F9310
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500249359.16122.8010788526907405347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e542900beb343217cb88d628c462effcfa89d892ac96590ec451e4261d04010a
Date: Wed, 01 Apr 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775002493
