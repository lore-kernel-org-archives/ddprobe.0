Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE6C328B5E
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764332574; cv=none; b=AaWDnb0vKHeiQosKXEdxh7FM+TnQalSNuMizEBkpxmdph9/GDSjYVV6VmPZmvD1OFlRDMd9K5zY/oXlV7mR36wc396oOGOM7zf4rakQQJXuwUgVHnu+kHc5g34XHpRv8Mo4IwVe/Zg0ig30cUorxGLY9/GIr9kZt+KSXSvQS6Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764332574; c=relaxed/simple;
	bh=v0BxyI+Lu+XuncoYW+6m30cFxl9JueQvVr/aMUD6AeI=;
	h=To:Subject:From:Message-Id:Date; b=pAs5/HbfkZLiM/ZGK83n9mFbjm+daDTzy0GboH5s6mJbCKUgxTtgSBhG8fxY5b7Y/mBX9E8NSh7ClYB0Xk56uIK7WR0rVa49gsO5rd3OEV78h/7gpcnihDqC/eX/J8HTwkRC+5E18Hka9//HklFMAfW2HEI/iNCjvJr8CX/4aUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYDjN9/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYDjN9/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A363BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764332573;
	bh=v0BxyI+Lu+XuncoYW+6m30cFxl9JueQvVr/aMUD6AeI=;
	h=To:Subject:From:Date:From;
	b=CYDjN9/hZsGHPZTGTFK/Ie8OKNG1O+/DgHpr7wXLicgPTpUh4HzZjxUNFOoHPermO
	 bNfAvriVUtodSABeVTupxlEvBcZQMeVCQwVawkhhkSP9Qyr3qBtbc7FJctz54pMy9V
	 GrziI8SYDVvnrVrgTy4w95Aq9bZ9VdYdWgtpDy92Uc45zCV98Mhe5tcxSTTyN76Sil
	 QnyumcJKV26uDKQ7u64Dir4KLMbk5aGWZE/HwqPpjfwyv9dmh7d3Q/mTJw4mAoDroK
	 mIS0eSsUE8uhCQYDhuZ/EgvHa6k1gFpSYq0tZgwppphQJX+09y/UtbqU2GK9/KAj0G
	 tbDX4MuDtszAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173DCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433257358.2596.2414360611389159814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46058d4ca84f41a5352799c984e8246d0099093a01ce4ebcdb46c7ae38ea1900
Date: Fri, 28 Nov 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764332573
